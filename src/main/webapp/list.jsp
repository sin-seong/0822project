<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	<link rel="stylesheet" href="08/css/style.css">
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<div class="container" style="padding-top: 50;">
		<table class="table table-bordered table-hover">
			<tr>
				<th class="num">번호</th>
				<th class="title">제목</th>
				<th class="writer">작성자</th>
				<th class="regtime">작성일시</th>
				<th>조회수</th>
			</tr>

			<c:forEach var="msg" items="${msgList}">
				<tr>
					<td>${msg.num}</td>
					<td style="text-align: left;"><a
						href="view?num=${msg.num}&page=${param.page}"> ${msg.title} </a></td>
					<td>${msg.writer}</td>
					<td>${msg.regtime}</td>
					<td>${msg.hits}</td>
				</tr>
			</c:forEach>
		</table>

		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:forEach var="pgn" items="${pgnList}">
					<li class="page-item"><a class="page-link"
						href="list?page=${pgn.pageNo}"> <c:choose>
								<c:when test="${pgn.curPage}">
										<u>${pgn.display}</u>
									</c:when>
								<c:otherwise>
										${pgn.display}
									</c:otherwise>
							</c:choose>
					</a></li>
				</c:forEach>
			</ul>
		</nav>

		<button type="button" class="btn btn-outline-primary"
			onclick="location.href='write'">글쓰기</button>
	</div>
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