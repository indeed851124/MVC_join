<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="view/color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Board</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="script.js">
</script>
</head>
<!-- // 새글 답변글 구분하는 코드 추가 예정 -->
<body bgcolor="<%=bodyback_c %>">
<center><b>글쓰기</b></center><br></br>
<form method="post" name="wirteForm" action="writeProc.jsp"
 onsubmit="return writeSave()">
<table width="450" border="1" cellpadding="0" cellspacing="0" align="center"
 	bgcolor="<%=bodyback_c %>">
<tr>
	<td align="right" colspan="2" bgcolor="<%=value_c %>">
		<a href="list.jsp">글목록</a>
	</td>
</tr>
<tr>
	<td width=20% bgcolor="<%=value_c %>" align="center">이름</td>
	<td width=80%>
		<input type="text" size="12" maxlength="12" name="writer" />
	</td>
</tr>
<tr>
	<td bgcolor="<%=value_c %>" align="center">이메일</td>
	<td>
		<input type="text" size="30" maxlength="30" name="email" />
	</td>
</tr>
<tr>
	<td bgcolor="<%=value_c %>" align="center">제목</td>
	<td>
		<input type="text" size="50" maxlength="50" name="subject" />
	</td>
</tr>
<tr>
	<td bgcolor="<%=value_c %>" align="center">내용</td>
	<td>
		<textarea name="content" rows="13" cols="50"></textarea>
	</td>
</tr>
<tr>
	<td bgcolor="<%=value_c %>" align="center">비밀번호</td>
	<td>
		<input type="password" size="10" maxlength="10" name="pass" />
	</td>
</tr>
<tr>
	<td colspan="2" bgcolor="<%=value_c %>" align="center">
		<input type = "submit" value="글쓰기" />
		<input type = "reset" value="다시작성" />
		<input type = "button" value="목록" onClick="window.location='list.jsp'"/>
	</td>
</tr>
</table>
</form>
<!-- 예외처리 -->
</body>
</html>