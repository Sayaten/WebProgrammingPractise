<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style>
			#input_form{
				width: 250px;
				margin-left: auto;
				margin-right: auto;
			}
			
		</style>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	<%@ page 
		import = "practise03_package.*" 
		import = "java.util.Random"
	%>
		<%
			Random rand = new Random();
			if(application.getAttribute("score_list")==null)
			{
				// score_list : (name, score)
				application.setAttribute("score_list",new PriorityQueue());
			}
			if(session.getAttribute("name") != null)
			{
				session.setAttribute("name",null);
			}
			session.setAttribute( "count", new Integer( 0 ) );
			session.setAttribute( "answer", new Integer( rand.nextInt(100) + 1 ) );
		%>
		<%@ include file="practise04_header.jsp" %>
		<form method="POST" action="practise04_menu.jsp">
			<div id="input_form">
				<input type="text" name="name">
				<input type="submit" value="로그인">
			</div>
		</form>
	</body>
</html>