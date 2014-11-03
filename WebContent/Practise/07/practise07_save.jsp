<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	
	String sql = "insert into address values(?,?,?)";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, request.getParameter("name"));
	pstmt.setString(2, request.getParameter("phone"));
	pstmt.setString(3, request.getParameter("email"));
	
	if(request.getParameter("name") != null)
	{
		pstmt.executeUpdate();
	}
	pstmt.close();
	conn.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<% response.sendRedirect("practise07.jsp"); %>
</body>
</html>