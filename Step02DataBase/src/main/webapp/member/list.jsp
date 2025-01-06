<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//MemberDao 객체를 이용해서 회원 목록 얻어오기
	MemberDao dao=new MemberDao();
	List<MemberDto>list=dao.getList();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/list.jsp</title>
</head>
<body>
	<div class="container">
		<a href="insertform.jsp">회원추가</a>
		<a href="/Step02DataBase/member/insertform.jsp">회원추가2</a>
		<br>
		<!--하드코딩을 하지않고 밑에 경우로 작성해서 자동으로 변경해서  -->
		<a href="${pageContext.request.contextPath}/member/insertform.jsp">회원추가3</a>
		<h1>회원 목록입니다.</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<!--Connection , MemberDto, MemberDao
					Connection연결은 서버에 맡겨야 함
				-->

				<%for(MemberDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum()%></td>
					<td><%=tmp.getName()%></td>
					<td><%=tmp.getAddr()%></td>
					<td><a href="updateform.jsp">수정</a></td>
					<!-- 삭제하고 싶은 번호를 달고가기 -->
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
				<%}%>
			</tbody>
		</table>
	</div>
</body>
</html>