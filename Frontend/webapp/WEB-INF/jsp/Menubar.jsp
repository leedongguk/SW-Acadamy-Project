<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%String sessionId = (String) session.getAttribute("sessionId");%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Dela+Gothic+One&family=Dosis:wght@200;300&family=Koulen&family=Smooch&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/f50322ccba.js" crossorigin="anonymous"></script>


<!-- 화면 변경 크기와 navbar의 배경색, 글자색 변경 -->
<!-- 화면 위쪽에 고정하기 위해 fixed-top 클래스 추가 -->


<nav class="navbar navbar-expand-lg navbar-dark bg-darker fixed-top"  style="z-index:999;">
  <!-- navbar-brand의 content 변경 -->
  
  <a class="navbar-brand" href="Home.jsp"><img src="https://github.com/leedongguk/SW-Acadamy-Project/blob/main/image/logo.png?raw=true" style="width:10%; height:15%;" /></a>
  <!--<kbd class="font-weight-bold">DG MALL</kbd>-->
 
  
  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >
   
    <ul class="navbar-nav">
      
      
      <li class="nav-item dropdown">
	<a class="nav-link  dropdown-toggle" href="#" data-toggle="dropdown" style="font-size:25px; color:#0C2EB3;"><i class="fa-solid fa-bars"></i></a>
    <ul class="dropdown-menu bg bg-darker" style="background-color:whtie;">
      <li class="dropdown-item">
        <a class="nav-link" href="Home.jsp" style="color:#0C2EB3;"><i class="fa-solid fa-house"  style="margin-right:5px;"></i>Home</a>
      </li>
      <li class="dropdown-item">
        <a class="nav-link" href="product.jsp" style="color:#0C2EB3;"><i class="fa-solid fa-bottle-droplet"  style="margin-right:5px;"></i>PRODUCTS</a>
      </li>
       <li class="dropdown-item">
        <a class="nav-link" href="receipe.jsp" style="color:#0C2EB3;"><i class="fa-solid fa-bell-concierge"  style="margin-right:5px;"></i>Recipe</a>
      </li>
      <c:choose>
               <c:when test="${empty sessionId}">
               </c:when>
               <c:otherwise>
                  <li class="dropdown-item" style="padding-top: 9px; color: #0C2EB3;"><i class="fa-solid fa-user"></i>_<%=sessionId%></li>
                  <li class="dropdown-item"><a class="nav-link" style="color:#0C2EB3;" href="<c:url value="/BoardListAction.do?pageNum=1"/>"><i class="fa-solid fa-square-pen" style="margin-right:5px;"></i>Board</a>                      
                  <li class="dropdown-item"><a class="nav-link" style="color:#0C2EB3;" href='<c:url value="/updateMember.jsp"/>'><i class="fa-solid fa-pen-to-square" style="margin-right:5px;"></i>Member Edit</a>
                  <li class="dropdown-item"><a class="nav-link" style="color:#0C2EB3;" href="<c:url value="/logoutMember.jsp"/>"><i class="fa-solid fa-right-from-bracket" style="margin-right:5px;"></i>Logout</a></li>
               </c:otherwise>
            </c:choose>
    </ul>


      <c:choose>
               <c:when test="${session.Id}">
               </c:when>
               <c:otherwise>
<li class="nav-item"><a class="nav-link" href="<c:url value="/updateMember.jsp"/>" style="color:white; font-size:30px; text-align:center;"><i class="fa-solid fa-address-card"></i></a></li>
               </c:otherwise>
            </c:choose>
<li class="nav-item"><a class="nav-link" href="cart.jsp" style="color:#0C2EB3; font-size:30px; text-align:center;"><i class="fa-solid fa-cart-shopping"></i></a></li>

    </ul>
    
  
    
      
  </div>
</nav>

      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
         integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
         integrity = "sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
         crossorigin = "anonymous">
      </script>
      
      <script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
         integrity = "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
         crossorigin = "anonymous">
      </script>

