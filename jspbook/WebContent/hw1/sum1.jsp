<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인터넷 프로그래밍 과제 sum1</title>
</head>
<body>
<%-- 20151076 이연재 --%>
<%@ include file="header.jsp" %>
<HR>
<%
	int sum=0;
	for(int i=1; i<=100; i++) {
		sum += i;
	}
	int sum1 = sum;
%>

<%= "1부터 100까지의 합은" +sum1+ "입니다" %> <BR>


</body>
</html>