
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
	<%
	try {
	JDBConnect jdbc = new JDBConnect(); 
	Statement st = jdbc.getCon().createStatement();
	String sql = "select * from board where id = 'musthave'";
	
	ResultSet rs = st.executeQuery(sql); 
	out.println("<table>");
	while(rs.next()) {
		int num = rs.getInt(1); 
		String title = rs.getString(2); 
		String content = rs.getString(3); 
		String id = rs.getString(4); 
		java.sql.Date date = rs.getDate(5); 
		float visitcout = rs.getFloat(6);
		
		
		out.println("<tr><td>" + String.format(("%d %s %s %s"), num, title , content, id) + "</td></tr>");	
		;  
		} 
	
	} catch (Exception e) {
		e.printStackTrace(); 
	} out.println("<table>");
	
	%>
</body>
</html>