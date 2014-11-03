<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
PreparedStatement pstmt = null;

String jdbc_driver = "com.mysql.jdbc.Driver";
String jdbc_url = "jdbc:mysql://127.0.0.1/jspdb";

try{
	Class.forName(jdbc_driver);
	
	conn = DriverManager.getConnection(jdbc_url,"jspexam","jspexam");
	
	String sql = "delete from address where name='";
	sql += request.getParameter("name");
	sql += "' and phone='";
	sql += request.getParameter("phone");
	sql += "';";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<jsp:forward page="./practise07_result.jsp">
	<jsp:param name="name" value='<%= request.getParameter("param") %>' />
</jsp:forward>
</body>
</html>