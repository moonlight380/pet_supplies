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
	
	<div class="container">
	
		<div class="row">
			<div class="col-sm-2 border"></div>
			<div class="col border m-5">
				<form class="form-signin" action="./memberLogin" method="post">
					<div class="text-center">
					<a href="${pageContext.request.contextPath}">
					<img class="m-5 mb-4" 
						src="${pageContext.request.contextPath}/resources/images/logo_dark.png"
						alt="" width="182" height="47">
					</a>
					</div>

				</form>
			</div>
			<div class="col-sm-2 border"></div>
		</div>
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
		
		

	
	<script type="text/javascript">

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