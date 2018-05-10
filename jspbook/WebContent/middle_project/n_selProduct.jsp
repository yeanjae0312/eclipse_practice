<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>
<HTML>
<HEAD>
<title>n_selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr
	
%>
<body>
<div align="center">
	<H2>상품조회</H2>
	<HR>
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT></br></br>
		
	<a href="login.jsp">첫화면으로 돌아가기</a>
</div>
</body>
</html>




