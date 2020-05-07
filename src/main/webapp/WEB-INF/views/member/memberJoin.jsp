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
<style type="text/css">


</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div id="wrap">
   <div id="container">
        <div id="contents">
            
<div class="template_width">
	<div class="path">
		<span>현재 위치</span>
		<ol><li><a href="/">Home</a></li>
			<li title="현재 위치"><strong>회원 가입</strong></li>
		</ol></div>
	
<div class="container">
  <h2>Join form</h2>
  <form action="./memberJoin" method="post">
	
		<div class="row">
			<div class="col-sm-2 border"></div>
			<div class="col border m-5">
					<div class="text-center">
					<a href="${pageContext.request.contextPath}">
					<img class="m-5 mb-4" 
						src="${pageContext.request.contextPath}/resources/images/logo_dark.png"
						alt="" width="182" height="47">
					</a>
					</div>
			</div>
			<div class="col-sm-2 border"></div>
		</div>
	
		
		
	<div class="container" id="result">	
		<div class="row">
			<div class="col-sm-2 border"></div>

			<div class="col border ml-5 mr-5">
				<div class="row">
					<input type="checkbox"  hidden="hidden"  id="checkAll" class="checkAll2">
					<div class="col-sm-1 m-2">
						<label for="checkAll"> <span> <i
								class='far fa-check-circle ac m-2 nocheck checkbox'
								style='font-size: 20px; color: gray' id='img'></i>
						</span>
						</label>
					</div>
					<div class="col">
						<label for="checkAll">
						<span class="ac nocheck checkcon" id="contents"> 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션
							안내 메일 수신(선택)에 모두 동의합니다. </span>
						</label>
					</div>
				</div>
				
				
				<div class="row">
					<input type="checkbox"  hidden="hidden" class="check01" id="first">	
					<div class="col-sm-1 m-2">
						<label for="first"> <span> <i
								class='far fa-check-circle ac m-2 nocheck checkbox'
								style='font-size: 20px; color: gray' title="first_img"></i>
						</span>
						</label>
					</div>
					<div class="col mt-3">
						<label for="first">
							<span class="ac con nocheck checkcon" title="first_con"> 이용약관 동의</span>
						</label>
					</div>
				</div>				
				
				
				<div class="row">
					<input type="checkbox"  hidden="hidden" class="check01" id="second">
					<div class="col-sm-1 m-2">
						<label for="second"> <span> <i
								class='far fa-check-circle ac m-2 nocheck checkbox'
								style='font-size: 20px; color: gray' title="second_img"></i>
						</span>
						</label>
					</div>
					<div class="col mt-3">
					
						<label for="second">
							<span class="ac con nocheck checkcon" id="scon" title="second_con"> 개인정보 수집 및 이용 동의</span>
						</label>
					</div>
				</div>


				<div class="row">
					<input type="checkbox"   hidden="hidden" class="check01" id="third">
					<div class="col-sm-1 m-2">
						<label for="third"> <span> <i
								class='far fa-check-circle ac m-2 nocheck checkbox'
								style='font-size: 20px; color: gray' title="third_img"></i>
						</span>
						</label>
					</div>
					<div class="col mt-3">
					
						<label for="third">
							<span class="ac con nocheck checkcon" id="scon" title="third_con"> 위치정보 이용약관 동의</span>
						</label>
					</div>
				</div>		

				

				<div class="row">
					<input type="checkbox"  hidden="hidden" class="check01" id="forth">
					<div class="col-sm-1 m-2">
						<label for="forth"> <span> <i
								class='far fa-check-circle ac m-2 nocheck checkbox'
								style='font-size: 20px; color: gray' title="forth_img"></i>
						</span>
						</label>
					</div>
					<div class="col mt-3">
					
						<label for="forth">
							<span class="ac con nocheck checkcon" id="scon" title="forth_con"> 이벤트 등 프로모션 알림 메일 수신</span>
						</label>
					</div>
				</div>	
											
			</div>

			<div class="col-sm-2 border"></div>
		
		</div>
		
		
	</div>
		
<div class="path">
<h3 class=" ">기본정보</h3>
<table class="table table-bordered" summary="" style="margin-bottom: -1px;">
<caption>회원가입</caption>
	<colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr class="">
<th scope="row">회원구분 <img src="../resources/images/ico_required.gif" alt="필수"></th>
<td><input id="member_type0" name="member_type" value="p" type="radio" checked="checked"><label for="member_type0">개인회원</label>
<input id="member_type1" name="member_type"value="c" type="radio" style="display: none;"><label for="member_type1" style="display: none;">사업자회원</label></td>
</tr>

<div class="ec-base-table typeSimple typeWrite">
<table class="table table-bordered" border="1" summary="">
<caption>회원 기본정보</caption>
<colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr>
<th scope="row">아이디 <img src="../resources/images/ico_required.gif" alt="필수"></th>
<td><input id="member_id" name="id" class="inputTypeText" placeholder="" value="" type="text"> <span id="idMsg"></span> (영문소문자/숫자, 4~16자)</td>
 </tr>
<tr>
<th scope="row">비밀번호 <img src="../resources/images/ico_required.gif" alt="필수"></th>
 <td><input id="pw" name="pw" autocomplete="off" maxlength="16" value="" type="password"> (영문 대소문자/숫자 4자~16자)</td>
 </tr>
