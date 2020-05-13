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
<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col border m-5">
<form class="form-signin" action="./memberLogin" method="post">
					<div class="text-center">
					<a href="${pageContext.request.contextPath}">
					<img class="m-5 mb-4" 
						src="${pageContext.request.contextPath}/resources/images/logo_dark.png"
						alt="" width="182" height="47">
					</a>
					</div>
						
						 <input type="text" id="id" name="id" class="form-control" placeholder="아이디 입력" required autofocus value="${cookie.cId.value}">
						 <input type="password" id="pw" name="pw" class="form-control mt-2 mb-2" placeholder="비밀번호 입력" required>
					<button class="btn btn-lg btn-block" id="btn" type="submit">로그인</button>
					<div class="checkbox mt-3">
						<label class="ml-0"> <input type="checkbox" value="remember-me">
							Remember me
						</label>
					</div>
					<div class="text-center">
					<a href="${pageContext.request.contextPath}/member/memberJoin" class="member">회원가입</a>
					</div>
				</form>
			</div>
			<div class="col"></div>
		</div>
	</div>



<script type="text/javascript">
	$("#btn").click(function() {
		alert("click");
	});
	document.getElementById('btn').style.backgroundColor = '#ff9999';
	document.getElementById('btn').style.color = 'white';
	$('.member').css({'color':'gray','font-size':'5px'});
	
</script>

</html>