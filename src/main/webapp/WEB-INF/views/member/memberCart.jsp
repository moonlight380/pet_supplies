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

<style type="text/css">
	.table_title{
		font:0.75em "Malgun Gothic","Gulim",
		"Tahoma","Verdana","Arial","sans-serif",
		Verdana,Dotum,AppleGothic,sans-serif;
		padding: 13px 0px 15px;
   		vertical-align: middle;
    	font-weight: normal;
    	color:black;
    	text-align: center;
    	border-bottom: 1px solid #9ca0aa;
	}
 	.material-icons{
		background-color: white;
		color: gray;
		font-size: 20px;
		border: 1px solid gray;
		
	}
	

</style>
</head>


<body>
<c:import url="../template/header.jsp"></c:import>

	<div class="container-fulid  mt-5" id="step" title="step1">
		<c:import url="./memberSide.jsp"></c:import>
		<c:import url="./cartStep.jsp"></c:import>

		
		
		<div class="row">
			<div class="col-sm-1">asdas</div>
			<div class="col" style="margin-top: 100px; padding: 0px;">
				<div style="font-size: 12px; color: black; border-bottom: solid 1px black;
						padding: 15px;">
						<div class="row" style="vertical-align:middle;">
							
							<div  style="padding-top: -2px; margin-left: 3px;">장바구니 목록</div>
							<div class='cart_count' style="margin-left: 4px; top: 0px; margin-top: 1px;">${cartCount }</div>
						</div>
				</div>
				
				<div class="row"style="padding: 15px;">
					<table>
						<colgroup>
							<col style="width:27px"/>
							<col style="width:92px"/>
							<col style="width:450px"/>
							<col style="width:98px"/>
							<col style="width:75px"/>
							<col style="width:98px"/>
							<col style="width:98px"/>
							<col style="width:85px"/>
							<col style="width:98px"/>
							<col style="width:110px"/>
						
						</colgroup>
						<thead>
							<tr class="table_title">
								<th scope="col">
									<input type="checkbox" id="check_all" title="checkbox" hidden="hidden">
										<label for="check_all" class="material-icons checkbox" title="check_all">
											check
										</label>
	
								</th>
								<th scope="col">이미지</th>
								<th scope="col">상품정보</th>
								<th scope="col">판매가</th>
								<th scope="col">수량</th>
								<th scope="col">적립금</th>
								<th scope="col">배송구분</th>
								<th scope="col">배송비</th>
								<th scope="col">합계</th>
								<th scope="col">선택</th>
	
							</tr>
						</thead>
						
						<tbody>
							<tr class="table_title">
								<td>
									<input type="checkbox" class="check" id="first" hidden="hidden">
										<label for="first" class="material-icons checkbox" title="first">check</label>
								</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>

							
							
							
							
							</tr>
						
						
						</tbody>
						<tbody>
							<tr class="table_title">
								<td>
									<input type="checkbox" class="check" id="second" hidden="hidden">
										<label for="second" class="material-icons checkbox" title="second">check</label>
								</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>
								<td>a</td>

							
							
							
							
							</tr>
						
						
						</tbody>
					
					
					</table>
				
				</div>
				<div class="row">
					<div class="col">
						<button class="btn" style="border: 1px solid gray; padding: 3px 7px 3px 7px;font-size: 12px;">선택 상품 삭제</button>
					</div>
				</div>
				
				<div class="row" style="padding: 15px; text-align: center; font-weight: bold; color:black; ">
					<div class="col" style="border: 1px solid #9ca0aa; width: 100%; padding: 32px 0;">
						<div class="col-sm-8" style="border-right: 1px solid gray;">
							<div class="col-sm-5">
								<div>총 상품금액</div>
								<div>2,004,000원</div>
							</div>
							<div class="col-sm-1">
								<div>&nbsp;</div>
								<div style="color:gray;">+</div>
							</div> 
							<div class="col-sm-2">
								<div>배송비</div>
								<div>3,000원</div>
							</div>
							<div class="col-sm-1">
								<div>&nbsp;</div>
								<div style="color:gray;">-</div>
							</div> 
							<div class="col-sm-3">
								<div>할인금액</div>
								<div>0원</div>
									
								
							</div>
						</div>
						<div class="col-sm-4">
							<div>결제 금액</div>
							<div style="color:#FF324D;">2,007,000원</div>
							
							
						
						</div>
					
					</div>

				</div>
				<div class="row">
					<div class="col-sm-8" style="padding-right: 7.5px;">
						<button class="btn btn-danger" style="float: right; font-size: 16px;">쇼핑 홈 가기</button>
					</div>
					<div class="col-sm-4" style="padding-left: 0px;">
						<a href="./memberPayment" class="btn btn-danger" style="font-size: 16px;">결제 하기</a>
					</div>
				
				</div>

		</div>
		
		
			<div class="col-sm-2">asdasd</div>
	</div>
	
	
	
	
	
	</div>

</body>

<script type="text/javascript">
//-------------------------Function------------------------

function check(name) {
	$(name).css({
		'background-color':'#FF324D',
		'color':'white',
		'border-color':'#FF324D'
	});
}
function uncheck(name) {
	$(name).css({
		'background-color':'white',
		'color':'gray',
		'border-color':'gray'
	});
}
//-----------------------All check--------------------------

$("#check_all").click(function() {
	$(".check").prop("checked",$(this).prop("checked"));
	
	var name = ('.'+ $("#check_all").prop("title"));
	if($("#check_all").prop("checked")){
		check(name);
		
	} else{
		uncheck(name);
	}
	
});


//-----------------------Select Check---------------------------

$(".check").click(function() {
	var result=true;
	var name = "[title="+$(this).attr("id")+"]";
	
	if($(this).prop("checked")){
		check(name);
	} else{
		uncheck(name);
	}
	
	$(".check").each(function() {
		if(!$(this).prop("checked")){
			result=false;
		}
	});
	$("#check_all").prop("checked",result);
	
	name="[title=check_all]";
	if(result){
		check(name);
	} else{
		uncheck(name);
	}
	
});


//-------------------------Cursor---------------------------------
	$(".material-icons").mouseover(function() {
		$(".material-icons").css({'cursor':'pointer'});
	});


</script>
</html>