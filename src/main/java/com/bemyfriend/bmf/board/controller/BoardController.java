package com.bemyfriend.bmf.board.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bemyfriend.bmf.board.model.service.impl.BoardServiceImpl;
import com.bemyfriend.bmf.board.model.vo.Board;
import com.bemyfriend.bmf.common.util.paging.Paging;

@Controller
@RequestMapping("boardlist")
public class BoardController {

	@Autowired
	private BoardServiceImpl boardService;
	
	@GetMapping("review")
	// model 안에 request 존재. model에 데이터를 저장하면 request
	public String list(
			/* @RequestParam(defaultValue = "1") */Paging page, Model model, @ModelAttribute("boardInfo") Board board) {

		Date today = new Date();	
		SimpleDateFormat sdfm = new SimpleDateFormat("yyyy.MM.dd");
		String now = sdfm.format(today);
		
		System.out.println(now);
		System.out.println("여기서부터 게시판 시작");
			System.out.println(boardService.selectReviewList(page));
			model.addAttribute("reviewList",boardService.selectReviewList(page));
			model.addAttribute("page",page);
			return "boardlist/review";
		}
	
	
	@GetMapping("reviewForm")
	public String listForm()
	{
		System.out.println("여기서부터 게시판 글 작성 시작");
		return "boardlist/reviewForm";
	}
	
	@PostMapping("reviewForm")
	public String write(Board board)
	{
		System.out.println("다시 게시판으로 redirect");
		
		boardService.insertReview(board);
		return "redirect:boardlist/review";
	}
	
	
	//더미데이터 넣으려고 임시로 만들어둔 경로 (junit용)
	@GetMapping("lawInfo")
	public String lawInfo(Model model,Board board){
		
		  for(int i=1; i<=100; i++) {
		  
		    board.setUserId("ex00000" +i);
		    board.setReviewTitle("연습"+i);
		    board.setReviewContent("이것은 연습용 데이터입니당" +i);
			boardService.insertDummi(board);
		  }
		
		return "boardlist/lawInfo";
	}
	
	@GetMapping("mediaInfo")
	public String mediaInfo(){
		return "boardlist/mediaInfo";
	}
	
	@GetMapping("qna")
	public String qna(){
		return "boardlist/qna";
	}
}

