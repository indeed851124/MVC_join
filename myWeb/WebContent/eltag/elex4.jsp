<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setAttribute("name", "이승재");  //이름이 name인 속성의 값을 value로 지정.setAttribute(String name,Object value)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Object</title>
</head>
<body>
요청 URI: ${pageContext.request.requestURI }<br></br>  <!-- 현재 page에 들어있는 데이터 중 request객체에 담겨있던  정보를 꺼내오기 위한 코드 -->
request의 name 속성: ${requestScope.name }<br></br> <!-- get,post방식으로 넘어온 값들은 ${param.이름}형식으로 가져오고 request.setAttribute(이름,값)로 저장한 값들은 ${requestScope.이름}형식으로 가져온다. -->
code 파라미터: ${param.code }<br></br> 
</body>
</html>