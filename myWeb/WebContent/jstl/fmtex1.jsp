<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <fmt:setLocale value="en" /> r국제화 태그들이 사용할 로케일을 지정. 언어코드입력 --%>
<fmt:bundle basename="bundle.testBundle"> <!-- 사용할 번들 지정. -->
<fmt:message key="TITLE" var="title" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:message key="NAME" />
<br>
<c:if test="${! empty param.id }">
<fmt:message key="MESSAGE">
	<fmt:param value="${param.id }" />
</fmt:message>
</c:if>
</body>
</html>
</fmt:bundle>