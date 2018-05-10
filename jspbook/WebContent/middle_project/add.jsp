<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 20151076 이연재 --%>
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add.jsp</title>
</HEAD>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String productname = request.getParameter("product");
	String scount = request.getParameter("count");
	
	int c = Integer.parseInt(scount);
	session.setAttribute("c", c);
	
	ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
	ArrayList<Integer> c_list = (ArrayList)session.getAttribute("countlist");
	
	if(list == null) {
		list = new ArrayList<String>();
		session.setAttribute("productlist",list);
		
	}
	
	list.add(productname);
	
	if(c_list == null) {
		c_list = new ArrayList<Integer>();
		session.setAttribute("countlist",c_list);
	}
	c_list.add(c);
	
	

%>
	<script>
		alert("<%=productname %> 이(가) <%=scount%>개 추가 되었습니다.!!");
		history.go(-1);
	</script>
	
</body>
</html>