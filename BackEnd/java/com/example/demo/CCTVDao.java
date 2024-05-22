package com.example.demo;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

@Repository
public class CCTVDao {
	
	
	public void CCTV() {
		 try {
	            JSONObject cctvData = getCCTVData(36.58629, 128.186793);
	            System.out.println("CCTV명: " + cctvData.getString("cctvname")); // 가장 가까운 CCTV명
	            System.out.println("CCTV 영상 URL: " + cctvData.getString("cctvurl")); // 가장 가까운 CCTV 영상 URL
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    public static JSONObject getCCTVData(double lat, double lng) throws Exception {
	        double minX = lng - 1;
	        double maxX = lng + 1;
	        double minY = lat - 1;
	        double maxY = lat + 1;

	        String apiKey = "99ff3498204047968e2d3c4a7c660fe2";
	        String apiCall = "https://openapi.its.go.kr:9443/cctvInfo?"
	                + "apiKey=" + apiKey
	                + "&type=ex&cctvType=2"
	                + "&minX=" + minX 
	                + "&maxX=" + maxX
	                + "&minY=" + minY
	                + "&maxY=" + maxY
	                + "&getType=json";

	        HttpClient client = HttpClient.newHttpClient();
	        HttpRequest request = HttpRequest.newBuilder()
	                .uri(URI.create(apiCall))
	                .build();

	        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
	        String responseBody = response.body();

	        JSONObject jsonObject = new JSONObject(responseBody);
	        JSONArray cctvArray = jsonObject.getJSONObject("response").getJSONArray("data");

	        double[] distances = new double[cctvArray.length()];
	        for (int i = 0; i < cctvArray.length(); i++) {
	            JSONObject cctv = cctvArray.getJSONObject(i);
	            double coordy = cctv.getDouble("coordy");
	            double coordx = cctv.getDouble("coordx");
	            distances[i] = Math.sqrt(Math.pow(coordy - lat, 2) + Math.pow(coordx - lng, 2));
	        }

	        int minIndex = 0;
	        double minDistance = distances[0];
	        for (int i = 1; i < distances.length; i++) {
	            if (distances[i] < minDistance) {
	                minDistance = distances[i];
	                minIndex = i;
	            }
	        }

	        return cctvArray.getJSONObject(minIndex);
	}

}
