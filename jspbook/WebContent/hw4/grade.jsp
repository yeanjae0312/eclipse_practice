<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hw.hw02.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="grade" class="hw.hw02.GradeBean" scope="application"/>
<jsp:setProperty name="grade" property="*"/>
<jsp:useBean id="gm" class="hw.hw02.GradeManager" scope="application"/>
<%
	gm.add(grade);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>grade.jsp</title>
</head>
<body>
<H2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</H2><HR>
폼에서 전달받은 이름과 성적을 JavaBeans GradeBean에 저장 </br>
이름: <jsp:getProperty property="username" name="grade" />, 성적: <%= grade.getScore() %> <HR>
<H2>JavaBeans GradeBean에 저장된 정보를 조회 출력</H2>
	
	이름 : <%= grade.getUsername() %></br>
	성적: <%= grade.getScore() %></br>
	등급: <%= grade.getGrade() %></br>
<HR>
<a href="grade_list.jsp">목록 보기</a>

</body>
</html>