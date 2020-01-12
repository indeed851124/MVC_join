<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL core 예제 - set, out, remove</title>
</head>
<body>
browser변수값 설정
<c:set var="browser" value="${header['User-Agent']}"/><br> <!-- c를 쓴이유는 prefix가 이기때문. 변수값을 설정하거나 객체 멤버 변수 값을 설정할때 사용 -->
<c:out value="${browser}"/><p> <!-- <%= %>와 같음 -->
browser변수값 제거 후
<c:remove var="browser"/> <!-- scope의 범위 page<request<session<application -->
<c:out value="${browser}"/>
</body>
</html>