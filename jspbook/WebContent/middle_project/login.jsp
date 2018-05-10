<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login.jsp</title>
</head>
<body>


<div align="center">
	<H2>로그인</H2>
	<form name="form1" method="POST" action="login_accept.jsp">
		ID : <input type="text" name="username"/></br></br>
		PASSWORD : <input type="password" name="password"/></br></br>
		<input type="submit" value="회원 로그인"/>
	</form><HR>
	
	<form name="form2" action="n_selProduct.jsp">
		<input type="submit" value="비회원 로그인"/>
	</form>
</div>
</body>

</html>














