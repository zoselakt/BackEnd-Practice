<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resource/css/board.css"/>
	<script type="text/javascript">
		function gomain() { location.href="../main"}
		function goinsert() { location.href="insertBoard"}
	</script>
</head>
<body>
 <h1>Mybatis Board</h1>
 	<div id="menu">
		<ul>
		    <li><a href="<c:url value='/main'/>">Home</a></li>
		    <li><a href="<c:url value='/login'/>">login</a></li>    
		    <li><a href="<c:url value='/board/mainBoard'/>">Board</a></li>
		    <li><a href="<c:url value='/user/insertUser'/>">Sign in</a></li>
		    <li><a href=""><i class="fas fa-search small"></i></a></li>
		</ul> 
	</div><br>
<form:form action="mainBoard" method="post">
<table id="board-table">
	<tbody class="title-tbody">
		<tr class="board-tr">
			<td>No.</td>
			<td>제목</td>
			<td>작성자</td>
			<td>조회수</td>
			<td>작성일</td>
		</tr>
	</tbody>
	<tbody class="inner-tbody">
		<c:forEach var="board" items="${selectAll}">
			<tr class="inner-tr">
				<td>${board.bnum}</td>
				<td><a href="./detailBoard?bnum=${board.bnum}">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.readCnt}</td>
				<td>${board.regDate}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
	<div class="btn_group2">
	    <button type="button" onclick="goinsert()" class="btn2">등록</button>
	    <button type="button" onclick="gomain()" class="btn2">메인페이지</button>
    </div>
</form:form>
</body>
</html>