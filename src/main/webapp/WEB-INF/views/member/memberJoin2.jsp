<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
  <h2>Join form</h2>
  <form action="./memberJoin" method="post" enctype="multipart/form-data">
  	<div class="text-center">
	<a href="${pageContext.request.contextPath}">
	<img class="m-5 mb-4" 
		src="${pageContext.request.contextPath}/resources/images/logo_dark.png"
		alt="" width="182" height="47">
	</a>
	</div>
					
     <div class="form-group">
      <label for="id">아이디:</label>
      <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
    </div>
  
    <div class="form-group">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pw">
    </div>
    
    <div class="form-group">
      <label for="name">이름:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
    </div>
    
    <div class="form-group">
      <label for="Age">생년월일:</label>
      <input type="text" class="form-control" id="age" placeholder="Enter Age" name="age">
    </div>
    
    <div class="form-group">
      <label for="Sex">성별:</label>
      <input type="text" class="form-control" id="sex" placeholder="Enter Sex" name="sex">
    </div>
    
     <div class="form-group">
      <label for="num">휴대전화:</label>
      <input type="text" class="form-control" id="phone" placeholder="Enter Phone" name="phone">
    </div>
    
     <div class="form-group">
      <label for="num">주소:</label>
      <input type="text" class="form-control" id="address" placeholder="Enter Address" name="address">
    </div>
    
    <div class="form-group">
      <label for="email">이메일:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    
    
    <button type="submit" class="btn btn-default">가입하기</button>
    
  </form>
</div>

	<script type="text/javascript">
	
		$("#id").﻿blur(function() {
			var id = $(this).val();
			
			$.ajax({
				type: "post",	//method 형식 
				url : "./memberIdCheck",//URL 주소
				data: {
					id:id
				},	//parameter
				success : function(data){
					alert("가능한 아이디입니다");
				},
				error	: function() {
					
					
				}
				
			});


		});
	
	
	</script>


</body>
</html>