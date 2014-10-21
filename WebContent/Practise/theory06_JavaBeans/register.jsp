<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="jspexam.beans.Member" />
<jsp:setProperty property="*" name="member"/>
<jsp:setProperty property="registerDate" name="member" value="<%= new Date() %>"/>
<%
	member.setPassword(request.getParameter("passwd"));
	String realPath = application.getRealPath("/member_"+member.getId());
	FileOutputStream fos = new FileOutputStream(realPath);
	ObjectOutputStream oos = new ObjectOutputStream(fos);
	oos.writeObject(member);
	oos.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>가입 처리</title>
</head>
<body>
회원 가입 처리 완료 <br>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>ID</td>
			<td><jsp:getProperty property="id" name="member"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="member"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="member"/></td>
		</tr>
		<tr>
			<td>가입일시</td>
			<td><jsp:getProperty property="registerDate" name="member"/></td>
		</tr>
		</table>
		<a href="loginMember.html">로그인</a>
</body>
</html>