<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkOut.jsp</title>
</HEAD>
<body>
<div align="center">
<H2>장바구니</H2>
선택한 상품 목록
<HR>
<%
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	ArrayList clist = (ArrayList)session.getAttribute("countlist");
	
	
	if(list == null) {
		out.println("선택한 상품이 없습니다.!!!");
	}
	else {
		
		for(int i=0; i<list.size(); i++) {
			out.print(list.get(i)+" ");
			out.println(clist.get(i)+"<BR>");
		
		}
		
	}
	
	if(clist == null) {
		out.println("선택한 상품이 없습니다.!!!");
	}
	
	
%>
</br>
<a href="logout.jsp">로그아웃</a>
</div>
</body>
</html>