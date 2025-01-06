<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//1. 번호에 맞는 폼에 수정되는 내용 이름과 주소를 추출한다.
	//1.get 방식 파라미터 전달되는 수정할 회원의 번호를 얻어오기
	int num=Integer.parseInt(request.getParameter("num"));
	//2. Memberdto를 이용해서 실제 DB에서의 내용 얻어오기
	MemberDao dao=new MemberDao();
	//3. 해당하는 회원의 내용
	MemberDto dto=dao.getData(num);	
	
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
		<form action="${pageContext.request.contextPath}/member/update.jsp" method="post">
			<div>
				<label for="name">이름</label> <input type="text" name="name"
					id="name" value="<%=dto.getName()%>"/>
			</div>
			<div>
				<label for="addr">주소</label> <input type="text" name="addr"
					id="addr" value="<%=dto.getAddr()%>"/>
			</div>
			<button type="submit">수정하기</button>
			

		</form>
	</div>
</body>
</html>