<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#result{
		width: 500px;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
	}
</style>
</head>
<body>
<%@ page import = "java.util.Random" %>
<%@ page import = "practise03_package.*" %>
<jsp:useBean id="numbean" scope="session" class="jspexam.beans.NumGameBean"/>
<jsp:useBean id="score_list" scope="application" class="jspexam.beans.RankDataBean" />
<%
	int input;
	PriorityQueue list = new PriorityQueue(score_list.getList());
%>
<%@ include file="practise05_header.jsp" %>
<div id="result">
<%
input = Integer.parseInt(request.getParameter("input"));
numbean.setCount(numbean.getCount() + 1);
if( numbean.checkAnswer(input) == 1 )
{
	%>
	<%= input +"보다 큽니다"%>
	<form action="practise05_game.jsp">
		<input type="submit" value="확인">
	</form>
	<%
}
else if(numbean.checkAnswer(input) == -1)
{

	%>
	<%= input+ "보다 작습니다"%>
	<form action="practise05_game.jsp">
		<input type="submit" value="확인">
	</form> 
	<%
}
else
{

	%>
	<%= input + " 정답입니다!\n"%>
	<%= "당신은 "+ numbean.getCount() +" 번 만에 맞췄습니다!" %>
	<%
		if( list.isEmpty() )
		{
			list.add(new Element(numbean.getName(), numbean.getCount()));
			score_list.setList(list.getList());
		}
		else 
		{
			int size = list.getSize();
			int i;
			for(i = 0 ; i < size ; ++i)
			{
				if ( list.peek(i).getName().compareTo(numbean.getName()) == 0) {
					if( list.peek(i).getCount() > numbean.getCount() )
					{
						list.poll(i);
						list.add(new Element(numbean.getName(),numbean.getCount()));
						score_list.setList(list.getList());
					}
					break;
				}
			}
			if(i == size)
			{
				list.add(new Element(numbean.getName(), numbean.getCount()));
				score_list.setList(list.getList());
			}
		}
	%>
	<form action="practise05_game.jsp">
		<input type="submit" value="한 번 더">
	</form>
	
	<form action="practise05_ranking.jsp">
		<input type="submit" value="확인">
	</form>
	<%
}
%>
</div>
</body>
</html>