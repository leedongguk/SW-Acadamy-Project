<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 350px;height: 400px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 350px;height: 400px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>


    <hr style="background-color:#0C2EB3; margin-top:100px; width: 100%;">

    <!-- ì¶ì² êµ´ê· -->
    <h1 style="color:black;font-family: 'Koulen', cursive; font-size:56px; text-align:center;">Electric Vehicle Charging Station Search</h1>

    <!-- ë¸ëë¼ë²¨ -->
    <div class="row featurette">
        <div class="col-md-3" style="background-color: white; height:600px;">
        <div>
        <h1 style="color:#0034EE; font-family: 'Koulen', cursive; font-size:56px; text-align:center;">SEARCH</h1>
        <hr style="background-color:white;"/>
        <h3 style="color:#0034EE; font-family: 'Koulen', cursive; font-size:24px; margin-left:10px; text-align:left;">Select Region</h3>
       
       <form name="newMember" class="form-horizontal" action="/Map" method="post">
          <div class="form-group" style="margin-left:10px;">
            <select class="form-control" name="region" id="region">
            <option>전체</option>
            <option>제주시</option>
            <option>한경</option>
            <option>한림</option>
            <option>애월</option>
            <option>조천</option>
            <option>구좌</option>
            <option>대정</option>
            <option>안덕</option>
            <option>중문</option>
            <option>서귀포시</option>
            <option>남원</option>
            <option>표선</option>
            <option>성산</option>
            </select>
        </div>
        
        <h3 style="color:#0034EE; font-family: 'Koulen', cursive; font-size:24px; margin-left:10px; text-align:left;">Charger Type</h3>
       
          <div class="form-group" style="margin-left:10px;">
            <select class="form-control" id="exampleFormControlSelect2">
            <option>전체</option>
            <option>DC차데모</option>
            <option>AC완속</option>
            <option>DC차데모+AC3상</option>
            <option>DC콤보</option>
            <option>DC차데모+DC콤보</option>
            <option>DC차데모+AC3상+DC콤보</option>
            <option>AC3상</option>
            </select>
        </div>
       <hr style="background-color:white;"/>
       <img src="https://github.com/leedongguk/SW-Acadamy-Project/blob/main/image/Transparency%20Icon.png?raw=true" style="margin-left:15%; width: 70%; height: 50%;" />
       <input type="text" placeholder="REGION"  autofocus class="form-control rounded-pill border-1 shadow-sm px-4" style="margin-left:10px;"/>
       <button type="submit" class="btn btn-Dark btn-block text-uppercase mb-2 rounded-pill shadow-sm" style="background-color:#0034EE; margin-left:10px; color:white;font-family: 'Bebas Neue', cursive;">SEARCH</button>
       </div>

       </div>
        <div class="col-md-9" style="background-color: white; height:700px; style="margin:0; padding:0;">
            <div class="map_wrap">
             <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div> 
             <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
               <div class="custom_zoomcontrol radius_border"> 
                   <span onclick="zoomIn()" ><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대" ><h6 style="text-align:center; padding:0; margin:0;">+</h6></span>  
                   <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"><h6 style="text-align:center; padding:0; margin:0;">-</h6></span>
                </div>
            </div>
        </div>
    </div>
   </form> 

<!-- /END THE FEATURETTES -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=297e5ee86b8292a80bc99ca6b2f04f5e"></script>
    <script>
    var map;
    var overlays = {}; // 모든 오버레이를 저장할 객체를 선언합니다.
    document.addEventListener("DOMContentLoaded", function() {
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(33.450701, 126.570667),
            level: 9
        };

        map = new kakao.maps.Map(container, options); // map 객체를 먼저 생성
        map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC); // 교통량 표시

        <c:forEach items="${maps}" var="map" varStatus="status">
            var markerPosition = new kakao.maps.LatLng(parseFloat(${map.lat}), parseFloat(${map.lng}));
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

            (function(marker) {
                kakao.maps.event.addListener(marker, 'click', function() {
                    var statNm = '${map.statNm}';
                    var overlayContent = overlays[statNm] ? overlays[statNm].getContent().querySelector('.table tbody') : null;
                    if (overlayContent) {
                        var newRow = document.createElement('tr');
                        newRow.innerHTML = 
                            '<th scope="row">' + getStatusText(${map.stat}) + '</th>' +
                            '<td>' + getChargerTypeText(${map.chgerType}) + '</td>' +
                            '<td>' + '${map.nowTsdt}' + '</td>';
                        overlayContent.appendChild(newRow);
                    } else {
                        var content = '<div class="wrap">' +
                        '    <div class="info">' +
                        '        <div class="title">' +
                        '              ${map.statNm}' +
                        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
                        '        </div>' +
                        '        <div class="body">' +
                        '            <div class="img">' +
                        '                <img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumnail.png" width="73" height="70">' +
                        '           </div>' +
                        '            <div class="desc">' +
                        '                <div class="ellipsis">${map.addr}</div>' +
                        '                <div class="jibun ellipsis"><p style="color:blue;">${map.busiCall}</p></div>' +
                        '                <div><p style="color:red;">${map.useTime}</p></div>' +
                        '            </div>' +
                        '            <div class="chargetable">'  +
                        '            <table class="table">'  +
                        '            <thead>'  +
                        '            <tr>' +
                        '              <th>구분</th>' +
                        '              <th>충전기타입</th>' +
                        '              <th>상태정보</th>' +
                        '            </tr>' +
                        '            </thead>'  +
                        '            <tbody>'  +
                        '            <tr>' +
                        '              <th scope="row">' + getStatusText(${map.stat}) + '</th>' +
                        '              <td>' + getChargerTypeText(${map.chgerType}) + '</td>' +
                        '              <td>' + '${map.nowTsdt}' + '</td>' +
                        '            </tr>' +
                        '            </tbody>'  +
                        '            </table>'  +
                        '            </div>'  +
                        '        </div>' +
                        '    </div>' +
                        '</div>';

                        var overlay = new kakao.maps.CustomOverlay({
                            content: content,
                            map: map,
                            position: marker.getPosition()
                        });
                        overlays[statNm] = overlay; 
                    }
                });
            })(marker);

            marker.setMap(map);
        </c:forEach>
    });

    function closeOverlay() {
        for (var key in overlays) {
            overlays[key].setMap(null);
        }
    }

    function zoomIn() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {
            anchor: map.getCenter()
        });
    }

    function zoomOut() {
        var level = map.getLevel() + 1;
        map.setLevel(level, {
            anchor: map.getCenter()
        });
    }

    function getStatusText(stat) {
        switch(stat) {
            case 1:
                return "통신이상";
            case 2:
                return "충전대기";
            case 3:
                return "충전중";
            case 4:
                return "운영중지";
            case 5:
                return "점검중";
            case 9:
                return "상태미확인";
            case "null":
                return "확인 불가";
            default:
                return "알 수 없음";
        }
    }

    function getChargerTypeText(chgerType) {
        switch(chgerType) {
            case 1:
                return "DC차데모";
            case 2:
                return "AC완속";
            case 3:
                return "DC차데모+AC3상";
            case 4:
                return "DC콤보";
            case 5:
                return "DC차데모+DC콤보";
            case 6:
                return "DC차데모+AC3상+DC콤보";
            case 7:
                return "AC3상";
            case 8:
                return "DC콤보(완속)";
            default:
                return "알 수 없음";
        }
    }
    </script>