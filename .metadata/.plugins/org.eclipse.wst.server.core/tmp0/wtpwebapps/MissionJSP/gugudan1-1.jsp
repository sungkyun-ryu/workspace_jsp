<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	public int multi(int dan, int num) {
		return (dan*num); 
	}	
%>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 징검다리</title>
</head>
<body>	
	<%
	
	String dir = "hor"; 
	try {
		dir = request.getParameter("dir").toString(); 
	} catch(Exception e) {}
	
	if(dir.equals("hor")) {
		for (int dan=2 ; dan < 10 ; dan++) {
			for (int i=1; i < 10 ; i++) {
				out.print(dan + " * "+ i + " = " );
				out.print(multi(dan, i) + "&nbsp&nbsp&nbsp");
			} out.println("<br/>"); out.println("<br/>");				
			  
		} 
		
	} else if(dir.equals("ver")) {
		for (int dan=2 ; dan < 10 ; dan++) {
			for (int i=1; i < 10 ; i++) {
				out.print(dan + " * "+ i + " = " );
				out.print(multi(dan, i));
				out.println("<br/>");
			} out.println("<br/>");	
		}
	}	
	
	%>

</body>
</html>