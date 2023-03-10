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
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		//id : kk, pass : 1234인 경우에만 세션 생성
		if(id.equals("kk") && pass.equals("1234")) {
			session.setAttribute("id", id);
		} else {
			session.invalidate();
		}
	%>
<a href="sub2/winner.jsp">당첨자 확인</a>   <!-- 아이디와 패스워드가 kk, 1234가 아닌 사람들은 해당 페이지를 볼 수 없게 해야 함 -> 필터를 통해 페이지에 대한 권한 관리가 필요 -->
</body>
</html>