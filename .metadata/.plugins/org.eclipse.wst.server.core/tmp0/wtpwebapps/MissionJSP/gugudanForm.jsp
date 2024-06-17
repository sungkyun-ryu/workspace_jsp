<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Times Tables</title>
</head>
<body>
	<form action= "./gugudanProc.jsp" method="get">
		<div>
		<input type="radio" id="type1" name="type" value="gugudan1">
		<label for="type1">Type1 </label>
		<input type="text" id="dan" name="dan">
		<label for="dan">단 </label>
	</div>
	<div>
		<input type="radio" id="type2" name="type" value="gugudan1-1">
		<label for="type2">Type2 </label>
		<input type="radio" id="vertical" name="ops" value="ver">
		<label for="type2">Vertical </label>
		<input type="radio" id="horizontal" name="ops" value="hor">
		<label for="type2">Horizontal </label>		
	</div>
	<div>
		<input type="radio" id="type3" name="type" value="gugudan2">
		<label for="type3">Type3 </label>
		<input type="text" id="yeol" name="col">
		<label for="yeol">열 </label>
	</div>
	<div>
		<button type="submit">선택</button>
	</div>
	</form>
</body>
</html>