
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "common.JDBConnect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 목록 조회 테스트 (exeQuery() 사용)</h2>
<%
try {
JDBConnect jdbc = new JDBConnect(); 
String sql = "select id, pass, name, regidate from member" ; 
Statement stmt = jdbc.getCon().createStatement(); 

ResultSet rs = stmt.executeQuery(sql);

while(rs.next()) {
	String id = rs.getString(1);
	String pass = rs.getString(2); 
	String name = rs.getString(3); 
	java.sql.Date date = rs.getDate(4); 
	
	out.println(String.format("%s,  %s,  %s,  %s", id, pass, name, date) + "<br/>"); 
}} catch (Exception e) {
	e.printStackTrace(); 
}
%>

</body>
</html>