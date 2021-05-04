  package com.bemyfriend.bmf.community.controller;
  
  import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import
  org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import
  org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bemyfriend.bmf.community.model_qna.service.QnaReplyService;
import com.bemyfriend.bmf.community.model_qna.vo.QnaComment;
import com.bemyfriend.bmf.community.model_review.service.ReplyService;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;
  
  @RestController
  @RequestMapping("reply") 
  public class ReplyController {
  
	  
  @Inject
  ReplyService replyService;
  @Inject
  QnaReplyService qnaReplyService;
  
  @RequestMapping("insertReply") 
  public void insert(@ModelAttribute ReviewComment rc, HttpSession session) {
  
  String userid = (String)session.getAttribute("memberId");
  String userName = (String)session.getAttribute("memberName");
     rc.setReplyUserId(userid);
     rc.setReplyUserName(userName);
     replyService.create(rc);
  }
  
  @RequestMapping("replyList")
  public ModelAndView replyList(@RequestParam int reviewNo, ModelAndView mav) {
	  
	  List<ReviewComment> list = replyService.list(reviewNo);
	  mav.setViewName("review/replyList");
  	  mav.addObject("list", list);
  	  return mav;
  }
  
  @RequestMapping("replyListJson")
  @ResponseBody
  public List<ReviewComment> replyListJson(@RequestParam int reviewNo){
	  List<ReviewComment> list = replyService.list(reviewNo);
	  System.out.println(list);
	  return list;
  }
  
  @RequestMapping("insertQnaReply") 
  public void insert(@ModelAttribute QnaComment qc, HttpSession session) {
  
  String userid = (String)session.getAttribute("memberId");
  String userName = (String)session.getAttribute("memberName");
     qc.setReplyUserId(userid);
     qc.setReplyUserName(userName);
     qnaReplyService.create(qc);
  }
  
  @RequestMapping("replyQnaListJson")
  @ResponseBody
  public List<QnaComment> replyQnaListJson(@RequestParam int qnaNo){
	  List<QnaComment> list = qnaReplyService.list(qnaNo);
	  System.out.println(list);
	  return list;
  }
  
  }
 