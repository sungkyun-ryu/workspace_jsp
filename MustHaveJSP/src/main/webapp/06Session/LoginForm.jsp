<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<span style="color:blue; font-size: 1.2em;">
		<%= request.getAttribute("LoginErrMsg") == null? 
				"에러없다 null이다" : request.getAttribute("LoginErrMsg") %>
	</span>
	
	<% 
	if (session.getAttribute("UserId") == null) {
	%>
	<script>
	function validateForm(form {
		if (!form.user_id.value) {
			alert("Enter your ID");
			return false;
	}
		if (form.user_pw.value == "") {
			alert("Enter your PW");
			return false;
		}
	}</script>
	<form action= "LoginProcess.jsp" method="post" name="loginFrm"
		onsubmit = "return validateForm(this);">
		ID: <input type="text" name="user_id" /><br />
		Password: <input type="password" name="user_pw" /><br />
		<input type="submit" value = "로그인하기" />
	</form>	
	<%
	} else {
	%>
		<%= session.getAttribute("UserName") %> 회원님, 로그인 하셨습니다. <br />
		<a href = "Logout.jsp"> [로그아웃]</a>
	<%
	}
	 %>
</body>
</html>