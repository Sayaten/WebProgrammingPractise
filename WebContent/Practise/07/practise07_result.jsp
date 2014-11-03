<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#result{
		text-align:center;
		margin-left:auto;
		margin-right:auto;
		width:500px;
	}
</style>
</head>
<body>
	<%@ include file="practise07_header.jsp" %>
	<div id="result">
	<h2>검색한 결과입니다.</h2>
	<hr width="400px" align="center">
	<% request.setCharacterEncoding("UTF-8"); %>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/jspdb";
	try{
		Class.forName(jdbc_driver);
		
		conn = DriverManager.getConnection(jdbc_url,"jspexam","jspexam");
		
		String sql = "select * from address";
		String name = request.getParameter("name");
		
		if(name.compareTo("") != 0)
		{
			sql += " where name='";
			sql += name;
			sql += "';";
		}

		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			out.print(rs.getString("name")+ "\t" + rs.getString("phone") + "\t" +
						rs.getString("email"));
			%>
			<form action="practise07_delete.jsp">
				<input type="hidden" name="name" value="<%= rs.getString("name") %>">
				<input type="hidden" name="phone" value="<%= rs.getString("phone") %>">
				<input type="hidden" name="param" value="<%= request.getParameter("name") %>">
				<input type="submit" value="삭제">
			</form>
			<hr width="400px" align="center">
			<%
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
	<form action="./practise07.jsp">
		<input type="submit" value="확인">
	</form>
	</div>
</body>
</html>