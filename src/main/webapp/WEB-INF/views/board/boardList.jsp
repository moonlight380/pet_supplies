<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
/* .form-control-sm, .form-control-sm:focus, .custom_select select.form-control-sm,
	.custom_select select.form-control-sm:focus {
	height: 30px;
} */
</style>

<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/css.jsp"></c:import>

</head>

<body>

	<c:import url="../template/header.jsp"></c:import>

	<div class="container">

		<c:if test="${board eq 'notice'}">
			<h2>공지</h2>
		</c:if>
		<c:if test="${board eq 'qna'}">
			<h2>QnA</h2>
		</c:if>

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

		<div>
			<ul class="pagination">
				<c:if test="${pager.curBlock gt 1}">
					<li><a
						href="./${board}List?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">이전</a></li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><a
						href="./${board}List?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
				</c:forEach>
				<c:if test="${pager.curBlock lt pager.totalBlock}">
					<li><a
						href="./${board}List?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">다음</a></li>
				</c:if>
			</ul>
		</div>

		<c:catch>
			<c:choose>
				<c:when test="${board eq 'notice'}">
					<c:if test="${member.id eq 'admin'}">
						<div>
							<a href="./${board}Write" class="btn btn-danger">WRITE</a>
						</div>
					</c:if>
				</c:when>
				<c:otherwise>
					<c:if test="${not empty member}">
						<div>
							<a href="./${board}Write" class="btn btn-danger">WRITE</a>
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
		</c:catch>

	</div>

	<div class="form-group row justify-content-center">
		<div class="w100" style="padding-right: 10px">
			<select class="form-control form-control-sm" name="searchType"
				id="searchType">
				<option value="title">제목</option>
				<option value="Content">본문</option>
				<option value="reg_id">작성자</option>
			</select>
		</div>
		<div class="w300" style="padding-right: 10px">
			<input type="text" class="form-control form-control-sm"
				name="keyword" id="keyword">
		</div>
		<div>
			<button class="btn btn-sm btn-primary" name="btnSearch"
				id="btnSearch">검색</button>
		</div>
	</div>

	<c:import url="../template/footer.jsp"></c:import>

</body>
</html>