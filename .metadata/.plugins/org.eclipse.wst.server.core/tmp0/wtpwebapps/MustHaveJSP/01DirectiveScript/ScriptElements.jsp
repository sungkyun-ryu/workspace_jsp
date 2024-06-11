<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
public int add(int num1, int num2) {
	return num1 + num2 ; }

public int multi(int num1, int num2) {
	return num1 * num2 ; }

public int div(int num1, int num2) {
	return num1 / num2 ; }

public int subtr(int num1, int num2) {
	return num1 - num2 ; }


%>    
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
<%  
int result1; 
int result2;
int result3;
int result4;
	
try {
	int num1 = Integer.parseInt(request.getParameter("num10"));
	int num2 = Integer.parseInt(request.getParameter("num20"));

	result1 = add(num1, num2); 
	result2 = subtr(num1, num2);
	result3 = multi(num1, num2); 
	result4 = div(num1, num2);

} catch(Exception e) {
	result1 = 0 ; 
	result2 = 0 ;
	result3 = 0 ; 
	result4 = 0 ;
}

%>

덧셈 결과 : <%= result1 %>
<br/>
뺄셈 결과 : <%= result2 %>
<br/>
곱셈 결과 : <%= result3 %>
<br/>
나눗셈 결과 : <%= result4 %>


</body>
</html>