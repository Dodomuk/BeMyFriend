package com.bemyfriend.bmf.member.company.model.service.impl;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.bemyfriend.bmf.common.code.ConfigCode;
import com.bemyfriend.bmf.member.company.model.repository.CompanyRepository;
import com.bemyfriend.bmf.member.company.model.service.CompanyService;
import com.bemyfriend.bmf.member.company.model.vo.Company;
import com.bemyfriend.bmf.member.company.model.vo.CompanySupport;
import com.bemyfriend.bmf.member.user.model.repository.UserRepository;

@Service
public class CompanyServiceImpl implements CompanyService{

	//thread safe를 위하여 final 처리		
	private final CompanyRepository companyRepository;
	
	@Autowired
	private JavaMailSender mail;
	@Autowired
	private BCryptPasswordEncoder encoder;
	@Autowired
	private RestTemplate http;
	
	 
	
	//생성자로 의존성 주입
	public CompanyServiceImpl(CompanyRepository companyRepository) {
		this.companyRepository = companyRepository;
		
	}
	
	

	
	// 아이디 체크
	@Override
	public Company selectMemberById(String comId) {
		System.out.println(comId);
		System.out.println(companyRepository.selectMemberById(comId));
		return companyRepository.selectMemberById(comId);
	}

	
	
	// 회원가입 - 이메일 전송
	@Override
	public void authenticateEmail(Company persistUser, String authPath) {
		
		MimeMessage msg = mail.createMimeMessage();
		System.out.println("impl : " + authPath);
		try {
			msg.setFrom("bemyfriend486@gmail.com");
			msg.setRecipients(Message.RecipientType.TO, persistUser.getComMail());
			msg.setSubject("회원가입을 축하드립니다.");
			msg.setContent("<h2> 반갑습니다." + persistUser.getComId() 
							+ "님!</h2><br><h3>BeMyFreinds 사이트에 가입하신 것을 환영합니다 !"
							+ "<br>아래의 링크를 눌러 회원가입을 완료해주세요. <br>"
							+ "회원가입을 마무리 하기 위해 아래의 링크를 클릭해주세요.</h3>"
							+ "<a href =" + ConfigCode.DOMAIN+"/member/company/joinimpl/" + authPath + ">회원가입 완료</a>"
							,"text/html; charset=UTF-8");		
			mail.send(msg);
		
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		
	
	}


	//회원 가입 진행하기
	@Override
	public int insertCompany(Company persistUser) {
		
		persistUser.setComPw(encoder.encode(persistUser.getComPw()));
		
		return companyRepository.insertCompany(persistUser);
	}

	
	
	
	
	
	// 로그인 하기
	@Override
	public Company memberAuthenticate(Company company) {
		
		Company authInfo = companyRepository.memberAuthenticate(company.getComId());
		System.out.println(authInfo);
		if(authInfo == null || !encoder.matches(company.getComPw(), authInfo.getComPw())) {
			
			return null;
		}
		
		return authInfo;
	}


	

	// 로그아웃 기능
	@Override
	public void companyLogout(HttpSession session) {
		
		session.invalidate();
		
	}

	
	
	
	// 회원정보 업데이트
	@Override
	public int updateComInfo(Company company) {
		
			company.setComPw(encoder.encode(company.getComPw()));
			
		return companyRepository.updateComInfo(company);
	}




	// 회원 탈퇴하기
	@Override
	public int withdrawCompany(String comId) {
		
		return companyRepository.withdrawCompany(comId);
	}



	// 아이디 찾기
	@Override
	public String findComId(String comName, String comMail) {
		System.out.println(comName + comMail);
		System.out.println("serviceImpl : " + companyRepository.selectComForFindId(comName, comMail));
		return companyRepository.selectComForFindId(comName, comMail);
	}



	// 비밀번호 찾기
	@Override
	public Company findComPw(String comId, String comMail) {
		
		return companyRepository.selectComForFindPw(comId, comMail);
	}



	// 서포트 등록하기/업데이트 하기
	@Override
	public int uploadSupport(CompanySupport support) {
		
		return companyRepository.uploadSupport(support);
	}



	// 서포트 가져오기
	@Override
	public CompanySupport selectSupport(String comId) {
		
		return companyRepository.selectSupport(comId);
	}



	//기업 멤버십 등급 업데이트
	@Override
	public int updateComMembership(String resultVal, String comIdx) {
		// TODO Auto-generated method stub
		return companyRepository.updateComMembership(resultVal, comIdx);
	}





	
	
	
	
	
	
	
}
