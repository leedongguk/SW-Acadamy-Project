package com.example.demo;

import java.net.URL;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Component;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Component
public class search {
    
    public static void main(String[] args) {
        String keyword = "50110";
        xmlSearch(keyword);
    }

    public static void xmlSearch(String keyword) {
        int page = 1; // 페이지 초기값
        try {
            while (true) { // 무한 루프
                // parsing할 url 지정(API 키 포함해서)
                String url = "https://apis.data.go.kr/B552584/EvCharger/getChargerInfo?serviceKey=iifF6nWLmR%2BPgzn%2BZKQfpfbSa%2FxrnJe8cRoVMGBOYvaLg0iv2dluN%2BamznkrvFKRPIQHCZkfU4shudRWucbZag%3D%3D&zscode=50110&numOfRows=100&pageNo=" + page;
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
                        if (getTagValue("zscode", eElement).contains(keyword)) { // statNm의 값을 받아온 후 입력된
                                                                                  // keyword가 포함된 경우 출력
                            // 검색된 데이터 출력
                            System.out.println("충전소 이름: " + getTagValue("statNm", eElement));
                            System.out.println("ID Code: " + getTagValue("statId", eElement));
                            System.out.println("주소: " + getTagValue("addr", eElement));
                            System.out.println("###################");
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

}