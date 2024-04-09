<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	#map{
		width: 770px;
		height:400px;
	}
</style>
</head>
<body>
    <!---->

    <h1>지도 <small>주소를 좌표로 얻기</small> </h1>

    <div>
    <div id="map"></div>
    </div>
    <hr />

    <div>
        <input type="text" id="address" class="full" placeholder="주소를 입력하세요." />
    </div>




    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d02aa54170aa9fe2b80ece1ca4433ae2&libraries=services"></script>
    <script src=https://code.jquery.com/jquery-3.7.1.js></script>
    <script>
    var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
    var options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng( 37.49930942404527,127.03331872237), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };

    var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    $('#address').keydown(function(evt){
        if(evt.keyCode == 13) {
            //alert($(this).val());

            search($(this).val());

        }
    });

    let m1 = null;

    function search(address) {

        const geocoder = new kakao.maps.services.Geocoder();
	// 결과값이 돌아오는 순간 함수 바로 호출
        geocoder.addressSearch(address, function(result, status) {

            //alert(result[0].y + "," + result[0].x)

            if(status == kakao.maps.services.Status.OK) {

                const p = new kakao.maps.LatLng(result[0].y, result[0].x);

                if(m1 != null) {
                    m1.setMap(null);
                }

                m1 = new kakao.maps.Marker({
                    position : p
                });

                m1.setMap(map);

                map.panTo(p)

            } else {
                alert('검색실패');
            }

        });

    }



    </script>
</body>
</html>