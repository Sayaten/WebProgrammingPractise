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
		<jsp:useBean id="numbean" scope="session" class="jspexam.beans.NumGameBean"/>
		<jsp:setProperty property="name" name="numbean"/>
		<%
			numbean.createAnswer();
		%>
		<%@ include file="practise05_header.jsp"%>
		<div id="welcome_message">
			<jsp:getProperty name="numbean" property="name"/> 님 환영합니다.
		</div>
		<div id="select_menu">
			<a href="practise05_game.jsp">게임하기</a>
			<a href="practise05_ranking.jsp">랭킹보기</a>
		</div>
	</body>
</html>