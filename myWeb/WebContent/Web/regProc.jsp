<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="web.StudentDAO" />
<jsp:useBean id="vo" class="web.StudentVO" />
<jsp:setProperty name="vo" property="*" />
<%
	boolean flag = dao.memberInsert(vo);
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login_form.css" /><!--login css-->
<meta charset="UTF-8">
<title>페이지의 전체구조</title>
</head>
<body>
	<div id="warp">
	<!--헤더파일 들어가는 곳-->
	<header>
	<div id="login"><a href="#">Login</a> | <a href="#">Join</a></div>
				<div class="clear"></div>
			<div id="logo">
			<img src="images/logo.png" width="265" height="62" alt="Javaline Web"></div>
			<nav id="top_menu">
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">Who is Tommy.Lee?</a></li>
						<li><a href="#">Member</a></li>
						<li><a href="#">Board</a></li>
						<li><a href="#">Ajax Board</a></li>
					</ul>
				</nav>

			</header>
	<!--그림파일 들어가는 곳 없어도 되지만 한번 넣어보자-->
	<div id="sub_img">
	</div>
	<!--왼쪽의 서브메뉴가 들어가는 곳-->
	<nav id="sub_menu">
		<ul>
			<li><a href="#">Login</a></li>
			<li><a href="#">Join Us</a>
			<li><a href="#">Board</a>
			<li><a href="#">Ajax Board</a>
		</ul>
	</nav>

	<!--실제 내용 콘텐츠가 들어가는 곳-->
<article id="contents">

<div id="login_box">
 	<div id="modify_wrap">
<form>	
<% 
if(flag){
	out.println("<b>회원가입을 축하드립니다.</b><br/>");
	out.println("<a href=login.jsp>로그인</a>");
}else{
	out.println("<b>다시 입력하여 주십시오.</b><br/>");
	out.println("<a href=join_us.jsp>다시 가입</a>");
}
%>	
			
</form>
</div>

	</div>

	
	<div class="clear"></div>
	
</article>


	
	<div class="clear"></div>
	<!-- 푸터가 들어가는 곳 -->
	<footer>
		<hr>
		<div id="copy">
		All contents copyright 2015 Tommy. Lee. all rights reserved<br>
		Contact mail : stdio@hanmail.net Tel : 010-9531-0114
		</div>
		<div id="social">
		<img src="images/facebook.gif" width="33" height="33" alt="Facdebook">
		<img src="images/twitter.gif" width="33" height="34" alt="Twitter">
		</div>
	</footer>

	</div><!--warp 끝나는 부분-->
</body>
</html>