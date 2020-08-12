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

	<div class="path" style="display: block; float: right; position: relative; height: auto;">
		<ol><li style="display: inline;"><a href="${pageContext.request.contextPath}">Home > </a></li>
			<li style="display: inline;" title="현재 위치"><strong>로그인</strong></li>
		</ol>
	</div>

<div style="border-bottom: 3px solid black; margin-top: 100px; text-align: center;">
<h1 style=" margin-bottom: 30px; font-weight: bold; font-size: 36px;">로그인</h1>

</div>

<div class="row" style=" margin-top: 50px;">
<div class="col"></div>
<div class="col border m-7" style="height: 400px;">

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
		
	<div class="checkbox mt-3">
		<label class="ml-0" style="font-size: small; font-style: inherit;"> <input type="checkbox" value="remember-me">
			아이디 저장
		</label>
	</div>
	
	<button class="btn btn-lg btn-block" id="btn" type="submit">로그인</button>
	
	<div class="text-center" style="background-color: #ffffff; border: 1px solid #d7d5d5; font-size:medium; height: 50px; margin-top: 15px;">
		<a href="${pageContext.request.contextPath}/member/memberJoin" class="member">회원가입</a> |
		<a href="${pageContext.request.contextPath}/member/memberID">아이디 찾기</a> |
		<a>비밀번호 찾기</a>
	</div>
	
</form>

 <form action="./kakaoLogin" method="get">
	<div class="kakaoLogin" style="margin-top: 50px;">
	
	<c:if test="${member.id eq null}">
	<a href="https://kauth.kakao.com/oauth/authorize?
			client_id=ccfe4411fa1bfc86a27222555a4dba8c
			&redirect_uri=http://localhost:8080/p1/member/kakaoLogin
			&response_type=code">
		<img src="${pageContext.request.contextPath}/resources/images/kakao_login_btn_large_wide.png">
	</a>
	</c:if>
    
	
	</div>

</form> 
	
	<c:if test="${member.id ne null}">
        <input type="button" value="로그아웃" onclick="location.href='kakaoLogout'">
    </c:if>
</div>
<div class="col"></div>
</div>
</div>



<script type="text/javascript">
	/* kakao Login  */
	
	$("#btn").click(function() {
		alert("click");
	});
	document.getElementById('btn').style.backgroundColor = '#ff9999';
	document.getElementById('btn').style.color = 'white';
	$('.member').css({'color':'gray','font-size':'5px'});
	
</script>

</html>