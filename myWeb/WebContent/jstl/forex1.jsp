<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- taglib란 EL,JSTL,커스텀태그를 JSP페이지 내에 사용할 때 사용.uri가 길기때문에 prefix속성의 별명값으로 사용한다.  --%>
<%
	String[] movieList = {"프리즌브레이크", "스파르타쿠스","히어로즈"};
	request.setAttribute("movieList", movieList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
인기 미국 드라마:
<ul>
	<c:forEach var="movie" items="${movieList}">
		<li>${movie }</li>
	
	</c:forEach>
</ul>
</body>
</html>