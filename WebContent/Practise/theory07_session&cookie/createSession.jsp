<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>���� ��� ���� (���� ����)</title>
</head>
<body>
<%
	String strId="mistarry";
	String strPw="hello";
	
	session.setAttribute("logID","strID");
	session.setAttribute("logPW","strPw");
%>
������ �����Ǿ����ϴ�. <br>
<a href="viewSessionInfo.jsp">���������� Ȯ���ϴ� �������� �̵�</a>
</body>
</html>