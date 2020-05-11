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
	<span class="ac nocheck checkcon" id="contents"> 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에 모두 동의합니다. </span>
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
		<label for="third"> <span> 
		<i class='far fa-check-circle ac m-2 nocheck checkbox'
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
		<label for="forth"> <span> 
		<i class='far fa-check-circle ac m-2 nocheck checkbox'
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
<table class="table table-bordered" style="margin-bottom: -1px;">
<caption>회원가입</caption>

<colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>

<tbody>
<tr class="">
<th scope="row">회원구분 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input id="member_type0" name="member_type" value="p" type="radio" checked="checked"><label for="member_type0">개인회원</label>
</tr>

<table class="table table-bordered" border="1" summary="">
<caption>회원 기본정보</caption>
<colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr>
<th scope="row">아이디 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input id="id" name="id" class="inputTypeText" placeholder="" value="" type="text"><span id="idt"></span></td>
 </tr>
<tr>
<th scope="row">비밀번호 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
 <td><input id="pw" name="pw" autocomplete="off" maxlength="16" value="" type="password"><span id="pwt"></span></td>
 </tr>
<tr>
<th scope="row">비밀번호 확인 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input id="check_pw" name="check_pw" autocomplete="off" maxlength="16" value="" type="password"><span id="pwc"></span></td>
</tr>
<tr class="">
<th scope="row">비밀번호 확인 질문 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
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
<th scope="row">비밀번호 확인 답변 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input id="hint_answer" name="hint_answer" class="inputTypeText" placeholder="" value="" type="text"></td>
</tr>

<tr>
<th scope="row" id="nameTitle">이름 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
  <td>
    <span id="nameContents"><input type="text" name="name" id="name" maxlength="20"></span>
  </td>
</tr>

<tr>
<th scope="row">이메일 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
 <td><input id="email" name="email" value="" type="text"></td>
</tr>

<tr class="">
<th scope="row">주소 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" class="" alt="필수"></th>
 <td>
   <input id="postcode1" name="address" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text"><a href="#none" onclick="" id="postBtn" class="btn_function btncolor_basic"><span>우편번호</span></a><br>
   <input id="addr1" name="addr1" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"> 기본주소<br>
   <input id="addr2" name="addr2" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소                 </td>
</tr>
<tr class="">
<th scope="row">휴대전화 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" class="" alt="필수"></th>
 <td><select id="mobile1" name="phone">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="mobile2" name="phone" maxlength="4" value="" type="text">-<input id="mobile3" name="phone" maxlength="4" value="" type="text"></td>
</tr>


<tr class="">
<th scope="row">생년월일</th>
<td>
<input id="birth_year" name="birth_year" class="inputTypeText" placeholder="ex)2020" maxlength="4" value="" type="text"> 년 
<input id="birth_month" name="birth_month" class="inputTypeText" placeholder="ex)01" maxlength="2" value="" type="text"> 월
<input id="birth_day" name="birth_day" class="inputTypeText" placeholder="ex)01" maxlength="2" value="" type="text"> 일 

<input id="calendar0" name="calendar"value="T" type="radio" checked="checked"><label for="is_solar_calendar0">양력</label>
<input id="calendar1" name="calendar"value="F" type="radio"><label for="is_solar_calendar1">음력</label>
<span id="msg"></span>
</td>
</tr>


<tr class="">
<th scope="row">성별</th>
<td><input id="sex0" name="sex" value="M" type="radio"><label for="is_sex0">남자</label>
<input id="sex1" name="sex" value="F" type="radio" checked="checked"><label for="is_sex1">여자</label></td>
</tr>

