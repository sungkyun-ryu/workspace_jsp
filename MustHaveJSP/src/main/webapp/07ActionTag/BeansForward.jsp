<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Beans Forward 테스트</h1>
받은 거: 
<%-- <jsp:getProperty name="person1" property="name"/>  --%>
<%= request.getAttribute("person1")%>
<% common.Person p1= (common.Person) request.getAttribute("person1"); %> <br/>
<%=	p1.getName() %> <%=p1.getAge() %>


</body>
</html>