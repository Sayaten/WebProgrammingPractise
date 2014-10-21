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
<%!
	Random rand = new Random();
	int answer = rand.nextInt(100)+1;
	int count = 0, input;
%>
<%@ include file="practise03_header.jsp" %>
<div id="result">
<%
input = Integer.parseInt(request.getParameter("input"));
count++;
if(input < answer)
{
	%>
	<%= input +"보다 큽니다"%>
	<form action="practise03_game.jsp">
		<input type="submit" value="확인">
	</form>
	<%
}
else if(input > answer)
{

	%>
	<%= input +"보다 작습니다"%>
	<form action="practise03_game.jsp">
		<input type="submit" value="확인">
	</form> 
	<%
}
else
{

	%>
	<%= input + " 정답입니다!\n"%>
	<%= "당신은 "+count+" 번 만에 맞췄습니다!" %>
	<%
		if( ( (PriorityQueue)application.getAttribute("score_list") ).isEmpty() )
		{
			( (PriorityQueue)application.getAttribute("score_list") ).add(new Element((String)session.getAttribute("name"), count));
		}
		else 
		{
			int size = ( (PriorityQueue)application.getAttribute("score_list") ).getSize();
			int i;
			for(i = 0 ; i < size ; ++i)
			{
				if ( ( (PriorityQueue) application.getAttribute("score_list") ).peek(i).getName().
						compareTo((String)session.getAttribute("name")) == 0) {
					if( ( (PriorityQueue) application.getAttribute("score_list") ).peek(i).getCount() > count )
					{
						( (PriorityQueue) application.getAttribute("score_list") ).poll(i);
						( (PriorityQueue) application.getAttribute("score_list") ).add(new Element((String)session.getAttribute("name"),count));
					}
					break;
				}
			}
			if(i == size)
			{
				( (PriorityQueue) application.getAttribute("score_list") ).add(new Element((String)session.getAttribute("name"), count));
			}
		}

		count = 0;
		answer = rand.nextInt(100) + 1;
	%>
	<form action="practise03_game.jsp">
		<input type="submit" value="한 번 더">
	</form>
	
	<form action="practise03_ranking.jsp">
		<input type="submit" value="확인">
	</form>
	<%
}
%>
</div>
</body>
</html>