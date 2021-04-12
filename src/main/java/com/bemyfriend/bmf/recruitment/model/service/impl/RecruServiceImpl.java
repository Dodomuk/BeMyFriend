package com.bemyfriend.bmf.recruitment.model.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.common.util.paging.Paging;
import com.bemyfriend.bmf.community.model_review.vo.Review;
import com.bemyfriend.bmf.recruitment.model.mapper.RecruMapper;
import com.bemyfriend.bmf.recruitment.model.service.RecruService;
import com.bemyfriend.bmf.recruitment.model.vo.Recruitment;

@Service
public class RecruServiceImpl implements RecruService {

	@Inject
	private RecruMapper mapper;
    
	@Override
	public Map<String, Object> selectRecruList(int currentPage) {

		Paging paging = Paging.builder()
				.currentPage(currentPage)
				.blockCnt(10)
				.cntPerPage(16)
				.type("review")
				.total(mapper.selectContentCnt())
				.build();

		Map<String, Object> commandMap = new HashMap<String, Object>();
		
		commandMap.put("paging", paging);
		commandMap.put("recruList", mapper.selectRecruList(paging));
		
		return commandMap;
	}
	
	@Override
	public Recruitment viewRecruId(int jobNo) {
		return mapper.viewRecruId(jobNo);
	}
	
	@Override
	public boolean deleteRecru(int no) {
		System.out.println("게시물 삭제");
		return mapper.deleteRecru(no);
	}
	
	public int insertRecruDummi(Recruitment recruitment) {
		return mapper.insertRecruDummi(recruitment);
	}

	public Integer insertRecru(Recruitment recruitment) {
		System.out.println("리뷰 게시판 게시글 추가" + recruitment.getJobNo());
		return mapper.insertRecru(recruitment);	
	}
	
	/*@Override
	public void updateRecru(Recruitment recruitment) {
		System.out.println("게시글 수정");
		mapper.updateRecru(recruitment);
	}
	
	@Override
	public void pageViewCount(int no) {
		mapper.pageViewCount(no);
	} */

    

}
