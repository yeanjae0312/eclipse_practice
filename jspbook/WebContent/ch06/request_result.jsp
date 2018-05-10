<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch06 : request_result.jsp</title>
</head>
<body>
<div align="center">
<H2>request 테스트결과 -1</H2>

<HR>
<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td>이름</td>
<td><%=request.getParameter("username") %></td>
<tr>
<td>직업</td>
<td><%=request.getParameter("job") %></td>
<tr>
<td>관심분야</td>
<td>
<%
	// getParameterValues 메서드를 이용해 "faborite" 로 설정된 form의 체크박스 값들을 모두 읽어옴.
	String favorites[] = request.getParameterValues("favorite");
/*
	// 배열의 크기만큼 루프를 
	for(int i=0; i<favorites.length; i++) {
		out.println(fovorites[i]+"<BR>");
	}
*/

	for(String favorite : favorites ) {
		out.println(favorite+"<BR>");
	}
%>

</table>
</div>

</body>
</html>