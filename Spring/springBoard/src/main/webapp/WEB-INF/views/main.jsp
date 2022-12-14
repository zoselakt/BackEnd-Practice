<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/css/initial.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resource/JS/loginajax.js"></script>
<script type="text/javascript">
	function goBoard() { location.href="./board/mainBoard"}
</script>
</head>
<body>
	<!-- 로그인한 경우 -->
	<c:if test="${!empty user_id }">
		<ul>
			<li>${user_id }님 환영합니다!</li>
			<li><a class="btn-fill" onclick="go_logout()">로그아웃</a></li>
		</ul>
		<div class="btn_group">
			<!-- <a href='<c:url value="./board/mainBoard"/>'>게시판이동</a> -->
		   <button type="button" onclick="goBoard()" class="btn2">게시판이동</button>
	    </div>
	</c:if>
	<!-- 로그인하지 않은 경우 -->
	<c:if test="${empty user_id }">
		<ul>
			<li><a class="btn-fill" href="login">로그인</a></li>
			<li><a class="btn-fill" href="user/insertUser">회원가입</a></li>
		</ul>
	</c:if>
</body>
</html>