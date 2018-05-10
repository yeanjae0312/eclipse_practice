<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<TITLE>ch05 :forward_action 테스트</TITLE></HEAD>
<BODY>
<H2>forward_action.jsp 에서footer.jsp 호출</H2>
<HR>
forward_action.jsp 에서 출력한 메시지 입니다.<BR>

<jsp:forward page="footer.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="000-000-0000" />
</jsp:forward>
</BODY>
</HTML>