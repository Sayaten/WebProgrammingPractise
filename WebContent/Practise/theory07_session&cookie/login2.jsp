<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>로그인</title>
</head>
<%
	boolean isIDShow = false;
	String id = null;
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length > 0){
		for(int i = 0 ; i < cookies.length ; i++)
		{
			if(cookies[i].getName().equals("id")){
				isIDShow = true;
				id = cookies[i].getValue();
			}
		}
	}
%>
<body>
로그인하세요.<br/>
<form action="loginProcess2.jsp" method="post">
<%
	if(isIDShow){
%>
ID : <input type="text" name="id" value="<%= id %>">
<input type="checkbox" name="idstore" value="store" checked>아이디 기억하기<br/>
<%
	} else {
%>
ID : <input type="text" name= "id">
<input type="checkbox" name="idstore" value="store">아이디 기억하기<br/>
<%
	}
%>
Password : <input type="password" name="pw"><br/>
<input type="submit" value="전송">
</form>
</body>
</html>