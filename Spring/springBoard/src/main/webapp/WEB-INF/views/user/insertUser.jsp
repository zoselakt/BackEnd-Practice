<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- 
    <link rel="stylesheet" href="${path}/resources/css/default.css"/>
    <link rel="stylesheet" href="${path}/resources/css/initial.css"/>
    <link rel="stylesheet" href="${path}/resources/css/style.css"/>
     -->
    <link rel="stylesheet" href="/resource/css/initial.css"/>
    <link rel="stylesheet" href="/resource/css/insertUser.css"/>
    <script type="text/javascript" src="/resource/JS/prefix.js"></script>
    <!-- <script type="text/javascript" src="/resource/JS/joinajax.js"></script> -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
    <script type="text/javascript">
		function gomain() { location.href="../main"};
		
		//아이디 중복 검사
		$('#btn-id').on('click', function() {
			id_check();
		});

		//유효성 검사
		$('.user_id').on('keyup', function(){
			if($(this).attr('name') == 'user_id') {
				if(event.keyCode == 13) { id_check(); }
				else {
					$(this).removeClass('user_id');
					validate( $(this) );
				}
			} else {
				validate($(this));
			}
		});
	</script>

</head>
<body>
    <div id="wrap">
        <div class="title">
            <h1>회원가입</h1>
            <p class="prec"><em> &ast; </em>표시는 필수 입력사항입니다.</p>
        </div>
        <form:form action="insertUser" method="post" modelAttribute="userDto">
            <table class="table_a">
                <tr>
                    <td><em> &ast; </em> 사용자 아이디</td>
                    <td>
                        <form:input path="user_id" class="user_id" type="text" placeholder="8~12자 까지"/>
                        <button id="btn-id" class="gbtn normal transparent" type="button">중복확인</button>
                        <div class='valid'>아이디를 입력하세요. (영문 소문자, 숫자만 입력 가능)</div>
                    </td>
                </tr>
                <tr>
                    <td><em> &ast; </em> 사용자 비밀번호</td>
                    <td><form:input path="user_password" class="user_password" placeholder="10~14자 / 문자+숫자+특수문자 조합"/></td>
                    <td><div class="valid">비밀번호를 입력하세요. </div></td>
                </tr>
                <!-- 
                <tr>
                    <td><em> &ast; </em> 비밀번호 재확인</td>
					<td>
						<form:input type="password" title="비밀번호 확인" path="user_password" class="pw_ck" />
						<div class="valid">비밀번호를 다시 입력하세요. </div>
					</td>
                <tr>
                 -->
                    <td><em> &ast; </em> 한글성명 </td>
                    <td><form:input path="name" class="name" placeholder="이름을 입력하세요"/></td>
                </tr>
                <tr>
					<td><em> &ast; </em> 주민번호 </td>
                    <td><form:input path="jumin" class="jumin" placeholder="주민번호를 입력하세요"/></td>
                </tr>
                <tr>
                    <td><em> &ast; </em> 이메일</td>
                    <td><form:input path="email" class="email" placeholder="이메일을 입력하세요"/></td>
                    <!-- <i>&commat;</i><form:input path="email" class="email" placeholder="이메일을 입력하세요"/> -->
                </tr>
                <tr>
                    <td><em> &ast; </em> 주소</td>
                    <td>
                        <form:input path="addr" class="addr" placeholder="주소를 입력하세요"/>
                        <button class="gbtn normal transparent" type="button">검색</button>
                    </td>
                </tr>
                <tr>
                    <td><em> &ast; </em> 휴대폰번호</td>
                    <td><form:input path="phone" class="phone" placeholder="번화번호를 입력하세요"/></td>
                </tr>
            </table>
            <div class="button-group">
                <button type="submit" class="gbtn normal gray">회원가입</button>
                <button type="button" class="gbtn normal" onclick="gomain()">취소</button>
            </div>
        </form:form>
    </div>
</body>
</html>