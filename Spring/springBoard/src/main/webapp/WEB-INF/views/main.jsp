<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function goBoard() { location.href="./board/mainBoard"}
		function goinsert() { location.href="./user/insertUser"}
	</script>
</head>
<body>
	<div class="btn_group2">
	    <button type="button" onclick="goBoard()" class="btn2">게시판이동</button>
	    <button type="button" onclick="goinsert()" class="btn2">회원가입</button>
    </div>
</body>
</html>