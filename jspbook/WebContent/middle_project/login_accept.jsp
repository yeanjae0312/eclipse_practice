<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id ="admin";
	if(id.equalsIgnoreCase(request.getParameter("username"))) {
		session.setAttribute("username", request.getParameter("username"));
		response.sendRedirect("selProduct.jsp");
	}
	else {
%>
	<script type="text/javascript">
		alert("아이디 틀림");
		location.href = "login.jsp";
	</script>
<%
	}
%>
</body>
</html>