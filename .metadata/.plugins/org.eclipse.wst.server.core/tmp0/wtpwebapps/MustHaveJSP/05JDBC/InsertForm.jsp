<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String s = (request.getParameter("name") != null && request.getParameter("password") != null) ? "./InsertSuccess.jsp" : "./InsertFail.jsp" ; 
%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<form method="post" action=s>  	
	<!-- <form method= "post" action= "./InsertSuccess.jsp"> -->
	
		추가 아이디 : <input type = "text" id="name" name = "name" />		
		추가 비밀번호 : <input type = "password" id="pw" name = "password"/>
		
		<button type="submit">추가</button>
	</form> 
	</div>

</body>
</html>