<%@ page import="common.Gcd_lcm" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form>
	<div style="flex">
	Number 1: <input type="text" name="num1" />
	Number 2: <input type="text" name="num2" />
	GCD: <input type="text" readonly/>
	LCM: <input type="text" readonly/>
	</div>
	<div>
		<button type="submit">SUBMIT</button>
	</div>
</form>

<%	
	String num11 = request.getParameter("num1"); 
	String num12 = request.getParameter("num2"); 
	int num1; int num2;
	if(num11 != null && num12 != null) {
	num1 = Integer.parseInt(num11); 
	num2 = Integer.parseInt(num12);
	out.print(num1 + ", " + num2); }	
	
	int rem = -1;
	
	while(rem != 0) {
		rem = getRem(num1, num2); 
	}
		
%>
 
 
</body>
</html>