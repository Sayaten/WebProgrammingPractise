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
	<%@ page import = "practise03_package.*" %>
		<%
			if(application.getAttribute("score_list")==null)
			{
				// score_list : (name, score)
				application.setAttribute("score_list",new PriorityQueue());
			}
			if(session.getAttribute("name") != null)
			{
				session.invalidate();
			}
		%>
		<%@ include file="practise03_header.jsp" %>
		<form method="POST" action="practise03_menu.jsp">
			<div id="input_form">
				<input type="text" name="name">
				<input type="submit" value="로그인">
			</div>
		</form>
	</body>
</html>