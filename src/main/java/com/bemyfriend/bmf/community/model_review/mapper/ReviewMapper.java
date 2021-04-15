package com.bemyfriend.bmf.community.model_review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.community.model_review.vo.ReviewComment;

@Mapper
public interface ReviewMapper {

	public List<Review> selectReviewList(Paging page); 
	
	public Review viewId(int reviewNo);
	
	public Integer insertReview(Review review);
	
	public boolean deleteReview(int no);
	
	public void updateReview(Review review);
	
	public void viewCount(int no);
	
	// 게시글 업로드
	
	  //더미데이터 집어넣으려고 임시로 만듦
	  @Insert("insert into review(review_no,user_id,review_title,review_content)" 
	  + " values(sc_rv_idx.nextval,#{userId},#{reviewTitle},#{reviewContent})") 
	  int insertDummi(Review review);

	  @Select("select count(*) from review")
	  int selectContentCnt();
	  
	  @Select("select * from review")
	  Review selectReview();
	  
   
}