</tbody>
</table>
</tbody>
</table>
<div class="agreeBtn">
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

	
<script type="text/javascript">


	/* ID 유효성검사 */
	/* id는 대소문자와 숫자로 형성된 4~12자 공백X */
	/* 중복검사 */
	$("#id").blur(function() {
		var id = $("#id").val();
		
		
		for (var i = 0; i < id.length; i++) {
            ch = id.charAt(i)
            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
            	$("#idt").html("(아이디는 영문 대소문자와 숫자로만 입력해주세요)");
 
            }else if(id.length<4 || id.length>12){
            	$("#idt").html("(아이디는 4~12자 사이로 입력해주세요)");
            }else if(id.indexOf(" ")>=0){
            	$("#idt").html("(아이디에는 공백을 사용할 수 없습니다.)");
            }else{
            	$.ajax({
    				type: "post",	//method 형식 
    				url : "./memberIdCheck",//URL 주소
    				data: {
    					id:id
    				},	//parameter
    				success : function(data){
    					$("#idt").html("(사용가능한 아이디입니다.)");
    				},
    				error	: function() {
    					$("#idt").html("(중복된 아이디입니다.)");
    				
    				}
    				
    			});
            }
        }
	});
	
	
	/* PW 유효성검사 */
	/* PW는 영문대소문자와 숫자로 구성된 8~15자 */
	
	
 	$("#pw").blur(function() {
 		var pw = $("#pw").val();
 		
 		if(pw.length<8 || pw.length>15){
 			 $("#pwt").html("(비밀번호는 8~15자 사이로 입력해주세요)");
 		}else if(!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
 			 $("#pwt").html("(비밀번호는 영문 대소문자와 숫자로만 입력해주세요)");
 		}else{
 			$("#pwt").html("(사용가능한 비밀번호입니다)");
 		}
 		
	});
 	
 	/* PW 확인 */
 	
 	$("#check_pw").blur(function() {
 		
 		var pw = $("#pw").val();
 		var check_pw = $("#check_pw").val();
 		
 		if(pw != check_pw){
 			$("#pwc").html("(비밀번호가 일치하지 않습니다.)");
 			$("#check_pw")=false;
 		}else{
 			
 			$("#pwc").html("(비밀번호가 일치합니다.)");
 			$("#check_pw")=true;
 		}
 		
	});
 	
 	
 	/* 생년월일 유효성검사 */
 	
 	$("#birth_year").blur(function() {
	/* 	var year = $("#birth_year").val(); */
		alert("d");
		/* if(year.length<0){
			$("#msg").html("년도가 틀립니다.")
		} */
	});
 	
	 var year = Number(dateStr.substr(0,4)); 
     var month = Number(dateStr.substr(4,2));
     var day = Number(dateStr.substr(6,2));
     var today = new Date(); // 날자 변수 선언
     var yearNow = today.getFullYear();
     var adultYear = yearNow-20;
 
 
     if (year < 1900 || year > adultYear){
          alert("년도를 확인하세요. "+adultYear+"년생 이전 출생자만 등록 가능합니다.");
          return false;
     }
     if (month < 1 || month > 12) { 
          alert("달은 1월부터 12월까지 입력 가능합니다.");
          return false;
     }
    if (day < 1 || day > 31) {
          alert("일은 1일부터 31일까지 입력가능합니다.");
          return false;
     }
     if ((month==4 || month==6 || month==9 || month==11) && day==31) {
          alert(month+"월은 31일이 존재하지 않습니다.");
          return false;
     }
     if (month == 2) {
          var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
          if (day>29 || (day==29 && !isleap)) {
               alert(year + "년 2월은  " + day + "일이 없습니다.");
               return false;
          }
     }


출처: https://aljjabaegi.tistory.com/160 [알짜배기 프로그래머]
	
	
	/* --------------------------AgreeBtn------------------------------- */
/* 	
	$("#btnCancel").click(function() {
		$(this).submit();
        location.href = "../";
    });

    $("#btnAgree").click(function() {
    	var result = ${result};
    	
    	if(result>0){
	       location.href = "./memberJoinSuccess";
    	}else{
    		location.href = "../";
    	}
    	
    	
    }); 
	
*/
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