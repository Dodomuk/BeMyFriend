package com.bemyfriend.bmf.community.model_lawAndMedia.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Law;
import com.bemyfriend.bmf.community.model_lawAndMedia.vo.Media;

import com.bemyfriend.bmf.community.model_review.vo.Review;
@Mapper
public interface LawMediaMapper {

    public List<Law> selectLawList(Paging page);
	
    public List<Media> selectMediaList(Paging page);
    
	public Law viewLawId(int lawNo);
    
	public Media viewMediaId(int mediaNo);
	 
	  @Select("select count(*) from law")
	  int selectLawCnt();
	  
	  @Select("select * from law")
	  Law selectLaw();
	  
	  @Select("select count(*) from media")
	  int selectMediaCnt();
	  
	  @Select("select * from media")
	  Media selectMedia();
}
