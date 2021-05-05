package com.bemyfriend.bmf.member.company.model.service;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.bemyfriend.bmf.common.util.file.FileVo;
import com.bemyfriend.bmf.member.company.model.vo.Company;
import com.bemyfriend.bmf.member.company.model.vo.CompanySupport;
import com.bemyfriend.bmf.member.user.model.vo.User;

public interface CompanyService {
	
	
	
	//idCheck
	Company selectMemberById(String comId);
	
	//회원가입 - 메일보내기
	void authenticateEmail(Company persistUser, String authPath);
	
	//회원가입 완료
	int insertCompany(Company persistUser);
	
	//로그인
	Company memberAuthenticate(Company company);
	
	//로그아웃
	void companyLogout(HttpSession session);
	
	//회원정보 업데이트
	int updateComInfo(Company company);
	
	//회원탈퇴
	int withdrawCompany(String comId);
	
	//아이디 찾기
	String findComId(String comName, String comMail);
	
	//비밀번호 찾기
	Company findComPw(String comId, String comMail);
	
	//서포트 등록하기 / 업데이트 하기
	int uploadSupport(CompanySupport support);
	
	//서포트 가져오기
	CompanySupport selectSupport(String comId);

	//기업 멤버십 등급 조정
	int updateComMembership(String resultVal, String comIdx);


}
