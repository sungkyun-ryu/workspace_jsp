<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person2" class="common.Person"/>
	<jsp:setProperty name="person2" property="*"/>
	<ul>
	<li> 이름: <%= person2.getName() %> </li>
	<li> 나이: <%= person2.getAge() %> </li>
	
	</ul>
</body>
</html>