<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> <!-- post,get 처리방식의 한글깨짐 방지 -->
<!DOCTYPE html>
<html>
<head>

<title>표현언어의 사용예제</title>
</head>
<body>
<h3>파라미터 값 처리</h3>
<br></br>
<form action="elex5.jsp" method="post">
이름 : <input type="text" name="name" value="${param['name']}">
	<input type="submit" value="확인">
</form>
<p>
이름은: ${param.name }입니다. <!-- 파라미터값이란 넘어온 데이터. name은 그 데이터 중 name이라는 이름을 갖는 데이터의 값을 가져오는것 -->
</p>
</body>
</html>