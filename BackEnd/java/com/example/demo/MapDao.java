package com.example.demo;

import java.time.LocalDateTime;
import java.util.List;
import java.net.URL;
import java.sql.ResultSet;
import javax.sql.DataSource;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


@Repository
public class MapDao {
    private JdbcTemplate jdbcTemplate;

    public MapDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Map> selectAll() {
    	List<Map> results = jdbcTemplate.query("select * from car_api",
    	(ResultSet rs, int rowNum) -> {
    		Map map = new Map(
    			    rs.getString("statNm"), 
    			    rs.getString("statId"), 
    			    rs.getString("chgerId"), 
    			    rs.getString("chgerType"), 
    			    rs.getString("addr"), 
    			    rs.getString("location"), 
    			    rs.getString("lat"),
    			    rs.getString("lng"), 
    			    rs.getString("useTime"), 
    			    rs.getString("bnm"), 
    			    rs.getString("busiNm"), 
    			    rs.getString("busiCall"), 
    			    rs.getString("stat"), 
    			    rs.getString("lastTsdt"), 
    			    rs.getString("nowTsdt"), 
    			    rs.getString("output"), 
    			    rs.getString("method"), 
    			    rs.getString("zcode"), 
    			    rs.getString("zscode"), 
    			    rs.getString("kind"),
    			    rs.getString("kindDetail"), 
    			    rs.getString("parkingFree"), 
    			    rs.getString("note"), 
    			    rs.getString("limitYn"), 
    			    rs.getString("limitDetail")
    			);

    		
    		// 새로운 변수들 추가
    		map.setStatNm(rs.getString("statNm"));
    		map.setStatId(rs.getString("statId"));
    		map.setChgerId(rs.getString("chgerId"));
    		map.setChgerId(rs.getString("chgerType"));
    		map.setAddr(rs.getString("addr"));
    		map.setLocation(rs.getString("location"));
    		map.setLat(rs.getString("lat"));
    		map.setLng(rs.getString("lng"));
    		map.setUseTime(rs.getString("useTime"));
    		map.setBnm(rs.getString("bnm"));
    		map.setBusiNm(rs.getString("busiNm"));
    		map.setBusiCall(rs.getString("busiCall"));
    		map.setStat(rs.getString("stat"));
    		map.setLastTsdt(rs.getString("lastTsdt"));
    		map.setNowTsdt(rs.getString("nowTsdt"));
    		map.setOutput(rs.getString("output"));
    		map.setMethod(rs.getString("method"));
    		map.setZcode(rs.getString("zcode"));
    		map.setZcode(rs.getString("zscode"));
    		map.setKind(rs.getString("kind"));
    		map.setKindDetail(rs.getString("kindDetail"));
    		map.setParkingFree(rs.getString("parkingFree"));
    		map.setNote(rs.getString("note"));
    		map.setLimitYn(rs.getString("limitYn"));
    		map.setLimitDetail(rs.getString("limitDetail"));
    	
    	return map;
    	});
    	return results;
    	}
    
    
    public List<Map> SelectRegion(String region) {
    	
    	List<Map> results2 = jdbcTemplate.query("SELECT * FROM sw_acadamy.car_api WHERE addr LIKE '%"+region+"%';",
    	(ResultSet rs, int rowNum) -> {
    		Map map2 = new Map(
    			    rs.getString("statNm"), 
    			    rs.getString("statId"), 
    			    rs.getString("chgerId"), 
    			    rs.getString("chgerType"), 
    			    rs.getString("addr"), 
    			    rs.getString("location"), 
    			    rs.getString("lat"),
    			    rs.getString("lng"), 
    			    rs.getString("useTime"), 
    			    rs.getString("bnm"), 
    			    rs.getString("busiNm"), 
    			    rs.getString("busiCall"), 
    			    rs.getString("stat"), 
    			    rs.getString("lastTsdt"), 
    			    rs.getString("nowTsdt"), 
    			    rs.getString("output"), 
    			    rs.getString("method"), 
    			    rs.getString("zcode"), 
    			    rs.getString("zscode"), 
    			    rs.getString("kind"),
    			    rs.getString("kindDetail"), 
    			    rs.getString("parkingFree"), 
    			    rs.getString("note"), 
    			    rs.getString("limitYn"), 
    			    rs.getString("limitDetail")
    			);

    		
    		// 새로운 변수들 추가
    		map2.setStatNm(rs.getString("statNm"));
    		map2.setStatId(rs.getString("statId"));
    		map2.setChgerId(rs.getString("chgerId"));
    		map2.setChgerId(rs.getString("chgerType"));
    		map2.setAddr(rs.getString("addr"));
    		map2.setLocation(rs.getString("location"));
    		map2.setLat(rs.getString("lat"));
    		map2.setLng(rs.getString("lng"));
    		map2.setUseTime(rs.getString("useTime"));
    		map2.setBnm(rs.getString("bnm"));
    		map2.setBusiNm(rs.getString("busiNm"));
    		map2.setBusiCall(rs.getString("busiCall"));
    		map2.setStat(rs.getString("stat"));
    		map2.setLastTsdt(rs.getString("lastTsdt"));
    		map2.setNowTsdt(rs.getString("nowTsdt"));
    		map2.setOutput(rs.getString("output"));
    		map2.setMethod(rs.getString("method"));
    		map2.setZcode(rs.getString("zcode"));
    		map2.setZcode(rs.getString("zscode"));
    		map2.setKind(rs.getString("kind"));
    		map2.setKindDetail(rs.getString("kindDetail"));
    		map2.setParkingFree(rs.getString("parkingFree"));
    		map2.setNote(rs.getString("note"));
    		map2.setLimitYn(rs.getString("limitYn"));
    		map2.setLimitDetail(rs.getString("limitDetail"));
    	
    	return map2;
    	});
    	return results2;
    	
    }
    
