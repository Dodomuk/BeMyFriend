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
	   public void crawlingCompanyName() {
	      try {
	         Document doc = 
	               Jsoup.parse(new URL("https://www.saramin.co.kr/zf_user/search?searchType=search&company_cd=0%2C1%2C2%2C3%2C4%2C5%2C6%2C7%2C9%2C10&keydownAccess=&searchword=%EC%9E%A5%EC%95%A0%EC%9D%B8+%EC%B1%84%EC%9A%A9&panel_type=&search_optional_item=y&search_done=y&panel_count=y"),5000);
	         Elements comName = doc.select("#recruit_info_list > div.content > div > div.area_corp > strong > a > span");
	         Elements comDeadline = doc.select("#recruit_info_list > div.content > div > div.area_job > div.job_date > span");
	         System.out.println(comName);
	         System.out.println("=====================================");
	         System.out.println(comDeadline);
	         System.out.println("=====================================");
	         //System.out.println(comName.get(0).text());
	         //System.out.println(comDeadline.get(0).text().substring(0, 1));
	         Map<String,String> data = new LinkedHashMap<String, String>();
	         
	         for (int i = 0; i < comName.size(); i++) {
	            data.put("event_com_name", comName.get(i).text());
	            if(comDeadline.get(i).text().substring(0, 1).equals("~")) {
	               data.put("event_end_date", comDeadline.get(i).text().substring(2));
	            }else {
	               data.put("event_end_date", comDeadline.get(i).text());
	            }
	            
	            crawlingRepository.insertRecruit(data);
	         }
	         
	         
	      } catch (IOException e) {
	         // TODO Auto-generated catch block
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
