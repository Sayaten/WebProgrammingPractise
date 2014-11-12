<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%
	String storedID = "MasterID", storedPW = "MasterPassword";
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if (id.compareTo(storedID) == 0 && pw.compareTo(storedPW) == 0){
			//&& pw.equals(storedPW)){
		session.setAttribute("MasterLoginID", id);
%>
<html>
<head>
<title>로그인 처리</title>
</head>
<body>
로그인에 성공했습니다. <br/><br/>
<a href="loginCheck2.jsp">로그인 체크</a>
</body>
</html>
<%
		String IDStore = request.getParameter("idstore");
		if (IDStore != null && IDStore.equals("store")) {
			Cookie cookie = new Cookie("id", id);
			response.addCookie(cookie);
			out.println("<a href='login2.jsp'>로그인 화면 다시 보기</a>");
		}
	} else if (id.compareTo(storedID) == 0) {//(id.equals(storedID)) {
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
%>