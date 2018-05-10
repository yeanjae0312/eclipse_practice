<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>
<HTML>
<HEAD>
<title>selProduct.jsp</title>
</head>
<%
	String id = null;
	
	if(session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	else {
		id = (String)session.getAttribute("username");
		
	}
%>
<%
	request.setCharacterEncoding("UTF-8"); // euc-kr
	session.setAttribute("username",request.getParameter("username"));
	
	
%>
<body>
<div align="center">
	<H2>상품선택</H2>
	<HR>
	<%=id%>님 환영합니다!!!!
	<HR>
	<form name="form1" method="POST" action="add.jsp">
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		<SELECT name="count">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
		</SELECT>
		<input type="submit" value="추가"/></br>
	</form>
	
	<form name="form2" method="POST" action="review.jsp">
		<SELECT name="product_review">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		<input type="submit" value="리뷰"/></br>

	</form>
	
	
	<a href="checkOut.jsp">장바구니</a></BR></br>
	<a href="logout.jsp">로그아웃</a>
</div>
</body>
</html>




