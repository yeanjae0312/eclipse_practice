<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sum2</title>
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
	int sum2 = sum;
	
%>


<jsp:include page="sum2_out.jsp">
	<jsp:param name="sum2_out" value="<%= sum2 %>"/>
</jsp:include>


</body>
</html>