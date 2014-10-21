<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="login" class="jspexam.beans.LoginBeans" scope="page" />
<<jsp:setProperty property="*" name="login"/>
<html>
<head>
<title>login.jsp</title>
</head>
<body>
<div align=center>
	<h2>로그인 예제</h2>
	<hr>
	<%
		if(!login.checkUser())
		{
			out.println("로그인 실패 !!");
		}
		else
		{
			out.println("로그인 성공 !!");
		}
	%>
	
	<hr>
	사용자 아이디 : <jsp:getProperty property="userid" name="login"/><br>
	사용자 패스워드 : <jsp:getProperty property="passwd" name="login"/>
</div>
</body>
</html>