    public void CleanMap() {
    	String sql = "TRUNCATE TABLE sw_acadamy.car_api;";
    	jdbcTemplate.update(sql);
    }
    
    public void UpdateMap() {
        int page = 1; // 페이지 초기값
        String keyword ="50";
        try {
            while (true) { // 무한 루프
                // parsing할 url 지정(API 키 포함해서)
                String url = "https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?serviceKey=iifF6nWLmR%2BPgzn%2BZKQfpfbSa%2FxrnJe8cRoVMGBOYvaLg0iv2dluN%2BamznkrvFKRPIQHCZkfU4shudRWucbZag%3D%3D&zcode=50&numOfRows=100&pageNo=" + page;
                // XML에서 가져올 데이터의 url + 인증키 + 페이지 수

                // 자신의 static 메서드를 가지고 객체를 생성 : 싱글톤 패턴
                DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
                // 다른 클래스의 객체를 가지고, 객체를 생성하면 팩토리 패턴.
                DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
                Document doc = dBuilder.parse(new URL(url).openStream());
                // DOM은 XML문서로부터 인스턴스를 얻는 API를 정의한다.
                // XML을 트리 형태의 데이터로 만든 후, 해당 데이터를 가공하는 방식으로 데이터 파싱을 진행한다.

                // root tag
                doc.getDocumentElement().normalize();
                System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

                // 파싱할 tag
                // item태그 전체를 list에 저장
                NodeList nList = doc.getElementsByTagName("item");
                // 리스트를 순회하면서 데이터를 출력
                for (int temp = 0; temp < nList.getLength(); temp++) {
                    Node nNode = nList.item(temp);
                    if (nNode.getNodeType() == Node.ELEMENT_NODE) { // Node 인터페이스의 getNodeType() 메서드노드 종류를 판정할 수 있다.
                        Element eElement = (Element) nNode;
                        if (getTagValue("zcode", eElement).contains(keyword)) { // statNm의 값을 받아온 후 입력된
                                                                                  // keyword가 포함된 경우 출력
                            // 검색된 데이터 출력
                            System.out.println("충전소 이름: " + getTagValue("statNm", eElement));
                            System.out.println("ID Code: " + getTagValue("statId", eElement));
                            System.out.println("주소: " + getTagValue("addr", eElement));
                            System.out.println("###################");
                            
                        	//Object[] params = {getTagValue("statNm", eElement), getTagValue("statId", eElement), getTagValue("chgerId", eElement), getTagValue("chgerType", eElement), getTagValue("addr", eElement), getTagValue("location", eElement), getTagValue("lat", eElement), getTagValue("lng", eElement), getTagValue("useTime", eElement), getTagValue("bnm", eElement), getTagValue("busiNm", eElement), getTagValue("busiCall", eElement), getTagValue("stat", eElement), getTagValue("lastTsdt", eElement), getTagValue("nowTest", eElement), getTagValue("output", eElement), getTagValue("method", eElement), getTagValue("zcode", eElement), getTagValue("zscode", eElement), getTagValue("kind", eElement), getTagValue("kindDetail", eElement), getTagValue("parkingFree", eElement), getTagValue("note", eElement), getTagValue("limitYn", eElement), getTagValue("limitDetail", eElement)};
                            Object[] params = {
                            	    String.valueOf(getTagValue("statNm", eElement)),
                            	    String.valueOf(getTagValue("statId", eElement)),
                            	    String.valueOf(getTagValue("chgerId", eElement)),
                            	    String.valueOf(getTagValue("chgerType", eElement)),
                            	    String.valueOf(getTagValue("addr", eElement)),
                            	    String.valueOf(getTagValue("location", eElement)),
                            	    String.valueOf(getTagValue("lat", eElement)),
                            	    String.valueOf(getTagValue("lng", eElement)),
                            	    String.valueOf(getTagValue("useTime", eElement)),
                            	    String.valueOf(getTagValue("bnm", eElement)),
                            	    String.valueOf(getTagValue("busiNm", eElement)),
                            	    String.valueOf(getTagValue("busiCall", eElement)),
                            	    String.valueOf(getTagValue("stat", eElement)),
                            	    String.valueOf(getTagValue("lastTsdt", eElement)),
                            	    String.valueOf(getTagValue("nowTsdt", eElement)),
                            	    String.valueOf(getTagValue("output", eElement)),
                            	    String.valueOf(getTagValue("method", eElement)),
                            	    String.valueOf(getTagValue("zcode", eElement)),
                            	    String.valueOf(getTagValue("zscode", eElement)),
                            	    String.valueOf(getTagValue("kind", eElement)),
                            	    String.valueOf(getTagValue("kindDetail", eElement)),
                            	    String.valueOf(getTagValue("parkingFree", eElement)),
                            	    String.valueOf(getTagValue("note", eElement)),
                            	    String.valueOf(getTagValue("limitYn", eElement)),
                            	    String.valueOf(getTagValue("limitDetail", eElement))
                            	};
                            InsertMap(params);     
                            

                        }
                    } // for end
                } // if end

                page += 1;
                System.out.println("page number : " + page);

                // 현재 페이지에서 데이터가 더 이상 없으면 반복 종료
                if (nList.getLength() == 0) {
                    break; // 루프 탈출
                }
            } // while end

        } catch (Exception e) {
            e.printStackTrace(); // 에러 메세지의 발생 근원지를 찾아서 단계별로 에러를 출력한다.
        } // try~catch end
    }
    
    // tag값의 정보를 가져오는 메소드
    private static String getTagValue(String tag, Element eElement) {
        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes(); // getChildNodes()메소드는 자식
                                                                                         // 노드들을 NodeList타입으로 반환한다.
        Node nValue = (Node) nlList.item(0);
        if (nValue == null)
            return null;
        return nValue.getNodeValue();
    }
    
    
    public void InsertMap(Object[] params) {	
    	String sql = "INSERT INTO car_api(statNm, statId, chgerId, chgerType, addr, location, lat, lng, useTime, bnm, busiNm, busiCall, stat,"
    			+ "lastTsdt, nowTsdt, output, method, zcode, zscode, kind, kindDetail, parkingFree, note, limitYn, limitDetail) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, params);
    }
    

}
