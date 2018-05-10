<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>

<%
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8");
	String product_name;
	product_name = request.getParameter("product_review");
	
	
	// HTML 폼에서 username으로 전달된 값을 가지고 옴 
	//ArrayList list = (ArrayList)session.getAttribute("productlist");
	
	//ArrayList<String>list = (ArrayList<String>)application.getAttribute("productlist");
	
	// productname이 null 이 아닌 경우 세션에 값을 저장
	//if(list != null) {
	//	application.setAttribute("productlist",list);
	//}
	//list.add(product_name);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review.jsp</title>
</head>
<body>
<div align="center">
<H2>리뷰</H2>
<HR>
<form action="review_store.jsp" method="POST">
	<!-- 세션에 저장된 이름 출력 -->
	@<%= product_name %> 
	<input type="text" name="review">
	<input type="submit" value="enter">
</form>
<HR>
</div>
<div align="left">
<UL>
<%
	// application 내장객체를 통해 productlist 이름으로 저장된 ArrayList를 가지고 옴
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("productlist");

	/*
	if(list != null) {
		application.setAttribute("productlist",list);
	}
	*/
	
	//list가 null 이 아닌 경우에만 목록 출력
	if(msgs != null) {
		msgs.add(product_name);
		//application.setAttribute("productlist",msgs);
		out.println(application.getAttribute("product_name"));
		for(String msg : msgs) {
			out.println("<LI>"+msg+"</LI>");
		}
	}
	
%>
</UL>
</div>


</body>
</html>