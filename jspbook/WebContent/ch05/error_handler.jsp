<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오류 처리</title>
</head>
<body>
<h2>오류 발생</h2>
<p>exception: <%= exception %></p>
<p>exception.getMessage(): <%= exception.getMessage() %></p>
<p>exception.toString(): <%= exception.toString() %></p>

</body>
</html>