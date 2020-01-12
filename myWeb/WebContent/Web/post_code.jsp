<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,web.*" %>
<jsp:useBean id="dao" class="web.StudentDAO" />
<%
	request.setCharacterEncoding("utf-8");
	String check = request.getParameter("check");
	String dong = request.getParameter("dong");
	Vector<post_codeVO> post_codeList = dao.zipcodeRead(dong);
	int totalList = post_codeList.size();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/post_code.css" />
	<script type="text/javascript" src="js/script.js"></script>
	<script>
	function dongCheck(){
		if(document.post_code_form.dong.value == ""){
			alert("동이름을 입력하세요.");
			document.post_code_form.dong.focus();
			return;
		}
		document.post_code_form.submit();
	}
	
	function sendAddress(zipcode,sido,gugun,dong,ri,bunji){
		var address = sido+" "+gugun+" "+dong+" "+ri+" "+bunji;
		opener.document.join_us.zipcode.value=zipcode;
		opener.document.join_us.address1.value=address;
	}
	</script>
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
	<div id="post_code_wrap">
		<h1>우편 번호 찾기</h1>
		<form class="post_code_form" name="post_code_form" method="post" action="post_code.jsp">
			<div class="post_code">
				<label>동이름 입력 : </label><input type="text" id="post_code_addr" required autofocus size="30">
										<input type="submit" value="검색" class="btn">
										<input type="hidden" name="check" value="n">
										<table>
										<tr><td align="center">
										<%
										if(check.equals("n")){
										%>
										<%
											if(post_codeList.isEmpty()){
										%>	
											<tr><td align="center"><br/>검색된 결과가 없습니다.</td></tr>
										<% 
										}else{
											
										%>
											<tr><td align="center"><br/>
											#검색 후 , 아래 우편번호를 클릭하면 자동으로 입력됩니다.</td></tr>
										<%
											for(int i=0;i<totalList;i++){
												post_codeVO vo = post_codeList.elementAt(i);
												String tempZipcode = vo.getZipcode();
												String tempSido = vo.getSido();
												String tempGugun = vo.getGugun();
												String tempDong = vo.getDong();
												String tempRi = vo.getRi();
												String tempBunji = vo.getBunji();
												if(tempRi == null)tempRi = " ";
												if(tempBunji == null) tempBunji = " ";
										%>	
											<tr><td>
											<a href="javascript:sendAddress('<%=tempZipcode %>','<%=tempSido %>','<%=tempGugun %>','<%=tempDong %>','<%=tempRi %>','<%=tempBunji %>')"><%=tempZipcode %>&nbsp;<%=tempSido %>&nbsp;<%=tempGugun %>&nbsp;<%=tempDong %>&nbsp;<%=tempRi %>&nbsp;<%=tempBunji %></a><br>
											<%
												}
											}
											%>
											<%} %>
											</td></tr>
										<div class="close"><a href="javascript:this.close();" >닫기</a></div></td></tr>
										</table>
			</div>
			
		</form>
	
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