<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String name="";
	
	try{
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("memName")) {
					name=cookies[i].getValue();
				}
			}
			
			if(name.equals("")) {
				response.sendRedirect("login.html");
			}
		}
		else {
			response.sendRedirect("login.html");
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>member.jsp</title>
</head>
<body>

<h2>로그인한 회원들만 볼 수 있는 페이지입니다.</h2><hr>
	환영합니다 <%=name %> 회원님! <br>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>