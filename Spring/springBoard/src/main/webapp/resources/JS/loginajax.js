function go_login() {
	if( $('#user_id').val() == '' ) {
		alert('아이디를 입력하세요!');
		$('#user_id').focus();
		return;
	} else if( $('#user_password').val() == '' ) {
		alert('비밀번호를 입력하세요!');
		$('#user_password').focus();
		return;
	}

	$.ajax({
		type: 'post',
		url: '/login',
		data: { user_id:$('#user_id').val(), user_password:$('#user_password').val() },
		success: function(data) {
			if(data == 'true') {
				alert("로그인성공!")
				location.href = "./main";
			} else {
				alert('아이디나 비밀번호가 일치하지 않습니다!');
				$("#user_id").focus();
			}
		},
		error: function(req, text) {
			 alert(text + ': ' + req.status);
	 	}
	});
}

function go_logout() {
	$.ajax({
		type: "post",
		url: "/logout",
		success: function() {
			location.reload();
		},
		error: function(req, text) {
			 alert(text + ': ' + req.status);
	 	}
	});
}