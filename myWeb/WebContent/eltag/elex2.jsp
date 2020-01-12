<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "actiontag.Customer, java.util.ArrayList" %>
<%
	ArrayList<String> singer = new ArrayList<String>();
	singer.add("소녀시대");
	singer.add("원더걸스");
	request.setAttribute("singer", singer);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>