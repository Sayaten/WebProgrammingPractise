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
	<%= input +"���� Ů�ϴ�"%>
	<form action="practise02_updown.jsp">
		<input type="submit" value="Ȯ��">
	</form>
	<%
}
else if(input > answer)
{

	%>
	<%= input +"���� �۽��ϴ�"%>
	<form action="practise02_updown.jsp">
		<input type="submit" value="Ȯ��">
	</form>
	<%
}
else
{

	%>
	<%= input + " �����Դϴ�!\n"%>
	<%= "����� "+count+" �� ���� ������ϴ�!" %>
	<%
	count = 1;
	answer = rand.nextInt(100)+1;
	 %>
	<form action="practise02_updown.jsp">
		<input type="submit" value="�� �� ��">
	</form>
	
	<form action="practise02.jsp">
		<input type="submit" value="Ȯ��">
	</form>
	<%
}
%>
</body>
</html>