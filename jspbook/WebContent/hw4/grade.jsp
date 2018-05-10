<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hw.hw02.GradeBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="gradelist" class="hw.hw02.GradeBean" scope="application"/>
<jsp:setProperty name="gradelist" property="*"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>grade.jsp</title>
</head>
<body>
<H2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</H2><HR>
폼에서 전달받은 이름과 성적을 JavaBeans GradeBean에 저장 </br>
이름: <%= gradelist.getUsername() %>, 성적: <%= gradelist.getScore() %> <HR>
<H2>JavaBeans GradeBean에 저장된 정보를 조회 출력</H2>
	
	이름 : <jsp:getProperty property="username" name="gradelist" /></br>
	성적: <%= gradelist.getScore() %></br>
	등급: <%= gradelist.getGrade() %></br>
	


</body>
</html>