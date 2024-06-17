<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>테스트</h2>
	<% String dan = request.getParameter("dan"); 
	 String ops = request.getParameter("ops"); 
	 String col = request.getParameter("col"); 
	 String type = request.getParameter("type"); 
	
	if (type.equals("gugudan1")) {
	request.getRequestDispatcher(
		"gugudan1.jsp?dan=" + dan)
		.forward(request, response);
	} else if (type.equals("gugudan1-1")) {
		request.getRequestDispatcher(
				"gugudan1-1.jsp?dir=" + ops)
				.forward(request, response);
	} else if (type.equals("gugudan2")) {
		request.getRequestDispatcher(
				"gugudan2.jsp?col=" + col)
				.forward(request,response);
	}
	
	%>

</body>
</html>