<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
<%
	String id = "admin";
	String pw = "1234";
	if(id.equalsIgnoreCase(request.getParameter("id")) && pw.equalsIgnoreCase(request.getParameter("pw"))) {
		session.setAttribute("s_id", request.getParameter("id"));
		session.setAttribute("s_pw", request.getParameter("pw"));
		response.sendRedirect("member.jsp");
	}
	else {
%>
	<script type="text/javascript">
		alert("아이디 or 패스워드 틀림");
		location.href = "login.html";
	</script>
<%
	}
%>

</body>
</html>