package com.bemyfriend.bmf.recruitment.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.common.util.file.FileVo;
import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

@Mapper
public interface RecruMapper {

	public List<Recruitment> selectRecruList(Paging page);

	public Recruitment viewRecruId(String view);

	public Integer insertRecru(Recruitment recruitment);

	public boolean deleteRecru(int no);
	
	public int insertRecruFile(FileVo file) throws Exception;

	public void updateRecru(Recruitment recruitment);
	
	@Delete("delete from b_file where type_idx = #{typeIdx}")
	public boolean deleteRecruFile(String typeIdx);
   
	// public void pageViewCount(int no);

	@Select("select count(*) from com_hire")
	int selectContentCnt();

	@Select("select * from com_hire")
	Recruitment selectRecru();
  
	public List<Map<String,FileVo>> selectFileWithBIdx(String view);
}
