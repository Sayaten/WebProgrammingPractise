<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			#title{
				width: 150px;
				margin-left: auto;
				margin-right: auto;
				margin-bottom: 50px;
			}
			#rank{
				width: 400px;
				margin-left: auto;
				margin-right: auto;
				text-align: center;
			}
			#select_buttons{
				width: 200px;
				margin-left: auto;
				margin-right: auto;
			}
		</style>
	</head>
	<body>
		<%@ page import = "practise03_package.*" %>
		<div id="title">
			<h1>랭킹 보기</h1>
		</div>
		<hr width="400px" align="center">
		<jsp:useBean id="score_list" scope="application" class="jspexam.beans.RankDataBean"/>
		<div id="rank">
			<%
				PriorityQueue list = new PriorityQueue(score_list.getList());
				for(int i = 0 ; i < 3 ; ++i)
				{
					if( list.getSize() > i)
					{
						out.print((i + 1) + ". " + list.peek(i).getName()
							+ "\t\t" + 
							 list.peek(i).getCount()
							+ "회\n");
						}
					}
			%>
		</div>
		<div id="select_buttons">
			<form action="practise05.jsp">
				<input type="submit" value="로그아웃">
			</form>
			<form action="practise05_menu.jsp">
				<input type="submit" value="확인">
			</form>
		</div>
	</body>
</html>