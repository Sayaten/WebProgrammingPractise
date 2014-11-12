<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Taste Cookie</title>
</head>
<body>
<h1>Example Cookie</h1>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!= null){
		for(int i = 0 ; i < cookies.length; ++i)
		{
			if(cookies[i].getName().equals("myCookie")){
				%>
				Cookie Name: <%=cookies[i].getName() %><br>
				Cookie Value: <%=cookies[i].getValue() %><br>
				<%
			}
		}
	}
%>
</body>
</html>