package com.bemyfriend.bmf.sign.model.service;


import java.util.List;

import com.bemyfriend.bmf.sign.model.vo.SignDataVo;
import com.bemyfriend.bmf.sign.model.vo.SignVo;

public interface SignService {
	
	public List<SignVo> getSignSearch(String searchKeyword);
	
	public List<SignDataVo> getSignSearchData(String origin_no);
	

}
