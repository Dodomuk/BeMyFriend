package com.bemyfriend.bmf.community.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_lawAndMedia.service.impl.LawMediaServiceImpl;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Law;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Media;
import com.bemyfriend.bmf.community.model_review.service.impl.ReviewServiceImpl;
import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

@Controller
@RequestMapping("community")
public class CommunityController {

	@Autowired
	private ReviewServiceImpl reviewService;
	@Autowired
	private LawMediaServiceImpl lawMediaService;
	
	//----------------------------------------------------------------------------------------리뷰 게시판
	// 게시판 메인
	@GetMapping("/review/review")
	public String list(
			@RequestParam(defaultValue = "1")int page, Model model, @ModelAttribute("reviewInfo") Review review) {

		Date today = new Date();	
		SimpleDateFormat sdfm = new SimpleDateFormat("yyyy.MM.dd");
		String now = sdfm.format(today);
		
		System.out.println(now);
		System.out.println("여기서부터 게시판 시작");
			System.out.println(reviewService.selectReviewList(page));
			model.addAllAttributes(reviewService.selectReviewList(page));
			model.addAttribute("page",page);
			return "community/review/review";
		}
	
	// 게시글 작성 
	@GetMapping("/review/reviewForm")
	public String listForm()
	{
		System.out.println("여기서부터 게시판 글 작성 시작");
		return "community/review/reviewForm";
	}
	
	@PostMapping("/review/uploadForm")
	public String write(Review review)
	{
		System.out.println("다시 게시판으로 redirect");
		
		reviewService.insertReview(review);
		return "redirect:/community/review/review";
	}
	
	//게시글 보기
	@GetMapping("/review/reviewView")
	public String view(Review review,Model model,@RequestParam("view")int view) 
	{
	    System.out.println("게시글 보기");
	    reviewService.viewCount(view);
	    model.addAttribute("view", reviewService.viewId(view));
	    return "/community/review/reviewView";
	} 
	
	//게시글 댓글 작성
	@PostMapping("/reviewcomment")
	public String comment(ReviewComment reviewComment,Paging paging,RedirectAttributes ra) {
		ra.addAttribute("replyId",reviewComment.getReplyUserId());
		ra.addAttribute("replyContent",reviewComment.getReviewCommentContent());
		ra.addAttribute("replyDate",reviewComment.getReviewCommentDate());
		return "redirect:/community/review/reviewView";
		
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
	public String updateForm(Review review)
	{
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
	public String qna() {
		return "community/qna/qna";
	}

}

