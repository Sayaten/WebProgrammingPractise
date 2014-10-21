<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
		<style>
			#welcome_message{
				width: 300px;
				margin-left: auto;
				margin-right: auto;
				text-align: center;
			}
			#select_menu{
				width: 400px;
				margin-top: 50px;
				margin-left: auto;
				margin-right: auto;
				text-align: center;
			}
		</style>
	</head>
	<body>
		<%
			if(session.getAttribute("name")==null)
			{
				request.setCharacterEncoding("UTF-8");
				session.setAttribute("name",request.getParameter("name"));
			}
		%>
		<%@ include file="practise03_header.jsp"%>
		<div id="welcome_message">
			<%= session.getAttribute("name") %> 님 환영합니다.
		</div>
		<div id="select_menu">
			<a href="practise03_game.jsp">게임하기</a>
			<a href="practise03_ranking.jsp">랭킹보기</a>
		</div>
	</body>
</html>