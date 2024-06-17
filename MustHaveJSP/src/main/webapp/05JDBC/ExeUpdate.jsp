<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "common.JDBConnect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2> 회원 추가 테스트 </h2>
	<% 
	JDBConnect jdbc = new JDBConnect(); 
	
	String pseudoId= "test1"; 
	String pseudoPwd= "1111"; 
	String name1 = "테스트회원1"; 
	
	String sql = "insert into member (pass, name) values (?,?)"; 
	PreparedStatement psmt = jdbc.getCon().prepareStatement(sql); 
	psmt.setString(1, pseudoPwd); 
	psmt.setString(2, name1); 
	
	int inResult = psmt.executeUpdate(); 
	out.println(inResult + "행이 입력"); 
	%>

</body>
</html>