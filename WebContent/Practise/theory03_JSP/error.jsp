<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>에러 페이지</title>
</head>
<body>
<H2>처리중 문제가 발생했습니다</H2>
<table>
<tr bgcolor="pink"><td>
관리자에게 문의해 주세요..<br>
빠른시일내 복구하겠습니다.
<%= exception.getMessage() %>
<HR>
</td></tr>
</table>
</body>
</html>