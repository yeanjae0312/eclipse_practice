<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hw.hw02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="gm" class="hw.hw02.GradeManager" scope="application"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>grade_list.jsp</title>
</head>
<body>
<div align=center>
<H2>목록</H2>
<HR>
<a href="grade.html">추가</a><P>
</div>

<div align=left>
<HR>
<%
	for(GradeBean gb : gm.getGradeList()) {
%>
	이름: <%=gb.getUsername() %></br>
	성적: <%=gb.getScore() %></br>
	등급: <%=gb.get_Grade() %></br>
	</br>

<%	
	}
%>
</div>

</body>
</html>