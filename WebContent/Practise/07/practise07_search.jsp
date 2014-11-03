<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
	#input{
		align:center;
				margin-left: auto;
				margin-right: auto;
		width: 300px;
	}
	</style>
</head>
<body>
	<%@ include file="practise07_header.jsp" %>
	<div id="input">
		<h3>검색할 정보를 입력하세요</h3>
		<form action="./practise07_result.jsp">
		이름 <input type="text" name="name">
		<input type="submit" value="확인">
		</form>
	</div>
</body>
</html>