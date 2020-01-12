<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.IOException, java.io.FileReader" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	FileReader reader = null;
	try{
	String path = request.getParameter("path");
	reader = new FileReader(getServletContext().getRealPath(path)); //비동기적으로 데이터를 읽기 위하여 파일을 가리키는 것
%>
<pre> <!-- pre태그는 문장 입력한 그대로 브라우저에 표현. HTML형태 그대로 유지 가능. 프로그램 소스표현할 때 많이 사용 -->
소스코드 = <%=path %>
<c:out value="<%=reader %>" escapeXml="true" /> <!-- 화면에 출력할 값을 적습니다.excapeXML속성은 false일 경우 value값을 찾지 못했을 때 출력하는 값 -->
</pre>
<%

	}catch(IOException ex){
%>
에러: <%=ex.getMessage() %> <!-- 에러이벤트와 함께 들어오는 메세지를 출력한다. -->
<%
	}finally{
		if(reader != null){
			try{
				reader.close();
			}catch(IOException ex){}
		}
	}
%>
</body>
</html>