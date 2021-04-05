package com.bemyfriend.bmf.community.model_review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.vo.Review;

@Mapper
public interface ReviewMapper {

	public List<Review> selectReviewList(Paging paging); 
	
	public Object view(int review_no);
	
	public Integer insertReview(Review review);
	// 게시글 업로드
	
	  //더미데이터 집어넣으려고 임시로 만듦
	  @Insert("insert into review(review_no,user_id,review_title,review_content)" 
	  + " values(sc_rv_idx.nextval,#{userId},#{reviewTitle},#{reviewContent})") 
	  int insertBoard(Review review);

	  @Select("select count(*) from review")
	  int selectContentCnt();
   
}
