package com.bemyfriend.bmf.member.user.model.service.impl;




import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.bemyfriend.bmf.common.code.ConfigCode;
import com.bemyfriend.bmf.common.code.ErrorCode;
import com.bemyfriend.bmf.common.exception.ToAlertException;
import com.bemyfriend.bmf.common.mail.MailSender;
import com.bemyfriend.bmf.common.util.file.FileUtil;
import com.bemyfriend.bmf.common.util.file.FileVo;
import com.bemyfriend.bmf.member.user.model.repository.UserRepository;
import com.bemyfriend.bmf.member.user.model.service.UserService;
import com.bemyfriend.bmf.member.user.model.vo.User;
import com.bemyfriend.bmf.member.user.model.vo.UserHopeService;

@Service // @Component 와 다를 것이 없음.
public class UserServiceImpl implements UserService {

	
	private final UserRepository userRepository;
	
	@Autowired 
	private MailSender mail;

	@Autowired
	private RestTemplate http;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	

	public UserServiceImpl(UserRepository userRepository) {
		this.userRepository = userRepository;
	
	 }

	

	//idCheck
	@Override 
	public User selectMemberById(String userId) {
		
		return userRepository.selectMemberById(userId);
	}



	//회원가입 - mail 보내기
	@Override 
	public void authenticateEmail(@RequestParam User persistUser, String authPath) {
		
		
		//form-url-encoded 방식으로 받기
		//form을 이용해 post 방식으로 보낼 경우 제대로 동작하게 하려면
		//보낸 데이터를 받아서 key값은 두고 value값은 List로 담아주는 MtltiValueMap을 사용해야한다.
		//내부적으로 Map<String,List<k>>를 구현
		//원래 일반 Map을 쓸 때는 put하게 되면 같은 파라미터값으로 덮어씌어지지만
		//MultiValueMap을 사용하면 같은 파라미터 값으로 여러개의 value를 저장할 수 있게 된다.
		MultiValueMap<String, String> body = new LinkedMultiValueMap<String, String>();
				
		body.add("mail-template", "temp_join");
		body.add("userId", persistUser.getUserId());
		body.add("authPath", authPath);
		
		
		// Content-type을 설정해주지 않으면 application/json 으로 넘어가기 떄문에
		// RequestParam으로 못 받게 되서 이 부분에 대해서 설정해주어야 함.RequestBody로 MailHandler에서 받거나
		// content-type을 form-url-encoded 형식으로 바꾸기
		RequestEntity<MultiValueMap<String, String>> request = RequestEntity
														.post(ConfigCode.DOMAIN+"/mail")
														.header("content-type",MediaType.APPLICATION_FORM_URLENCODED_VALUE)
														.body(body); //body에 담을 타입과 반환될 RequestEntity의 제네릭 타입이 일치해야함.
		
		

		
		//템플릿에 보내줘야 할 값 : userId
		// (RequestEntity, 원하는 Response 타입)
		ResponseEntity<String> response = http.exchange(request, String.class);
		String message = response.getBody();
		
		mail.send(persistUser.getUserMail(), "회원가입을 축하합니다.", message);
		
		
	}

	 


	// 회원가입 완료
	@Override 
	public int insertUser(User persistUser) {
		
		//set된 비밀번호를 받아서 encode한 다음에 인코딩된 password를 insert!
		persistUser.setUserPw(encoder.encode(persistUser.getUserPw()));
		return userRepository.insertUser(persistUser);
		
	}

	
	// 로그인 기능
	@Override
	public User memberAuthenticate(User user) {
		
		User authInfo = userRepository.memberAuthenticate(user.getUserId());

		// 만약 해당되는 유저가 없거나, 요청값으로 넘어온 비밀번호와 인코딩된 비밀번호가 맞지 않는다면 null값 리턴 !
		if( authInfo == null ||	!encoder.matches(user.getUserPw(), authInfo.getUserPw())) {
			
			return null;
		}
	
		return authInfo;
	}
	
	
	
	// 유저 사진정보 가져오기
	@Override
	public FileVo selectUserFile(String userIdx) {
		
		String FindUserIdx = "u" + userIdx;
		
		return userRepository.selectUserFile(FindUserIdx);
	}




	
	// 로그아웃 기능
	@Override
	public void userLogout(HttpSession session) {
		
		session.invalidate();
		
	}
	
	// 회원서비스 업로드
	@Override
	public int uploadUserService(UserHopeService service) {
		
		return userRepository.uploadUserService(service);
	}


	
	
	
	// 회원정보 업데이트
	@Override
	public int updateUserInfo(User user) {
		if(user.getUserPw() != null) {
			user.setUserPw(encoder.encode(user.getUserPw()));
		}
		return userRepository.updateUserInfo(user);
	}
	
	
	

	// 회원서비스 업데이트
	@Override
	public int updateUserService(UserHopeService service) {
		System.out.println("seviceimpl , service : " + service);
		return userRepository.updateUserService(service);
	}


	
	// 회원서비스 가져오기
	@Override
	public UserHopeService selectUserService(String userId) {
		
		return userRepository.selectUserService(userId);
	}


	
	
	
	

	// 회원 탈퇴하기
	@Override
	public int withdrawUser(String userId) {
		
		return userRepository.withdrawUser(userId);
	}

	
	// 회원 아이디 찾기
	@Override
	public String findUserId(String userName, String userTell) {
		
		return userRepository.selectUserForFindId(userName, userTell);
	}

	
	// 회원 비밀번호 찾기 - 재세팅
	@Override
	public User findUserPw(String userId, String userMail) {
		
		return userRepository.selectUserForFindPw(userId, userMail);
	}


	// 파일 업로드
	@Override
	public void uploadFile(MultipartFile fileData, HttpSession session) {
		
		FileUtil fileUtil = new FileUtil();
		
		
			// 기존에 없는 파일인 경우 해당 정보에 typeIdx를 세팅해줘서 Insert문 돌리기
		if(session.getAttribute("file") == null) {
			User user = (User) session.getAttribute("userMember");
			String userIdx = user.getUserIdx();
			String typeIdx = "u" + userIdx;
			System.out.println("typeIdx : " + typeIdx);
		
			try {
				FileVo file = fileUtil.fileUpload(fileData);
				file.setTypeIdx(typeIdx);
				userRepository.uploadFile(file);
			} catch (IllegalStateException | IOException e) {
				throw new ToAlertException(ErrorCode.FILE01); // 파일 업로드중 예외 발생
			}
			
			
			
		}else if(session.getAttribute("file") != null) {
			// 기존에 파일이 있는 경우 해당 정보의 typeIdx를 where에 넣어서 update문 돌리기
			
			// 세션값 file에 저장
			FileVo originfile = (FileVo) session.getAttribute("file");
			
			// 새로 받아온 file, fileVo로 만들기
			try {
				FileVo file = fileUtil.fileUpload(fileData);
				file.setTypeIdx(originfile.getTypeIdx());
				userRepository.updateFile(file);
			} catch (IllegalStateException | IOException e) {
				throw new ToAlertException(ErrorCode.FILE01); // 파일 업로드중 예외 발생
			}
			
		}
	
	}



	

	




	
	
	
	

}
