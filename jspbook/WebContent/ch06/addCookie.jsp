<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키만들기 예제</title>
</head>
<body>
   <h1>쿠키만들기 예제</h1>
   <hr>
   Cookie cookie = new Cookie("user", "hong");<br />
   cookie.setMaxAge(2*60); //초 단위<br /> 
   response.addCookie(cookie);
   <%
      Cookie cookie = new Cookie("user", "hong");
      cookie.setMaxAge(2*60);
      response.addCookie(cookie);
   %>
   <hr><a href = "addTimeCookie.jsp">현재 접속 시각을 쿠키로 추가</a>
   
   
</body>
</html>
