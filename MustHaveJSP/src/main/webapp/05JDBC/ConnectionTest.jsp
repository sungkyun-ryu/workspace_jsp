
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<h1>JDBC 테스트 3</h1>
	<%
	JDBConnect jdbc1 = new JDBConnect(application); 
	jdbc1.close(); 
	%>
	
	
</body>
</html>