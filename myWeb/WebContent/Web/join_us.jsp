<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/join_us.css" />
	<script type="text/javascript" src="js/script.js"></script>
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
			<li><a href="join_us.jsp">Join Us</a>
			<li><a href="#">Board</a>
			<li><a href="#">Ajax Board</a>
		</ul>
	</nav>

	<!--실제 내용 콘텐츠가 들어가는 곳-->

	<article id="contents">
	<h1>Join Us</h1>
	<form method="post" action="joinProc.jsp" name="joinForm" id="join">
		<fieldset><legend>Basic Infomation</legend>
		<ul>
				<li><label>User ID　</label><input type="text" name="id" class="id"/> <input type="button" value="중복체크" id="dup" class="btn" onClick="idCheck(this.form.id.value)"/></li>
				<li><label>Password　</label><input type="password" name="pass" class="pass"/></li>
				<li><label>Retype Password　</label><input type="password" name="repass" class="pass"/></li>
				<li><label>Name　</label><input type="text" name="name" class="nick"/></li>
				<li><label>Email　</label><input type="text" name="email" class="email"/></li>

			</ul>
		</fieldset>
		<fieldset><legend>Optional</legend>

		<ul>
		<li><label>Phone Number　</label>
			<select name="phone1">
				<option value="02">02</option>
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>-
			<input type="text" name="phone2" class="tel" maxlength="4" size="5"/>-
			<input type="text" name="phone3" class="tel" maxlength="4" size="5"/></li>

				<li><label>Postal Code　</label>
			<input type="text" name="zipcode" class="zipcode" />
			<input type="button" value="찾기" onClick="zipCheck()"/></li>
				<li><label>Address1　</label>
			<input type="text" name="address1" class="address"/></li>
				<li><label>Address2　</label>
			<input type="text" name="address2" class="address"/></li>
			</ul>
		</fieldset>
		<div class="clear"></div>
		<div id="buttons">
			<input type="button" value="Submit" id="submit" class="btn" onClick="inputCheck()">
			<input type="button" value="Cancel" id="cancel" class="btn">
		</div>
	</form>


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