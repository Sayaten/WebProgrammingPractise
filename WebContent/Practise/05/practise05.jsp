<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style>
			#input_form{
				width: 250px;
				margin-left: auto;
				margin-right: auto;
			}
			
		</style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<jsp:useBean id="score_list" scope="application" class="jspexam.beans.RankDataBean" />
		<%@ include file="practise05_header.jsp" %>
		<form method="POST" action="practise05_menu.jsp">
			<div id="input_form">
				<input type="text" name="name">
				<input type="submit" value="로그인">
			</div>
		</form>
	</body>
</html>