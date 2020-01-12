function check(){
	if(document.find_frm.find_box.value==""){
		alert("검색어를 입력해 주세요");
		return false;
	}
}

function idCheck(id){
	if(id == ""){
		alert("아이디를 입력해 주세요.");
		document.join_us.id.focus();
	}else{
		url="idCheck.jsp?id=" + id;
		window.open(url,"post","width=300, height=150");
	}
}
function zipCheck(){
	url="post_code.jsp?check=y";
	window.open(url,"post","width=800, height=600, directories=no, status=yes,scrollbar=yes,menubar=no");
}

function inputCheck(){
	if(document.join_us.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.join_us.id.focus();
		return;
	}
	if(document.join_us.pass.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.join_us.pass.focus();
		return;
	}
	if(document.join_us.repass.value==""){
		alert("비밀번호를 확인해 주세요.");
		document.join_us.repass.focus();
		return;
	}
	if(document.join_us.pass.value != document.join_us.repass.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.join_us.repass.focus();
		return;
	}
	if(document.join_us.name.value==""){
		alert("이름을 입력해 주세요.");
		document.join_us.name.focus();
		return;
	}
	if(document.join_us.phone1.value==""){
		alert("통신사를 입력해 주세요.");
		document.join_us.phone1.focus();
		return;
	}
	if(document.join_us.phone2.value==""){
		alert("전화번호를 입력해 주세요.");
		document.join_us.phone2.focus();
		return;
	}
	if(document.join_us.phone3.value==""){
		alert("전화번호를 입력해 주세요.");
		document.join_us.phone3.focus();
		return;
	}
	if(document.join_us.email.value==""){
		alert("이메일을 입력해 주세요.");
		document.join_us.email.focus();
		return;
	}
	
	var str = document.join_us.email.value;
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.');
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if(atPos > 1 && atPos == atLastPos && dotPos > 3 && spacePos == -1 && commaPos == -1 && atPos +1 < dotPos && dotPos +1 < eMailSize);
	else{
		alert('E-mail 주소 형식이 잘못되었습니다.\n\r 다시 입력해 주세요!');
		document.join_us.email.focus();
		return;
	}
	if(document.join_us.zipcode.value==""){
		alert("우편번호를 입력해 주세요.");
		document.join_us.zipcode.focus();
		return;
	}
	if(document.join_us.address1.value==""){
		alert("주소를 입력해 주세요.");
		document.join_us.address1.focus();
		return;
	}
	if(document.join_us.address2.value==""){
		alert("세부주소를 입력해 주세요.");
		document.join_us.address2.focus();
		return;
	}
	document.join_us.submit();
	
}
