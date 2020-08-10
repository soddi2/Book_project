package com.spring.parsing;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

class WebConnection1{
	String json;
	WebConnection1() throws Exception{
		String address = "https://dapi.kakao.com/v3/search/book?target=title&query=java";
		BufferedReader br;
		URL url = new URL(address);;
		String protocol = "GET";
		
		HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
		String auth = "KakaoAK "+ "d8a810dabcbbeac5ccd08bb772fcde61";
		conn.setRequestMethod("GET");
		conn.setRequestProperty("X-Requested-With", "curl");
		conn.setRequestProperty("Autorization", auth);
		

		//url = new URL(address);
		//conn = (HttpURLConnection)url.openConnection();
		//conn.setRequestMethod(protocol);
		br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

		json = br.readLine();
        //테스트출력
		//System.out.println(json);
	}
}

public class Main3 {

	public static void main(String[] args) throws Exception {
		WebConnection wc = new WebConnection();
		
		String json = wc.json;
		
		JSONParser parser = new JSONParser();
		JSONObject obj = (JSONObject)parser.parse(json);
		JSONObject channel = (JSONObject)obj.get("channel");
		
		JSONArray item = (JSONArray)channel.get("item");
		for(int i=0;i<item.size();i++){
			JSONObject tmp = (JSONObject)item.get(i);
			String title = ((String)tmp.get("title")).replace("&lt;b&gt;", "").replace("&lt;/b&gt;", "");
			String author = (String)tmp.get("author_t");
			String price = (String)tmp.get("sale_price");
			
			System.out.println("----- "+(i+1)+"번째 검색 결과 -----");
			System.out.println("제목 : "+title);
			System.out.println("저자 : "+author);
			System.out.println("가격 : "+price+"원");
		}
	}
}