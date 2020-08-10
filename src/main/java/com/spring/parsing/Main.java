package com.spring.parsing;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.net.ssl.HttpsURLConnection;
import javax.swing.text.IconView;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

class WebConnection {
	String json;
	WebConnection() throws Exception{
		
		String query = URLEncoder.encode("미움 받을 용기", "UTF-8");
		
		String address = "https://dapi.kakao.com/v3/search/book?target=title";
				
		//"https://dapi.kakao.com/v3/search/book?x="+x+"&y="+y+"&q=java&output=json";
		//x="+x+"&y="+y+"&input_coord=WGS8414”;
		
		BufferedReader br;
		URL url =  new URL(address);
		HttpURLConnection conn = (HttpsURLConnection) url.openConnection();; 
		String protocol = "GET";
		
		String auth = "KakaoAK " + "d8a810dabcbbeac5ccd08bb772fcde61&q";
		conn.setRequestMethod(protocol);
		conn.setRequestProperty("X-Requested-With", "curl");
		conn.setRequestProperty("Authorization", auth);
		conn.setRequestProperty("query", query);
		
		//url = new URL(address);
		//conn = (HttpURLConnection)url.openConnection();
		//conn.setRequestMethod(protocol);
		br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

		json = br.readLine();
        //테스트출력
		//System.out.println(json);
	}
}

public class Main {

	public static void main(String[] args) throws Exception {
		new WebConnection();

	}

}
