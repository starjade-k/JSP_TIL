function check() {
	if(document.frm.id.value == "") {
		alert("아이디를 입력하세요");
		document.frm.id.focus();
		return false;
	} else if(document.frm.age.value == "") {
		alert("야 나이 입력하시지요.");
		document.frm.age.focus();
		return false;
	} else if(isAge(document.frm.age.value)) {
		alert("숫자를 입력해 주세요 ");
		document.frm.age.focus();
		return false;
	}else {
		return true;
	}
}