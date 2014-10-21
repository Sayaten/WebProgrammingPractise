<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	String operator;
	int foperand, soperand, result;
%>
<%
	foperand = Integer.parseInt(request.getParameter("first"));
	soperand = Integer.parseInt(request.getParameter("second"));
	operator = request.getParameter("operator");

	if(operator.equals("+"))
	{
		result = foperand+soperand;
	}
	else if(operator.equals("-"))
	{
		result = foperand-soperand;
	}
	else if(operator.equals("*"))
	{
		result = foperand*soperand;
	}
	else if(operator.equals("/"))
	{
		result = foperand/soperand;
	}
%>
<%=
	foperand + " " + operator + " " + soperand + " = " + result 
%>
<form action="practise02_calc.jsp">
	<input type="submit" value="한 번 더">
</form>
<form action="practise02.jsp">
	<input type="submit" value="끝내기">
</form>
</body>
</html>