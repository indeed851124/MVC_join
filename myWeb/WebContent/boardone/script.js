/**
 * 
 */
function writeSave(){
	if(document.writeFrom.writer.value ==""){
		alert("작성자를 입력하십시요.");
		document.writeForm.writer.focus();
		return false;
	}
	if(document.writeFrom.subject.value ==""){
		alert("제목을 입력하십시요.");
		document.writeForm.subject.focus();
		return false;
	}
	if(document.writeFrom.content.value ==""){
		alert("내용을 입력하십시요.");
		document.writeForm.content.focus();
		return false;
	}
	if(document.writeFrom.pass.value ==""){
		alert("비밀번호를 입력하십시요.");
		document.writeForm.pass.focus();
		return false;
	}
}
