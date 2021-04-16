package com.bemyfriend.bmf.kmap.model.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bemyfriend.bmf.kmap.model.vo.Kmap;


@Mapper
public interface KmapRepository {
	
	List<Kmap> selectCompanyLocation();
	
	@Select("select * from com_user")
	List<Kmap> selectParkingLocation();
	

}
