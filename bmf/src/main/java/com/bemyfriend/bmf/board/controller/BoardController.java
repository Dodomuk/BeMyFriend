package com.bemyfriend.bmf.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		public String list(Paging paging, Model model, @ModelAttribute("boardInfo") Board board) {
			System.out.println("여기서부터 게시판 시작");
			System.out.println(boardService.list(paging));
			model.addAttribute("list",boardService.list(paging));
			return "boardlist/review";
			
		}
		
	
	
		/*
		 * @GetMapping("view") public String view(int review_no, Model model) { //글 번호랑
		 * model.addAttribute("vo",boardService.view(review_no)); return
		 * "boardlist/view"; }
		 */
	
	@GetMapping("lawInfo")
	public String lawInfo(){
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

