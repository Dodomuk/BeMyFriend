package com.bemyfriend.bmf.community.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bemyfriend.bmf.community.model_review.service.impl.ReviewServiceImpl;
import com.bemyfriend.bmf.community.model_review.vo.Review;

@Controller
@RequestMapping("community/review")
public class CommunityController {

	@Autowired
	private ReviewServiceImpl reviewService;
	
	// 게시판 메인
	@GetMapping("/review")
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
	@GetMapping("/reviewForm")
	public String listForm()
	{
		System.out.println("여기서부터 게시판 글 작성 시작");
		return "community/review/reviewForm";
	}
	
	@PostMapping("uploadForm")
	public String write(Review review)
	{
		System.out.println("다시 게시판으로 redirect");
		
		reviewService.insertReview(review);
		return "redirect:/community/review/review";
	}
	
	//게시글 보기
	@GetMapping("/reviewView")
	public String view(Review review,Model model,@RequestParam("view")int view) 
	{
	    System.out.println("게시글 보기");
	    reviewService.viewCount(view);
	    model.addAttribute("view", reviewService.viewId(view));
	    return "/community/review/reviewView";
	} 
	
	//게시글 삭제
	@GetMapping("delete")
	public String delete(int no) {
		reviewService.deleteReview(no);
		return "redirect:/community/review/review"; 
	}
	
	//게시글 수정 화면 이동
	@GetMapping("reviewFix")
	public String update(int no, Model model) {
		model.addAttribute("view", reviewService.viewId(no));
		return "community/review/reviewFix";
	}
	
	
	//게시글 수정
	@PostMapping("updateForm")
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
	
}

