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
		width:250px;
	}
</style>
</head>
<body>
	<%@ include file="practise07_header.jsp" %>
	<div id="input">
		<form action="./practise07_save.jsp">
		<h3>정보를 입력하세요</h3>
		이름: <input type="text" name="name"><br>
		전화번호: <input type="text" name="phone"><br>
		메일주소: <input type="text" name="email"><br>
		<input type="submit" value="확인">
		</form>
	</div>
</body>
</html>