<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="jspexam.beans.Member" %>
<%@ page import="java.io.*" %>
<%
	String storedID = null;
	String storedPW = null;
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	try
	{
		String realPath = application.getRealPath("/member_"+id);
		FileInputStream fis = new FileInputStream(realPath);
		if(fis != null)
		{
			ObjectInputStream ois = new ObjectInputStream(fis);
			Member storedMember = (Member) ois.readObject();
			storedID = storedMember.getId();
			storedPW = storedMember.getPassword();
			ois.close();
		}
		if (id.equals (storedID) && pw.equals(storedPW))
		{
			session.setAttribute("MasterLoginID", id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>로그인 처리</title>
</head>
<body>
로그인에 성공했습니다. <br>
<a href="./theory06_main.jsp">메뉴로 돌아가기
</a>
<%
	} else if (id.equals(storedID)){
%>
<script>
alert("패스워드가 다릅니다.");
history.go(-1);
</script>
<%
	} else {
%>
<script>
alert("로그인 ID가 다릅니다.");
history.go(-1);
</script>
<%
	}
	} catch (Exception e) {
%>
<script>
alert('로그인 ID가 다릅니다.==><%= storedID %>');
history.go(-1);
</script>
<% } %>
</body>
</html>