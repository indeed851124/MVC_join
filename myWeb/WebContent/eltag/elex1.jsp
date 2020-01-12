elex1.jsp

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> <%-- contenType? 서버가 client에 보내는 인코딩방식, pageEncoding? JSP파일 자체의 인코딩방식 --%>
<%@ page import="actiontag.Customer, java.util.HashMap" %>
<%
	
	Customer customer = new Customer();
	customer.setName("손오공");
	customer.setEmail("son@hanmail.net");
	customer.setPhone("010-1234-5678");
	request.setAttribute("customer", customer);
	
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("name", "소나타");
	map.put("maker", "현대자동차");
	request.setAttribute("car", map);
%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<ul>
	<li>이름: ${customer.name }</li>
	<li>메일: ${customer.email }</li>
	<li>전화: ${customer.phone }</li>
</ul>
<br></br>
<ul>
	<li>자동차: ${car.name}</li>
	<li>제조사: ${car.maker}</li>
</ul>
</body>
</html>