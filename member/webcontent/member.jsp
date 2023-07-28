<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language = "text.javascript">
	function checkMember() {
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpName = /^[가-힣]*$/;
		var regPassWord = /^[0-9]*$/;
		var regExpPhone = /^\d{3} - \d{3,4} - \d{4}$/;
		var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]
							([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		var form = document.Member;
		//document는 html에 바디태그를 뜻한다고 보면 됨
		var id = form.id.value;
		var passwd = form.passwd.value;
		var name = form.name.value;
		var phone = form.phone1.value; + "-" + form.phone2.value + "-" + form.phone3.value;
		var email = form.email.value;

		if(!regExpId.test(id)) {
			alert("아이디는 문자로 시작해주세요");
			form.id.select().;
			return;
		}

		if(!regExpName.test(name)) {
			alert("이름은 한글로만 작성 해주세요");
			return;
		}

		if(!regExpPassWord.test(passwd)) {
			alert("비밀번호는 숫자만 입력해주세요");
			return;
		}

		if(!regExpPhone.test(phone)) {
			alert("연락처 입력 확인");
			return;
		}

		if(!regExpEmail.test(email)) {
			alert("이메일 입력 확인");
			return;
		}

		form.submit();
}
</script>
</head>
<body>
<h3>회원가입</h3>
<form action="member_check.jsp" name = "Member" method = "post">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="passwd"><br>
이름 : <input type="text" name="name"><br>
연락처 : <select name = "phone1">
			<option value="011">011</option>
			<option value="010">010</option>
		</select> - <input type="text" maxlength="4" size ="4" name="phone2">
		- <input type="text" maxlength="4" size ="4" name="phone3"><br>
이메일 : <input type="text" name="email"><br>
<input type="button" value="가입" oncilck="checkMember()">
</form>
</body>
</html>