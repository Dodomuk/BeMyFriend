package com.bemyfriend.bmf.community.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bemyfriend.bmf.common.code.ErrorCode;
import com.bemyfriend.bmf.common.exception.ToAlertException;
import com.bemyfriend.bmf.community.model_lawAndMedia.service.impl.LawMediaServiceImpl;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Law;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Media;
import com.bemyfriend.bmf.community.model_qna.service.impl.QnaServiceImpl;
import com.bemyfriend.bmf.community.model_qna.vo.Qna;
import com.bemyfriend.bmf.community.model_review.service.impl.ReviewServiceImpl;
import com.bemyfriend.bmf.community.model_review.vo.Review;



@Controller
@RequestMapping("community")
public class CommunityController {

	@Autowired
	private ReviewServiceImpl reviewService;
	@Autowired
	private LawMediaServiceImpl lawMediaService;
	@Autowired
	private QnaServiceImpl qnaService;
	@Autowired
	private DataSourceTransactionManager transactionManager;	
	//커뮤 메인
	@GetMapping("main")
	public String main() {
		return "community/community_main";
	}
	
	//----------------------------------------------------------------------------------------리뷰 게시판
	@GetMapping("/review/review")
	public String list(
			@RequestParam(defaultValue = "1")int page, Model model, @ModelAttribute("reviewInfo") Review review) {
		
		System.out.println("여기서부터 게시판 시작");
			System.out.println(reviewService.selectReviewList(page));
			model.addAllAttributes(reviewService.reviewTopList(review));
			System.out.println(reviewService.reviewTopList(review));
			model.addAllAttributes(reviewService.selectReviewList(page));
			model.addAttribute("page",page);
			return "community/review/review";
		}
	
	// 게시글 작성 
	@GetMapping("/review/reviewForm")
	public String listForm()
	{
		return "community/review/reviewForm";
	}
	
	@PostMapping("/review/uploadForm")
	public String write(Review review,HttpSession session)
	{
		System.out.println("다시 게시판으로 redirect");
		review.setUserId((String)session.getAttribute("memberId"));
		review.setUserName((String)session.getAttribute("memberName"));
		reviewService.insertReview(review);
		return "redirect:/community/review/review";
	}
	
	//게시글 보기
	@GetMapping("/review/reviewView")
	public String view(Review review,Model model,@RequestParam("view")int view) 
	{
	    System.out.println("게시글 보기");
	    reviewService.viewId(view);
	    
	    TransactionStatus txStatus = transactionManager.getTransaction(new DefaultTransactionDefinition());
		try {
			reviewService.viewCount(view);
		} catch(Exception e) {
			transactionManager.rollback(txStatus);
		    throw new ToAlertException(ErrorCode.IM02, e);
		}transactionManager.commit(txStatus);
		
	    model.addAttribute("view", reviewService.viewId(view));
	    return "/community/review/reviewView";
	} 
	
	//게시글 삭제
	@GetMapping("/review/delete")
	public String delete(int no) {
		reviewService.deleteReview(no);
		return "redirect:/community/review/review"; 
	}
	
	//게시글 수정 화면 이동
	@GetMapping("/review/reviewFix")
	public String update(int no, Model model) {
		model.addAttribute("view", reviewService.viewId(no));
		return "community/review/reviewFix";
	}
	
	
	//게시글 수정
	@PostMapping("/review/updateForm")
	public String updateForm(Review review, HttpSession session)
	{
		review.setUserId((String)session.getAttribute("memberId"));
		review.setUserName((String)session.getAttribute("memberName"));
		reviewService.updateReview(review);
		
		return "redirect:/community/review/review";
	}
	
	//더미데이터 넣으려고 임시로 만들어둔 경로 (junit용)
	@GetMapping("inputDummi")
	public String lawInfo(Model model,Review review){
		
		  for(int i=1; i<=100; i++) {
		    review.setUserId("ex00000" +i);
		    review.setReviewTitle("연습"+i);
		    review.setReviewContent("이것은 연습용 데이터입니당" +i);
		    reviewService.insertDummi(review);
		  }
		
		return "inputDummi";
	}
	
	
	//-------------------------------------------------------------------------------법률/매체 게시판
	
