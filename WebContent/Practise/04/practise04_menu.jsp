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
		<%@ include file="practise04_header.jsp"%>
		<div id="welcome_message">
			<%= session.getAttribute("name") %> 님 환영합니다.
		</div>
		<div id="select_menu">
			<form name=playgame action=./practise04_game.jsp method=post>
			<input type="submit" name="play" value="게임하기">
			</form>
			<form name=showrank action=/JSP_EXAM/Practise04_RankingServlet method=post>
			<input type="submit" name="rank" value="랭킹보기">
			</form>
		</div>
	</body>
</html>