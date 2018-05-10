<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>현재시각을 쿠키로 저장</title>
</head>
<body>

<h1>현재 시각을 쿠키로 저장</h1>
      String now = new java.util.Date().toString();<br />
      Cookie cookie = new Cookie("lastConnect", now); <br />
      cookie.setMaxAge(10);<br />
      response.addCookie(cookie);<br />
   <% 
      String now = new java.util.Date().toString();
      Cookie cookie = new Cookie("lastConnect", URLEncoder.encode(now, "UTF-8"));
      cookie.setMaxAge(10);
      response.addCookie(cookie);
   %>   
   <hr><a href = "getCookie.jsp">쿠키 조회</a>
      

</body>
</html>