	@GetMapping("law")
	public String lawMain(@RequestParam(defaultValue = "1")int lawPage,
			Model model, Law law) {
		
			System.out.println("여기서 부터 법률 게시판 시작");
			System.out.println(lawMediaService.selectLawList(lawPage));
			model.addAllAttributes(lawMediaService.selectLawList(lawPage));
			model.addAttribute("lawPage",lawPage);
			
			return "community/lawAndMedia/law";
	}

	@GetMapping("lawView")
	public String lawView(Law law,Model model,@RequestParam("lawView")int lawView) 
	{
	    System.out.println("법률 게시글 보기");
	    model.addAttribute("lawView", lawMediaService.viewLawId(lawView));
	    return "community/lawAndMedia/lawView";
	} 
	
	@GetMapping("media")
	public String mediaMain(@RequestParam(defaultValue = "1")int mediaPage,
			Model model, Media media) {
		
		System.out.println("여기서부터 매체 게시판 시작");
			System.out.println(lawMediaService.selectMediaList(mediaPage));
			model.addAllAttributes(lawMediaService.selectMediaList(mediaPage));
			model.addAttribute("mediaPage",mediaPage);

			return "community/lawAndMedia/media";
	}

	@GetMapping("mediaView")
	public String mediaView(Media media,Model model,@RequestParam("mediaView")int mediaView) 
	{
	    System.out.println("미디어 게시글 보기");
	    model.addAttribute("mediaView", lawMediaService.viewMediaId(mediaView));
	    return "community/lawAndMedia/mediaView";
	} 
	
	//-------------------------------------------------------------------------------QNA 게시판
	
	@GetMapping("qna")
	public String qna(@RequestParam(defaultValue= "1")int qnaPage,Model model, Qna qna) {
		model.addAllAttributes(qnaService.qnaTopList(qna));
		model.addAllAttributes(qnaService.selectQnaList(qnaPage));
	    model.addAttribute("qnaPage",qnaPage);
	    
		return "community/qna/qna";
	}

	@GetMapping("/qna/qnaForm")
	public String qnaForm()
	{
		return "community/qna/qnaForm";
	}
	
	@PostMapping("/qna/qnaUpload")
	public String write(Qna qna, HttpSession session)
	{
		qna.setUserId((String)session.getAttribute("memberId"));
		qnaService.insertQna(qna);
		return "redirect:/community/qna";
	}
	
	@GetMapping("qnaView")
	public String qnaView(Qna qna,Model model,@RequestParam("view")int view) 
	{
	    TransactionStatus txStatus = transactionManager.getTransaction(new DefaultTransactionDefinition());
		try {
			qnaService.viewCount(view);
		} catch(Exception e) {
			transactionManager.rollback(txStatus);
		    throw new ToAlertException(ErrorCode.IM02, e);
		}transactionManager.commit(txStatus);
		
	    model.addAttribute("view", qnaService.viewQnaId(view));
	    return "community/qna/qnaView";
	    
	} 
	//게시글 삭제
	@GetMapping("/qna/delete")
	public String deleteQna(int qnaNo) {
		qnaService.deleteQna(qnaNo);
		return "redirect:/community/qna"; 
	}
	
	//게시글 수정 화면 이동
	@GetMapping("/qna/qnaFix")
	public String updateQna(int qnaNo, Model model) {
		model.addAttribute("view", qnaService.viewQnaId(qnaNo));
		return "community/qna/qnaFix";
	}
	
	
	//게시글 수정
	@PostMapping("qna/updateQna")
	public String updateQna(Qna qna,HttpSession session)
	{
		qna.setUserId((String)session.getAttribute("memberId"));
		qnaService.updateQna(qna);
		
		return "redirect:/community/qna";
	}
	
}

