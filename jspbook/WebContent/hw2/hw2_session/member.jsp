<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String id = null;
	String pw = null;
	if(session.getAttribute("s_id") == null | session.getAttribute("s_pw") == null) {
		response.sendRedirect("login.html");
	}
	else {
		id = (String)session.getAttribute("s_id");
		pw = (String)session.getAttribute("s_pw");
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member.jsp</title>
</head>
<body>
<h2>로그인한 회원들만 볼 수 있는 페이지입니다.</h2><hr>
	어서오세요 <%=id %> 회원님.<br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>