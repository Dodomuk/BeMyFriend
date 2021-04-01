package com.bemyfriend.bmf.common.batch;

import java.io.IOException;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;


@Component
public class CrawlingBatch {

	
	@Autowired
	CrawlingRepository crawlingRepository;
	
	
	// 초 분 시 일 월 요일 연도(스프링에서는 사용하지 않음)
	// * : 모든
	// , : 복수 값을 지정할 수 있음
	//시작시간/단위 : 0/5 * * * * * : 매월 매일 매시 매분 5초에 시작해서 5초마다 반복
	// 5 * * * * *(모든 요일, 모든 월, 모든 일, 모든 시, 모든 분의 5초에 돌아가게 된다.)
	// 회원등급은 분기에 한 번 바꾸겠다 -> 30 0 3 30 4,8,12 -> 4월 8월 12월 30일 3시 0분 30초에 돌아간다.)
	
	@Scheduled(cron = "5 5 5 5 5 *")
	public void crawlingBaseBall() {
		
		//File file = new File("/Users/miyoung/Desktop/JAVA/CODE/06_Spring/resources/image/test.jpg");
		
		try {
			
			/*UrlResource resource = new UrlResource("https://dimg.donga.com/wps/NEWS/IMAGE/2020/08/21/102583646.1.jpg");
			BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(file));
			
			bos.write(resource.getInputStream().readAllBytes());*/
			
			Document doc = 
						Jsoup.parse(new URL("https://www.koreabaseball.com/TeamRank/TeamRank.aspx"), 5000);
			
			Elements teamScore = doc.select("#cphContents_cphContents_cphContents_udpRecord > table > tbody > tr");
			String[] colArr= {"rank","teamName","match", "win", "loose", "tie", "rate"};
			
			for (Element element : teamScore) {

				Map<String, String> data = new LinkedHashMap<String, String>(); //순서보장을 위해 LinkedHashMap 사용
				
				for (int i = 0; i < 7; i++) {
					
					data.put(colArr[i],element.children().get(i).text());

				}
				crawlingRepository.insertBaseBall(data);
			}
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	
	public void crawlingOcean() {
		
		Document doc;
		try {
			doc = Jsoup.parse(new URL("http://www.khoa.go.kr/oceangrid/koofs/kor/observation/obs_real_list.do"), 5000);
			Elements els = doc.select("body > ul");
			System.out.println("test : " + els);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
	}


}
