 package com.bemyfriend.bmf.common.mail;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Component;



@Component
@EnableAsync // Async 어노테이션을 해당 클래스에서 사용할 수 있게 해줌! 해당 bean이 비동기로 동작할 수 있음을 알려주는 어노테이션
			 // 붙여야 하는 이유는 Send 메소드를 비동기로 돌릴 수 잇게 해주려고,
public class MailSender {
	
		
 		private final JavaMailSender mail;
	
		public MailSender(JavaMailSender mail) {
			this.mail = mail;
		}
		
		// 새로운 thread를 생성해 메서드를 비동기로 실행 할 수 있도록 처리
		// 실행결과로 반환해야할 값이 있다면 Future 타입의 객체를 반환하고, Future 객체를 통해 실행의 결과값을
		// 가져올 수 있다.
		@Async
		public void send(String to, String subject, String htmlText) {
			
			// smtp 방식으로 통신을 하려고 할 때
			// '어디서 보내는지, 누구한테 보내는지, 제목은 뭔지, 본문은 뭔지' 필요!
			//  MimeMessage 여기에 우리가 이 값들을 세팅할 수 있는 setter 메소드들이 있다.
			MimeMessage msg = mail.createMimeMessage();
			try {
				msg.setFrom("qkraldud5020@naver.com");
				msg.setRecipients(Message.RecipientType.TO,to);
				msg.setSubject(subject);
				msg.setContent(htmlText + "님 !", "text/html; charset=UTF-8");
			
				mail.send(msg);
			
			} catch (MessagingException e) {
				
				e.printStackTrace();
			}
			
			
			
		}
	
}
