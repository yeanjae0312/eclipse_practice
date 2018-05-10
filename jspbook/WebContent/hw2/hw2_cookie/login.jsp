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
	String name = "yy";
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))) {
		Cookie cookie = new Cookie("memName", id);
		cookie.setMaxAge(2*60);
		response.addCookie(cookie);
		response.sendRedirect("member.jsp");
	}
	else { 
%>

	<script type="text/javascript">
		alert("아이디 or 패스워드 틀림");
		location.href = 'login.html';
	</script>
<%
	}
%>

</body>
</html>