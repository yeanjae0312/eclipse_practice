<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ attribute name="begin" %>
<%@ attribute name="end" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr>
<c:forEach var="i" begin="${begin}" end="${end}">
		<c:forEach var="j" begin="1" end="9">
			<c:out value="${i}*${j}=${i*j }"/> &nbsp;
		</c:forEach>
</c:forEach>
