<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page errorPage="ErrorPage.jsp"%>
<html>

<head>

<title>SEVENELEVEN</title>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
	
	
	
</script>


<style>
   body { 
            padding: 0px;
            margin: 0px;            
        }
    .img{
    position: relative;
    background-image: url("https://github.com/leedongguk/SW-Acadamy-Project/blob/main/image/reback3.png?raw=true");                                                               
    height: 120vh;
    background-size: cover;
}
 .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.5);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     z-index: 3;
     width: 600px;
     
}


<%@ include file="Button.jsp" %>
        

</style>

</head>


<body style="background-color: black;">

<nav class="navbar navbar-expand-md navbar-dark bg-darker fixed-top">
  
  <a class="navbar-brand" href="#"><img src="https://github.com/leedongguk/SW-Acadamy-Project/blob/main/image/logo.png?raw=true" style="width:15%; height:15%;" /></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    <p></p>
  </button>
      

</nav>

      <div class="img">
        <div class="content" style="background-color: rgba(255, 255, 255, 1.0); padding: 20px;">
        <h3 class="display-4" style="text-align: center;color:black;font-family: 'Koulen', cursive;">Join Membership</h3>
        <p class="display-7" style="text-align: center;color:red;font-family: 'Bebas Neue', cursive; margin-bottom:50px;">Please Register to SEVEN ELEVEN.</p>
       
       <form name="newMember" class="form-horizontal"  style="margin-left: 10px;" action="/register" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<div class="col-sm-10">
				   <label class="col-sm-4 " style="font-family: 'Bebas Neue', cursive; color:black; font-size:26px;">ID</label>
				   <br/> 			
					<input name="id" type="text" class="form-control" placeholder="id" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-10">
				    <label class="col-sm-3" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Password</label>
				    <label class="col-sm-8" style="font-family: 'Bebas Neue', cursive; color:red; font-size:12px;">*비밀번호는 영어와 숫자를 혼합해주세요.</label>
					<br/>
					<input name="password" type="password" class="form-control" placeholder="password" style="opacity:0.8;" >
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-10">
				    <label class="col-sm-8" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Check Password</label>
					<br/>
					<input name="password_confirm" type="password" class="form-control" placeholder="password check" style="opacity:0.8;">
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-10">
				    <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Name</label>
					<br/>
					<input name="name" type="text" class="form-control" placeholder="name" style="opacity:0.8;" >
				</div>
			</div>
			
<div class="form-group row">
    <div class="col-sm-10">
        <label class="col-sm-4" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Birth Date</label>
        <label class="col-sm-5" style="font-family: 'Bebas Neue', cursive; color:red; font-size:12px;">*생년월일을 입력해주세요.</label>
        <br/>				
        <div class="form-group row" style="margin-left:0px">
            <div class="col-auto">
                <select class="form-control" name="exampleFormControlSelect1" id="exampleFormControlSelect1">
                    <option>년도</option>
                    <!-- 년도 옵션 추가 -->
                    <% 
                    int currentYear = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
                    for (int i = currentYear; i >= 1900; i--) { %>
                        <option value="<%= i %>"><%= i %></option>
                    <% } %>
                    <!-- 년도 옵션 추가 끝 -->
                </select>
            </div>
            <div class="col-auto">
                <select class="form-control" name="exampleFormControlSelect2" id="exampleFormControlSelect2">
                    <option>월</option>
                    <!-- 월 옵션 추가 -->
                    <% for (int i = 1; i <= 12; i++) { %>
                        <option value="<%= i %>"><%= String.format("%02d", i) %></option>
                    <% } %>
                    <!-- 월 옵션 추가 끝 -->
                </select>
            </div>
            <div class="col-auto">
                <select class="form-control" name="exampleFormControlSelect3" id="exampleFormControlSelect3">
                    <option>일</option>
                    <!-- 일 옵션 추가 -->
                    <% for (int i = 1; i <= 31; i++) { %>
                        <option value="<%= i %>"><%= String.format("%02d", i) %></option>
                    <% } %>
                    <!-- 일 옵션 추가 끝 -->
                </select>
            </div>
        </div>
    </div>
</div>
			
			<div class="form-group  row">
				<div class="col-sm-10">
				    <label class="col-sm-2" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Phone</label>
				    <label class="col-sm-8" style="font-family: 'Bebas Neue', cursive; color:red; font-size:12px;">* "-"를 제외하고 입력해주세요.</label>
				    <br/>				
					<input name="phone" type="text" class="form-control" placeholder="Phone" style="opacity:0.8;" >
				</div>
			</div>
			
			    <label class="col-sm-3" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Buisnessman</label>
			    <label class="col-sm-8" style="font-family: 'Bebas Neue', cursive; color:red; font-size:12px;">*개인 충전기 사업자 등록 여부</label>
				<br/>
			<div class="form-group  row" style="margin-left: 30px;">    
<div class="row">
    <div class="col-sm-4">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="Buisnessman" id="grade-admin" value="O">
            <label class="form-check-label" for="grade-admin" style="color:red;">O</label>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-check">
            <input class="form-check-input" type="radio" name="Buisnessman" id="grade-employee" value="X">
            <label class="form-check-label" for="grade-employee" style="color:red;">X</label>
        </div>
    </div>
</div>
			</div>
			
		    <div class="form-group  row">
				<div class="col-sm-10">
				    <label class="col-sm-5" style="font-family: 'Bebas Neue', cursive;color:black; font-size:26px;">Name of The Car</label>
				    <label class="col-sm-5" style="font-family: 'Bebas Neue', cursive; color:red; font-size:12px;">*차량을 입력해주세요.</label>
					<br/>
					<input name="car" type="text" class="form-control" placeholder="Name Of The Car" style="opacity:0.8;" >
				</div>
			</div>

			<div class="form-group  row">
				<div class="col-sm-12" style="text-align:center;">
				     <button class="w-btn w-btn-blue" style="text-align:center;" type="submit">등록</button>
				</div>
			</div>
		</form>

       
        </div>
       <div class="img-cover"></div>
    </div>

   <script>
        // 년도 옵션 추가
        var currentYear = new Date().getFullYear();
        var selectYear = document.getElementById("exampleFormControlSelect1");
        for (var i = currentYear; i >= 1900; i--) {
            var option = document.createElement("option");
            option.text = i;
            option.value = i;
            selectYear.add(option);
        }

        // 월 옵션 추가
        var selectMonth = document.getElementById("exampleFormControlSelect2");
        for (var i = 1; i <= 12; i++) {
            var month = ("0" + i).slice(-2);
            var option = document.createElement("option");
            option.text = month;
            option.value = month;
            selectMonth.add(option);
        }

        // 일 옵션 추가
        var selectDay = document.getElementById("exampleFormControlSelect3");
        for (var i = 1; i <= 31; i++) {
            var day = ("0" + i).slice(-2);
            var option = document.createElement("option");
            option.text = day;
            option.value = day;
            selectDay.add(option);
        }
    </script>

</body>
</html>