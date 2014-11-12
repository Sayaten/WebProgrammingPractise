<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cook Cookie</title>
</head>
<%
	Cookie cookie = new Cookie("myCookie", "Apple");
	cookie.setMaxAge(60);
	response.addCookie(cookie);
%>
<body>
<h1>Example Cookie</h1>
<P>
쿠기를 만듭니다. <br>
쿠기 내용은 <a href="tasteCookie.jsp">여기로</a>!!!
</P>
</body>
</html>