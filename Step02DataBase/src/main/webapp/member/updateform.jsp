<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼에 수정되는 내용 이름과 주소를 추출한다.
	MemberDao dao=new MemberDao();
	MemberDto dto=new MemberDto();
	//2. 기존에 있던 내용을 불러오기
	int num=Integer.parseInt(request.getParameter("num"));
	String name=dto.getName();
	String addr=dto.getAddr();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/updateform.jsp</title>
</head>
<body>
	<h1>기존 회원 정보 조회</h1>
	<div class="container">
		<h1>회원 수정폼</h1>
		<form action="${pageContext.request.contextPath}/member/update.jsp" method="get">
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" placeholder="이름 입력..." />
		</div>
		
		</form>
	</div>
</body>
</html>