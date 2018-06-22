<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch11.Member"%>
    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL Core Library - c:out</title>
</head>
<body>

<h3>&lt;c:out&gt;</h3>

<table border="1" cellpadding=5 cellspacing=0>
  <c:forEach var="m" items="${members}">
    <tr>
    <%-- 표현식
    	<td>
    		<%= (Member) pageContext.getAttribute("m")).getName() %>
    	</td>
    	<td><c:out value="${m.name}" /></td>
    	
     --%>
     
	  <td>${m.name}</td> <%--표현언어 --%>
	  <td><c:out value="${m.email}" escapeXml="false"> <%-- value가 출력할 내용을 지정한다. escapeXml은 필수속성은 아니지만 출력할 내용의 태그같은 것들을 
	  													어떻게 처리할 것인지에 대해 선택을 할 수 있도록 하는 것이다. false로 두어야 태그 효과가 나타나진다. --%>
	  		<div class="warning">email없음</div>
			<font color=red>email 없음</font>
			</c:out>
	  </td>
	</tr>
  </c:forEach>
</table>
</body>
</html>
