<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!public int multi(int dan, int num) {
		return (dan * num);
	}%>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 컬럼</title>
</head>
<body>
	<%
	int col = 3;
	try {
		col = Integer.parseInt(request.getParameter("col"));
	} catch (Exception e) {
	}

	int num = 2;
	while (num < 10) {
		for (int i = 1; i < 10; i++) {
			for (int dan = num; (dan < num + col) && (dan < 10); dan++) {
				out.print(dan + " * " + i + " = ");
				out.print(multi(dan, i));
				out.print("&nbsp&nbsp&nbsp&nbsp");
			}
			out.println("<br/>");
		} out.println("<br/>");
		num = num + col;
	}
	%>

</body>
</html>