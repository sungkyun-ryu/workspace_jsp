<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<!DOCTYPE html>
<%!
	public int multi(int dan, int num) {
		return (dan*num); 
}	
%>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<%
	int dan = 100; 
	try{
	dan = Integer.parseInt(request.getParameter("dan"));
	}catch(Exception e) {}	
	
	for(int i = 1; i < 10; i++) {
		out.println(dan + "*" + i + "= ");
		out.println(multi(dan, i));
		out.println("<br/>");
		out.println("<br/>");
	
	}
%>

</body>
</html>