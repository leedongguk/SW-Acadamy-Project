<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>Welcome to DG Mall</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>




<style>
<%@ include file="wave.jsp" %>
   body { 
            padding: 0px;
            margin: 0px;            
        }
   video { 
            padding: 0px;
            margin: 0px;            
        }
        
.img-fluid {
  max-width: 100%;
  height: 650px;
}

p a {
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:link{
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:visited {
    font-size: inherit;
    font-weight: inherit;
    color: #baab8f;
    letter-spacing: inherit;
}
p a:ahover {
    font-size: inherit;
    font-weight: inherit;
    color: white;
    letter-spacing: inherit;
}
p a:active{
    font-size: inherit;
    font-weight: inherit;
    color: black;
    letter-spacing: inherit;
}

.ghost-button {
 display: inline-block;
 width:100px;
 height:50px;
 padding: 8px;
 color: #baab8f;
 border: 2px solid #baab8f;
 outline: none;
 text-decoration: none;
 text-align:center;
}



</style>

</head>


<body style="background-color: white;">

<!-- 메뉴바 호출 -->
<%@ include file="Menubar.jsp" %>
<!-- 홈페이지 슬라이드 사진 -->
<%@ include file="slide.jsp" %>
<!-- 선택지 -->
<%@ include file="mark.jsp" %>
<!-- 홈페이지 풋터-->
<%@ include file="footer.jsp" %>



</body>
</html>