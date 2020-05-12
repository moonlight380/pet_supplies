<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/css.jsp"></c:import>
</head>
<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h2>공지사항</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>ID</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.num}</td>
						<td><c:catch>
								<!-- for(int i=0;i<=0;i++) -->
								<c:forEach begin="1" end="${vo.depth}">
					--
					<!-- &nbsp;&nbsp; -->
								</c:forEach>
							</c:catch> <a href="./${board}Select?num=${vo.num}">${vo.title}</a></td>
						<td>${vo.id}</td>
						<td>${vo.regDate}</td>
						<td>${vo.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<button type="button" class="btn btn-info">Info</button>
	</div>

</body>
</html>