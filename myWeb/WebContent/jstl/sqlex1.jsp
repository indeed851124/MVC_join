<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource url="jdbc:oracle:thin@localhost:1521/XEPDB1" driver="oracle.jdbc.driver.OracleDriver" user="scott" password="tiger" var="ds" scope="application"/>
<sql:setDataSource dataSource="jdbc/myOracle" var="ds" scope="application"/>
<sql:query var="rs" dataSource="jdbc/myOracle">
	select * from tempmember
</sql:query>
<table border="1">
	<tr><%--필드명 출력 --%>
		<c:forEach var="columnName" items="${rs.columnNames }">
			<th><c:out value="${columnName }"/></th>
		</c:forEach>
	</tr>
	<%--레코드의 수 만큼 반복. 열을 받아옴--%>
	<c:forEach var="row" items="${rs.rowsByIndex }">
	<tr>
	<%--레코드의 필드 수 만큼 반복 .행을 받아옴--%>
	<c:forEach var="column" items="${row }" varStatus="i">
	<td>
	<c:if test="${column!=null }">
		<c:out value="${column }" />
		</c:if>
		<c:if test="${column==null }">
			&nbsp;
		</c:if>
		</td>
		</c:forEach>
		</tr>
		</c:forEach>
</table>
</body>
</html>