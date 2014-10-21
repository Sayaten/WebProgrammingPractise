<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#game_form{
		width: 400px;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
	}
	
</style>
</head>
<body>
<form action="practise05_result.jsp">
	<%@ include file="practise05_header.jsp" %>
	<div id="game_form">
		<h2>숫자를 입력하세요 (1부터 100까지)</h2>
		<input type="text" name="input">
		<input type="submit" value="확인">
	</div>
</form>
</body>
</html>