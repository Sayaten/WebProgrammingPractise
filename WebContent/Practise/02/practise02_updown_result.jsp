<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.util.*" %>
<%!
	Random rand = new Random();
	int answer = rand.nextInt(100)+1;
	int count = 0, input;
%>

<%
input = Integer.parseInt(request.getParameter("input"));
count++;
if(input < answer)
{
	%>
	<%= input +"보다 큽니다"%>
	<form action="practise02_updown.jsp">
		<input type="submit" value="확인">
	</form>
	<%
}
else if(input > answer)
{

	%>
	<%= input +"보다 작습니다"%>
	<form action="practise02_updown.jsp">
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
	count = 1;
	answer = rand.nextInt(100)+1;
	 %>
	<form action="practise02_updown.jsp">
		<input type="submit" value="한 번 더">
	</form>
	
	<form action="practise02.jsp">
		<input type="submit" value="확인">
	</form>
	<%
}
%>
</body>
</html>