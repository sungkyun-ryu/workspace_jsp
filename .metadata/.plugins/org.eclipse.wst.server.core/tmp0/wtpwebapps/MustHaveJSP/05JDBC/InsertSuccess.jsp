
<%@ page import = "common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% String id = request.getParameter("name"); 
	String pw = request.getParameter("password");
	%> 



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>멤버 추가에 성공했습니다!!</h1>
	
	
	
	<%-- <%
	out.print(id + pw);
	%> --%>
</body>
</html>