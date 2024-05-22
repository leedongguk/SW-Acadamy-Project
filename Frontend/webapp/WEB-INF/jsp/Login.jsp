<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head> 
<meta charset="EUC-KR">
<title>Welcome to Eco Flow</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("");                                                               
    height: 100vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.0);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 2;
     width: 300px;
     text-align: center;
}



.wave {
    background-image: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTc0LjQ3MDY0IDQ2LjM0NTk0IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPGRlZnM+CiAgICA8bGluZWFyR3JhZGllbnQgaWQ9IndhdmUtZ3JhZGllbnQiIHgxPSIwJSIgeTE9IjEwMCUiIHgyPSIwJSIgeTI9IjAlIj4KICAgICAgPHN0b3Agc3R5bGU9InN0b3AtY29sb3I6IzAwMDAzZjsiIG9mZnNldD0iMCIgaWQ9ImRlZXAtb2NlYW4iIC8+CiAgICAgIDxzdG9wIHN0eWxlPSJzdG9wLWNvbG9yOiM0ZTZmZmY7IiBvZmZzZXQ9IjEiIGlkPSJzaGFsbG93LW9jZWFuIiAvPgogICAgPC9saW5lYXJHcmFkaWVudD4KICA8L2RlZnM+CiAgPHBhdGggc3R5bGU9ImZpbGw6dXJsKCN3YXZlLWdyYWRpZW50KTtmaWxsLXJ1bGU6ZXZlbm9kZCIgZD0ibSAwLDExLjM4NDQ4IGMgMCwwIDIxLjEzMzg1MSwxMS4zOTUzMSA0My42MTc2NjEsMTEuMzg0NDEgQyA2Ni4xMDE0NzEsMjIuNzU3OTkgMTA3Ljk2ODU2LDAuMDMyNjIgMTMwLjUwOCw3ZS01IGMgMjIuNTM5NDQsLTAuMDMyNSA0My45NjI2NCwxMS4zODQ0MSA0My45NjI2NCwxMS4zODQ0MSBWIDQ2LjM0NTk0IEggMCBaIiAvPgo8L3N2Zz4=");
    background-repeat: repeat-x;
    background-size: 500px auto;
    background-position: bottom;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 200px;
    animation: wave 5s cubic-bezier(0.36, 0.45, 0.63, 0.53) infinite;
    z-index: 1;
}

.wave:nth-of-type(2) {
    opacity: 0.7;
    animation: swell 5s ease -1.25s infinite, wave 5s cubic-bezier(0.36, 0.45, 0.63, 0.53) -.125s infinite;
    z-index: 0;
}

@keyframes wave {
    0% {
        background-position-x: 0%;
    }
    100% {
        background-position-x: -500px;
    }
}

@keyframes swell {
    0%, 100% {
        background-position: right bottom 10px;
    }
    50% {
        background-position: right bottom 0;
    }

        

</style>

</head>


<body style="background-color: white;">

<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top" style="justify-content: center; left: 16%; margin-top: 7%;">
  <div class="mx-auto d-sm-flex d-md-inline-flex">
    <a class="navbar-brand" href="#">
      <img src="https://github.com/leedongguk/SW-Acadamy-Project/blob/main/image/logo%20(1).png?raw=true" style="width: 70%; height: 90%;" />
    </a>
  </div>
</nav>

      <div class="img">
        <div class="content">
         <form class="form-signin" action="/Login" method="post"style="margin-top:250px; z-index:1; position: relative;">
           <div class="form-group mb-2">
               <input type="text" name='id' placeholder="User Name" required autofocus class="form-control rounded-pill border-1 shadow-sm px-4">
            </div>
            <div class="form-group mb-2">
              <input id="password" type="password" name='password' placeholder="Password" required class="form-control rounded-pill border-1 shadow-sm px-4 text-primary">
            </div>
             <button type="submit" class="btn btn-Dark btn-block text-uppercase mb-2 rounded-pill shadow-sm" style="background-color:#0034EE; color:white;font-family: 'Bebas Neue', cursive;" onclick="location.href='/Home'">Login</button>
             <button type="submit" style="background-color: white; width: 350px; margin-left: 0; padding: 0; border: none;" onclick="location.href='/Home'">
                <img src="https://github.com/leedongguk/SW-Acadamy-Project/blob/main/image/kakaoLogin.png?raw=true" style="margin-left:0; display: block; width:300px; height:40px;" alt="대체 텍스트" onclick="" >
             </button>    
       </form>
             <div class="text-center d-flex justify-content-between mt-1">
             <form class="form-signin" action="/register" method="post" style="">
             <p style="color:black; font-size:14px;">Create <a href="/register" class="font-italic text-muted"> 
             <u style="color:red; font-size:14px;">Account</u></a></p>   
             </form>           
             </div>
       <c:if test="${not empty error}">
    <div class='alert alert-danger'>${error}</p>
    </div>
</c:if>        
        </div>
       <div class="img-cover"></div>
    </div>

<!-- 파도 -->
<div class="ocean">
  <div class="wave"></div>
  <div class="wave"></div>
</div>
   

</body>
</html>