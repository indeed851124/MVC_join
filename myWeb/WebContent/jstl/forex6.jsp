<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
콤마와 점을 구분자로 사용:
<br></br>
<c:forTokens var="token"
	items="빨강색,주황.,노란색.초록색,파랑색" delims=",.">
	${token }
</c:forTokens>
</body>
</html>