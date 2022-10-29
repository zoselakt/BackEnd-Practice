//올바른 아이디 입력 형태인지 파악하여 유효하지 않다면 중복확인 불필요
function id_check() {
	var user_id = $('[name=user_id]');
	if(user_id.hasClass('user_id')) return;
	console.log('go check');
	
	var data = join.tag_status(user_id);
	if(data.code != 'valid') {
		alert('아이디 중복 확인 불필요\n' + data.desc);
		user_id.focus();
		return;
	}

	$.ajax({
		type: 'post',
		url: 'id_check',
		data: {user_id: user_id.val()},
		success: function(data) {
			data = insertUser.user_id(data);
			display_status($id.siblings('div'), data);
			user_id.addClass('user_id');
		},
		error: function(req, text) {
			alert(text + ': ' + req.status);
		}
	});
}

function validate(t) {
	var data = join.tag_status(t);
	display_status(t.siblings('div'), data);
}

function display_status(div, data) {
	div.text(data.desc);
	div.removeClass();
	div.addClass(data.code)
}

/*
function go_join() {
	if( $('[name = name]').val() == '') {
		alert('성명을 입력하세요!');
		$('[name = name]').focus();
		return;
	}

	//필수 항목의 유효성을 판단하도록 한다.
	//중복확인 한 경우
	if($('[name=user_id]').hasClass('user_id') ) {
		//이미 사용중인 경우는 회원가입 불가
		if($('[name=user_id]').siblings('div').hasClass('invalid')) {
			alert('회원가입 불가\n' + join.id.unusable.desc);
			$('[name=user_id]').focus();
			return;
		}
	} else {
		//중복확인 하지 않은 경우
		if( !item_check($('[name=user_id]')) ) return;
		else {
			alert('회원가입 불가\n' + join.id.valid.desc);
			$('[name=user_id]').focus();
			return;
		}
	}
	
	if(!item_check($('[name=user_password]'))) return;
	if(!item_check($('[name=pw_ck]'))) return;
	if(!item_check($('[name=email]'))) return;
	
	$('form').submit();
}

function item_check(item) {
	var data = join.tag_status(item);
	if(data.code == 'invalid') {
		alert('회원가입 불가! \n' + data.desc);
		item.focus();
		return false;
	} else return true;
}
*/