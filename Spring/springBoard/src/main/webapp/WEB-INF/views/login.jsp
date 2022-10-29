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
</head>
<body>
	  <form:form action="login" method="post" modelAttribute="userDto">
        <table class="table_a">
        <ul>
			<li>
				<span>
					<input type="text" name="user_id" id="user_id" placeholder="아이디" />
					<input type="password" name="user_password" id="user_password" onkeypress="if(event.keyCode == 13) {go_login()}" id="user_password" placeholder="비밀번호" />
				</span>
			</li>
			<li><a class="btn-fill" onclick="go_login()">로그인</a></li>
			<li><a class="btn-fill" href="user/insertUser">회원가입</a></li>
		</ul>
        </table>
	  </form:form>
</body>
</html>