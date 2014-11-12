<%@ page language="java" contentType="text/html; charset=euc-kr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>세션 사용 예제 (세션 생성)</title>
</head>
<body>
<%
	String strId="mistarry";
	String strPw="hello";
	
	session.setAttribute("logID","strID");
	session.setAttribute("logPW","strPw");
%>
세션이 생성되었습니다. <br>
<a href="viewSessionInfo.jsp">세션정보를 확인하는 페이지로 이동</a>
</body>
</html>