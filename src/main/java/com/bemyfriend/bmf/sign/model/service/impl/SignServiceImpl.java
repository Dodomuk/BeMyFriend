package com.bemyfriend.bmf.sign.model.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.bemyfriend.bmf.sign.model.service.SignService;
import com.bemyfriend.bmf.sign.model.vo.SignDataVo;
import com.bemyfriend.bmf.sign.model.vo.SignVo;

@Service
public class SignServiceImpl implements SignService{

	private static String SIGN_SEARCH_URL = "http://sldict.korean.go.kr/front/search/searchAllList.do";
	private static String SIGN_SEND_DATA_URL = "http://sldict.korean.go.kr/front/sign/signContentsView.do";
	private static String SIGN_VIDEO_DATA_URL = "http://sldict.korean.go.kr/front/sign/include/controlVideoSpeed.do";

	@Override
	public List<SignVo> getSignSearch(String searchKeyword) {
		// TODO Auto-generated method stub

		List<SignVo> signSearchData = new ArrayList<SignVo>();


		try {

			/*
			 * Connection.Response signSearch = Jsoup.connect(SIGN_SEARCH_URL)
			 * .data("searchKeyword", searchKeyword) .method(Connection.Method.POST)
			 * .execute();
			 */

			Document doc = Jsoup.connect(SIGN_SEARCH_URL)
					.data("searchKeyword", searchKeyword)
					.method(Connection.Method.POST)
					.timeout(3000000)
					.get();

			Elements lElement = doc.select(".tit a");
			Elements rElement = doc.select(".tumb_w a img");


			for(int i = 0; i < lElement.size(); i++) {

				SignVo signVo = new SignVo();

				Element ele = lElement.get(i);
				String title = ele.text();

				String[] origin_no = ele.attr("href").split("\'");

				int j = 2 * i + 1;

				Element imageSrc = rElement.get(j);
				String url = imageSrc.attr("src"); 

				signVo.setImgSrc(url);
				signVo.setOrigin_no(origin_no[1]);
				signVo.setTitle(title);

				signSearchData.add(signVo);

				//<a href="javascript:fnSearchContentsView('10949', 'CTE', '0');">안녕,안부</a>
			}


		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		return signSearchData;
	}

	@Override
	public List<SignDataVo> getSignSearchData(String origin_no) {

		List<SignDataVo> signResponseSearchData = new ArrayList<SignDataVo>();
		SignDataVo signDataVo = new SignDataVo();

		try {

			System.out.println("origin_no2 : " + origin_no);

			Document doc = Jsoup.connect(SIGN_SEND_DATA_URL)
					.data("origin_no", origin_no)
					.method(Connection.Method.GET)
					.timeout(3000000)
					.get();
			
			Document videoDoc = Jsoup.connect(SIGN_VIDEO_DATA_URL)
					.data("origin_no", origin_no)
					.method(Connection.Method.GET)
					.timeout(3000000)
					.get();

			Elements videoElement = videoDoc.select("source"); //src
			Elements imageElement = doc.select(".example img"); //얜 전부쓰고
			Elements explainElement = doc.select(".content_view_dis dd"); // 앤 1번만 쓰면되고
			
			System.out.println("-----------------------------------------------------");
			System.out.println("videoElement2 : " + videoElement);
			System.out.println("-----------------------------------------------------");
			
			for(int i = 0; i < videoElement.size(); i++) {

				Element videoSrc = videoElement.get(i);
				String url = videoSrc.attr("src"); 

				System.out.println("videoUrl : " + url);
				//System.out.println("videoUrl : " + imageSrc);
			}
			
			for(int i = 0; i < imageElement.size(); i++) {
				
				Element imageSrc = imageElement.get(i);
				String url = imageSrc.attr("src"); 
				
				System.out.println("imageUrl : " + url);
			} // 얘는 전부
			
			for(int i = 0; i < explainElement.size(); i++) {
				
				Element imageSrc = explainElement.get(i);
				String url = imageSrc.text(); 
				
				System.out.println("Explain : " + url);
			}
			
			Element videoSrc = videoElement.get(1);
			String url = videoSrc.attr("src"); 
			
			Element imageSrc = imageElement.get(0);
			String url2 = imageSrc.attr("src"); 
			
			Element explain = explainElement.get(1);
			String url3 = explain.text(); 
			
			signDataVo.setVideoUrl(url);
			signDataVo.setImageUrl(url2);
			signDataVo.setExplain(url3);
			
			signResponseSearchData.add(signDataVo);


		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		return signResponseSearchData;
	}

}
