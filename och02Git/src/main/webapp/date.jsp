<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	//단독 수행 가능
	GregorianCalendar gc = new GregorianCalendar();
	String date = String.format("%TF %TT", gc, gc);  //TF : 날짜, TT : 시간
	%>
	
	<!-- Expression -->
	오늘은 <%=date %> 입니다
</body>
</html>