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


	<div class="container-fulid border mt-5">
	<c:import url="./memberSide.jsp"></c:import>
		<div class="row border">

			<div class="col border">
				<div class="row border">
					<div class="col border">
						<div class="row border">
						
							<div class="col text-center border fa fa-shopping-cart">주문배송</div>
							
							<div class="col text-center border fa fa-credit-card">보유 쿠폰</div>
							
							
							<div class="col text-center border">
								<i class="fa fa-product-hunt" style="font-size:24px;color:red">포인트</i>
								
								<div>
								 	<span style="font-size: 30px">${member.point }</span>
								 </div>	
							</div>
							
							
						
						
						</div>
					</div>
					
					
					<div class="col-sm-2 border">
						<ul>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
							<li>1</li>
						
						</ul>
					</div>
				
				</div>
			
			
			</div>
			 
			
			
			
			
		
		</div>
	
	</div>
	
	
	
</body>
</html>