<tr>
<th scope="row">비밀번호 확인 <img src="../resources/images/ico_required.gif" alt="필수"></th>
<td><input id="user_passwd_confirm" name="user_passwd_confirm" autocomplete="off" maxlength="16" value="" type="password"> <span id="pwConfirmMsg"></span> </td>
</tr>
<tr class="">
<th scope="row">비밀번호 확인 질문 <img src="../resources/images/ico_required.gif" alt="필수"></th>
  <td><select id="hint" name="hint">
<option value="hint_01">기억에 남는 추억의 장소는?</option>
<option value="hint_02">자신의 인생 좌우명은?</option>
<option value="hint_03">자신의 보물 제1호는?</option>
<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
</select></td>
 </tr>
 
<tr class="">
<th scope="row">비밀번호 확인 답변 <img src="../resources/images/ico_required.gif" alt="필수"></th>
<td><input id="hint_answer" name="hint_answer" class="inputTypeText" placeholder="" value="" type="text"></td>
</tr>

<tr>
<th scope="row" id="nameTitle">이름 <img src="../resources/images/ico_required.gif" alt="필수"></th>
  <td>
    <span id="nameContents"><input type="text" name="name" id="name" maxlength="20"></span>
    <span id="under14Msg" class="displaynone">14세 미만 사용자는 법정대리인 동의가 필요합니다.</span>
  </td>
</tr>

<tr class="">
<th scope="row">성별 <img src="../resources/images/ico_required.gif" class="" alt="필수"></th>
<td><input id="is_sex0" name="is_sex" value="M" type="radio"><label for="is_sex0">남자</label>
<input id="is_sex1" name="is_sex" value="F" type="radio"><label for="is_sex1">여자</label></td>
</tr>

<tr class="">
<th scope="row">나이 <img src="../resources/images/ico_required.gif" class="" alt="필수"></th>
<td><input id="age" name="age" class="inputTypeText" placeholder="" maxlength="4" value="" type="text">
</td>
</tr>

<tr class="">
<th scope="row">주소 <img src="../resources/images/ico_required.gif" class="" alt="필수"></th>
 <td>
   <input id="postcode1" name="address" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text"><a href="#none" onclick="" id="postBtn" class="btn_function btncolor_basic"><span>우편번호</span></a><br>
   <input id="addr1" name="addr1" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"> 기본주소<br>
   <input id="addr2" name="addr2" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소                 </td>
</tr>
<tr class="">
<th scope="row">휴대전화 <img src="../resources/images/ico_required.gif" class="" alt="필수"></th>
 <td><select id="mobile1" name="phone">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="mobile2" name="phone" maxlength="4" value="" type="text">-<input id="mobile3" name="phone" maxlength="4" value="" type="text"></td>
</tr>
<tr>
<th scope="row">이메일 <img src="../resources/images/ico_required.gif" alt="필수"></th>
 <td><input id="email" name="email" value="" type="text"> <span id="emailMsg"></span>
</td>
</tr>
</tbody>
</table>
</div>
</tbody>
</table>
<div>
	<button id="btnCancel" type="submit" class="btn btn-danger">취소하기</button>
	<button id="btnAgree" type="submit" class="btn btn-primary active">가입하기</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>


<%--   	<div class="text-center">
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
</div> --%>

	
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
	
	
	/* --------------------------AgreeBtn------------------------------- */
	$("#btnCancel").click(function() {
        location.href = "../";
    });

    $("#btnAgree").click(function() {
       location.href = "./memberJoin";
    });
	

	//-----------------------------All check--------------------------------------------------
		$("#result").on("click","#checkAll",function(){
			$(".check01").prop("checked",$(this).prop("checked"));
			if($("#checkAll").prop("checked")){

				$(".checkbox").css({'color':'#ff9999'});
				$(".checkcon").css({'color':'black','font-weight':'bold'});
			} else {
				$(".nocheck").css({'color':'gray','font-weight':'normal'});
			}


		});
		
		//-----------------------------Select Check------------------------------------------------
		
		$("#result").on("click",".check01",function(){
			var result=true;
			
			var title = $(this).attr("id");
			if($(this).prop("checked")){
				console.log(title);
				$("[title="+title+"_img"+"]").css({'color':'#ff9999'});
				$("[title="+title+"_con"+"]").css({'color':'black','font-weight':'bold'});
			} else{
				console.log(title);
				$("[title="+title+"_img"+"]").css({'color':'gray','font-weight':'normal'});
				$("[title="+title+"_con"+"]").css({'color':'gray','font-weight':'normal'});
			}
			

			
			$(".check01").each(function(){
				
				if(!$(this).prop("checked")){
					result=false;
				} 
					
	
			});
			
			
			$("#checkAll").prop("checked",result);
			
			if($("#checkAll").prop("checked")){
				$("#img").css({'color':'#ff9999'});
				$("#contents").css({'color':'black','font-weight':'bold'});
			} else{
				
				$("#img").css({'color':'gray'});
				$("#contents").css({'color':'gray','font-weight':'normal'});
			}
			
			
		});
		//--------------------------------Cursor----------------------------------------------
		
		$(".ac").mouseover(function() {
			$(".ac").css({'cursor':'pointer'});
		});
		
		
			
	
	
	</script>
</body>
</html>