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

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.service.impl.ReviewServiceImpl;
import com.bemyfriend.bmf.community.model_review.vo.Review;

@Controller
@RequestMapping("community")
public class CommunityController {

	@Autowired
	private ReviewServiceImpl reviewService;
	
	@GetMapping("review/review")
	public String list(
			/* @RequestParam(defaultValue = "1") */Paging page, Model model, @ModelAttribute("reviewInfo") Review review) {

		Date today = new Date();	
		SimpleDateFormat sdfm = new SimpleDateFormat("yyyy.MM.dd");
		String now = sdfm.format(today);
		
		System.out.println(now);
		System.out.println("여기서부터 게시판 시작");
			System.out.println(reviewService.selectReviewList(page));
			model.addAttribute("reviewList",reviewService.selectReviewList(page));
			model.addAttribute("page",page);
			return "community/review/review";
		}
	
	
	@GetMapping("reviewForm")
	public String listForm()
	{
		System.out.println("여기서부터 게시판 글 작성 시작");
		return "community/reviewForm";
	}
	
	@PostMapping("reviewForm")
	public String write(Review review)
	{
		System.out.println("다시 게시판으로 redirect");
		
		reviewService.insertReview(review);
		return "community/review";
	}
	
	
	//더미데이터 넣으려고 임시로 만들어둔 경로 (junit용)
	@GetMapping("lawInfo")
	public String lawInfo(Model model,Review review){
		
		  for(int i=1; i<=100; i++) {
		  
		    review.setUserId("ex00000" +i);
		    review.setReviewTitle("연습"+i);
		    review.setReviewContent("이것은 연습용 데이터입니당" +i);
		    reviewService.insertDummi(review);
		  }
		
		return "community/lawInfo";
	}
}

