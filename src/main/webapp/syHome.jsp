<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>    
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 	<title>Error</title>
    <link rel="icon" href="favicon.ico" type="08/image/x-icon">
    <script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="08/css/style.css">
    <script src="08/js/ie.js"></script>
</head>
<body>

    <header>
        <div class="inner">
            <h1><a href="${pageContext.request.contextPath}/home">월드 스카이 스트림</a></h1>

            <ul id="gnb">
                <li><a href="#">DEPARTMENT</a></li>
                <li><a href="#">GALLERY</a></li>
                <li><a href="https://www.youtube.com/@LCK">YOUTUBE</a></li>
                <li><a href="${pageContext.request.contextPath}/list">카뮤니티</a></li>
                <li><a href="#">LOCATION</a></li>
            </ul>

            <ul class="util">
                <li><a href="#">Contact</a></li>
                <li><a href="#">도움말</a></li>
              
			     <li><a></a><il>
			   <c:if test="${userLoggedIn}">
			    <li><a href ="${pageContext.request.contextPath}/logout">${customInfo.name}님, [로그아웃]</a></li>
			    </c:if>
			  <c:if test="${!userLoggedIn}">
                <li><a href="${pageContext.request.contextPath}/log">로그인</a></li>
               </c:if>
               <c:if test="${!userLoggedIn}">
                <li><a href="${pageContext.request.contextPath}/reg">Join</a></li>
                </c:if>
                <li><a href="#">Sitemap</a></li>
            </ul>
        </div>
    </header>


    <figure>
        <video src="08/img/Ellin_Forest.mp4" autoplay muted loop></video>
        <div class="inner">
            <h1>사사미</h1>
            <p>이글은 1823년전부터 이어져 왔으며  <br>
                지금 바라보고 있는 당신은 오늘의 행운이 다 달았음을 의미하는 바입니다.</p>
            <a href="#">view detail</a>
        </div>
    </figure>

    <section>
        <div class="inner">
            <h1>RECENT NEWS</h1>
            <div class="wrap">
                <article>
                    <div class="pic">
                        <img src="08/img/news1.jpg" alt="1번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad
                        maiores!</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="08/img/news2.jpg" alt="2번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad
                        maiores!</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="08/img/news3.jpg" alt="3번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad
                        maiores!</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="08/img/news4.jpg" alt="4번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">Lorem ipsum dolor sit.</a></h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vitae minus, eaque corrupti vero ad
                        maiores!</p>
                </article>
            </div>
        </div>
    </section>

    <footer>
        <div class="inner">
            <div class="upper">
                <h1>DIS_Falut</h1>
                <ul>
                    <li><a href="#">Policy</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Family Site</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </div>

            <div class="lower">
                <address>
                    은하계 186번 지구<br>
                    TEL : 031-111-1234 C.P : 010-1234-5678
                </address>
                <p>
                    2077 WolrdsMoll &copy; copyright all right reserved.
                </p>
            </div>
        </div>
    </footer>




</body>

</html>