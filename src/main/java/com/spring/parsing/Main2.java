package com.spring.parsing;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class Main2 {
	
		String json;
	
		String url = "https://dapi.kakao.com/v3/search/book?apikey=d8a810dabcbbeac5ccd08bb772fcde61&q=java&output=json";

		private static String getJSONData(String apiUrl) throws Exception {
		String jsonString = new String();
		String buf;
		URL url = new URL(apiUrl);
		// URLConnection conn = url.openConnection();
		HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();
		String auth = "KakaoAK "+ "d8a810dabcbbeac5ccd08bb772fcde61";
		conn.setRequestMethod("GET");
		conn.setRequestProperty("X-Requested-With", "curl");
		conn.setRequestProperty("Autorization", auth);

			BufferedReader br = new BufferedReader(new InputStreamReader(
					conn.getInputStream(), "UTF-8"));
			while ((buf = br.readLine()) != null) {
				jsonString += buf;
			}
			return jsonString;
			
		}

}
