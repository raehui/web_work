<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//서블릿의 서비스 메서드의 안쪽 영역이랑 같은 역할
	//내장 객체
	String fortuneToday="서쪽으로 가면 귀인을 만날 수 있어요!";
	String msg=request.getParameter("msg");
	//콘솔창에 출력
	System.out.println(msg);
	
	
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send.jsp</title>
</head>
<body>
	<h1>나는 jsp 페이지</h1>
	<p>오늘의 운세: <strong><%out.print(fortuneToday);%></strong></p>
	<p>오늘의 운세: <strong><%=fortuneToday%></strong></p>
	
	
</body>
</html>
