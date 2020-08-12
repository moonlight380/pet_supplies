<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Anil z" name="author">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Shopwise is Powerful features and You Can Use The Perfect Build this Template For Any eCommerce Website. The template is built for sell Fashion Products, Shoes, Bags, Cosmetics, Clothes, Sunglasses, Furniture, Kids Products, Electronics, Stationery Products and Sporting Goods.">
<meta name="keywords" content="ecommerce, electronics store, Fashion store, furniture store,  bootstrap 4, clean, minimal, modern, online store, responsive, retail, shopping, ecommerce store">
<title>Insert title here</title>




<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/css.jsp"></c:import>
<c:import url="../template/summer.jsp"></c:import>


<style type="text/css">
.sum{
float: right;

}
.line{
	clear:both;
    margin-top: 30px;
    margin-bottom: 30px;
    border: 0;
    border-top: 1px solid rgba(0,0,0,.1);
}

.total_price{
	margin-bottom: 50px;
}

.cart_margin{
	margin-left: 90px;
	margin-bottom: 20px;
}
.direct_purchase{
	float: right;
}
.kakao-purchase{
	border-width: 1px;
	cursor: pointer;
	line-height: normal;
	padding: 12px 12px;
	text-transform: capitalize;
	transition: all 0.3s ease-in-out;
	background-color: rgba(255,238,51,0.99);
	float: right;
	margin-bottom: 20px;
}

.admin_btn{
	float: right;
	margin-left: 20px;
}
#prdInfo .cont h3 {
    font-family: 'NotokrBold',sans-serif;
    font-size: 22px;
    color: #111;
    margin-bottom: 20px;
    font: 0.75em Verdana,Dotum,AppleGothic,sans-serif;
}

#prdInfo .prdInfo-cont .cont {
	font: 0.75em Verdana,Dotum,AppleGothic,sans-serif;
    display: inline-block;
    width: 50%;
    vertical-align: top;
    box-sizing: border-box;
    font-size: 13px;
    color: #999;
    margin-bottom: 3px;
    line-height: 1.8;
}
.contents_div_1{
	width: 45%;
	border: solid 1px #687188;
	line-height: auto;
	float: left;
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 70px;
	padding: 30px;
}
.contents_div_2{
	width: auto;
	border: solid 1px #687188;
	line-height: auto;
	clear:both;
	margin-left: 30px;
	margin-right: 30px;
	padding: 30px;
}


</style>


</head>

<body>
<c:import url="../template/header.jsp"></c:import>
<!-- LOADER -->
<div class="preloader">
    <div class="lds-ellipsis">
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
<!-- END LOADER -->



<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1>Product Detail</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <li class="breadcrumb-item"><a href="../">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active">Product Detail</li>
                </ol>
            </div>
        </div>
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- select 시작 -->
<!-- START SECTION SHOP -->
<div class="section">
<div class="container">
		<div class="row">
            <div class="col-lg-6 col-md-6 mb-4 mb-md-0">      
              <div class="product-image">
              
                    <div class="product_img_box">
                        <img id="product_img" src="${pageContext.request.contextPath}/resources/dogUpload/${vo.productFileVOs['0'].fileName}" data-zoom-image="${pageContext.request.contextPath}/resources/dogUpload/${vo.productFileVOs['0'].fileName}" alt="product_img1" />
                       
                        <a href="#" class="product_img_zoom" title="Zoom">
                            <span class="linearicons-zoom-in"></span>
                        </a>
                        
                    </div> <!--  class="product_img_box" -->
                    
                    <div id="pr_item_gallery" class="product_gallery_item slick_slider" data-slides-to-show="4" data-slides-to-scroll="1" data-infinite="false">
                      
                        <div class="item"><!-- 밑에 작은 박스 -->
                            <a href="#" class="product_gallery_item active" data-image="${pageContext.request.contextPath}/resources/images/product_img1.jpg" data-zoom-image="${pageContext.request.contextPath}/resources/images/product_zoom_img1.jpg">
                                <img src="${pageContext.request.contextPath}/resources/images/product_small_img1.jpg" alt="product_small_img1" />
                            </a>
                        </div>
                        
                        <div class="item"><!-- 밑에 작은 박스 -->
                            <a href="#" class="product_gallery_item" data-image="${pageContext.request.contextPath}/resources/images/product_img1-2.jpg" data-zoom-image="${pageContext.request.contextPath}/resources/images/product_zoom_img2.jpg">
                                <img src="${pageContext.request.contextPath}/resources/images/product_small_img2.jpg" alt="product_small_img2" />
                            </a>
                        </div>
                        
                        <div class="item"><!-- 밑에 작은 박스 -->
                            <a href="#" class="product_gallery_item" data-image="${pageContext.request.contextPath}/resources/images/product_img1-3.jpg" data-zoom-image="${pageContext.request.contextPath}/resources/images/product_zoom_img3.jpg">
                                <img src="${pageContext.request.contextPath}/resources/images/product_small_img3.jpg" alt="product_small_img3" />
                            </a>
                        </div>
                        
                        <div class="item"><!-- 밑에 작은 박스 -->
                            <a href="#" class="product_gallery_item" data-image="${pageContext.request.contextPath}/resources/images/product_img1-4.jpg" data-zoom-image="${pageContext.request.contextPath}/resources/images/product_zoom_img4.jpg">
                                <img src="${pageContext.request.contextPath}/resources/images/product_small_img4.jpg" alt="product_small_img4" />
                            </a>
                        </div> <!-- END  class="item" -->
                        
                    </div> <!-- END  class="product_gallery_item slick_slider" -->
                </div> <!--  END class="product-image" -->
            </div> <!-- END class="col-lg-6 col-md-6 mb-4 mb-md-0" -->
            
            
            <div class="col-lg-6 col-md-6">
                <div class="pr_detail ">
                    <div class="product_description">
                        
                        <h4 class="product_title"><a href="#">${vo.productName}</a></h4>
                        
                        
  <!-- 후기 별점 -->                      
<!--                         <div class="rating_wrap interval">
                                <div class="rating">
                                    <div class="product_rate" style="width:80%"></div>
                                </div>
                                <span class="rating_num">(21)</span>
                        </div> END class="rating_wrap" -->
                            
                        <div class="pr_desc">
                            <p>반려견을 위한 펫푸드</p>
                        </div>
                        
                    </div> <!-- END "product_description" -->
                    <hr />
                
                  
                  
                      <div class="product_price">
                            <span class="price">${vo.price}</span>
                            <del>$55.25</del>
                            <div class="on_sale">
                                <span>35% Off</span>
                            </div>
                       </div><!--END  class="product_price " -->   
                   

                     
                    <div class="cart-product-quantity">
                     
                        <div class="cart-product-quantity">
                            <div class="quantity">
                                <input type="button" value="-" class="minus">
                                <input type="text" id="quantityNum" name="quantity" value="1" title="Qty" class="qty" size="4">
                                <input type="button" value="+" class="plus">
                            </div> <!-- class="quantity" -->
                            
                        </div><!--END class="cart-product-quantity" -->
                       
                       <div class="line"></div>
                       
                       <div class="total_price">
                       <strong>총 상품금액</strong>
                       (수량) 
                       
                       <span class="sum">
                       <strong>
                       <em>${vo.price}</em> 
                       </strong>
                       (1개)
                       </span>
                       </div>
                       
                       <span class="cart_btn">
                            <button class="btn btn-fill-out btn-addtocart cart_margin" type="button"><i class="icon-basket-loaded"></i> Add to cart</button> 
                        </span> <!-- "cart_btn" -->
                        
                        <span class="direct_purchase">
                        	<button class="btn btn-fill-out btn-addtocart direct_purchase" type="button"><i class='fas fa-dollar-sign'></i> Add to purchase</button>
                        </span>
                      
                       <span class="kakao_purchase">
                        	<button class=" btn kakao-purchase" type="button"><i class='fas fa-comment'></i>kakao pay</button>
                        </span>
                    </div><!-- END class="cart-product-quantity" -->
                   
                     
                     
                     
                     <div class="line"></div>
                    
                   
                    
                    <div class="product_share">
                        <span>Share:</span>
                        <ul class="social_icons">
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="ion-social-youtube-outline"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram-outline"></i></a></li>
                        </ul>
                    </div> <!--  END class="product_share" -->
                    
                      <div class="line"></div>
                      
                    <div class="container"> 
						<a href="./${p }Update?productNum=${vo.productNum}"  class="btn btn-danger admin_btn">Update</a>
						<a href="./${p }Delete?productNum=${vo.productNum}"  class="btn btn-primary admin_btn">Delete</a>
						
					</div>
                    
                    
                </div><!-- class="pr_detail" -->
            </div> <!-- class="col-lg-6 col-md-6" -->
        </div><!-- END class="row" -->
        
<!-- 탭으로 나누는 버튼 -->    

        <div class="row">
        	<div class="col-12">
            	<div class="large_divider clearfix"></div>
            </div>
        </div>
        
        
        <div class="row">
        	<div class="col-12">
            	<div class="tab-style3">
            	<!-- 상품 탭 이름 -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="Description-tab" data-toggle="tab" href="#Description" role="tab" aria-controls="Description" aria-selected="true">상품 상세</a>
                      	</li>
                      	<li class="nav-item">
                        	<a class="nav-link" id="Additional-info-tab" data-toggle="tab" href="#Additional-info" role="tab" aria-controls="Additional-info" aria-selected="false">베송/반품/교환/환불</a>
                      	</li>
                      	<li class="nav-item">
                        	<a class="nav-link" id="Reviews-tab" data-toggle="tab" href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">상품 후기</a>
                      	</li>
                      	<li class="nav-item">
                        	<a class="nav-link" id="Reviews-tab" data-toggle="tab" href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">상품 문의</a>
                      	</li>
                      	
                    </ul>
                	<div class="tab-content shop_info_tab">
                      	<div class="tab-pane fade show active" id="Description" role="tabpanel" aria-labelledby="Description-tab">
                        	
						  	<!-- 이미지가 여러개 이므로 반복문 -->		
							 <c:forEach items="${vo.productFileVOs}" var="file">
									 <div>
									 	<img alt="" src="../resources/dogUpload/${file.fileName}">			
									</div> 
							</c:forEach>
							
                      	</div>
                      	
                      	
                      	<div class="tab-pane fade" id="Additional-info" role="tabpanel" aria-labelledby="Additional-info-tab">
                        	<div class="prdInfo-cont">
								<div class="cont contents_div_1">
											<h3>배송안내</h3>
												-배송 방법 : 택배<br>
												-배송 지역 : 전국지역<br>
												-배송 비용 : 2,500원<br>
												-배송 기간 : 3일 ~ 7일<br>
												-배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.<br>
							  						&nbsp;&nbsp;-고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.<br>
								</div>
								</div>
								
								 <div class=" height_line"></div>
								 
								 
								 <div class="prdInfo-cont">
										<div class="cont contents_div_1">
											<h3>교환 및 반품정보</h3>
											<div class="xans-element- xans-layout xans-layout-info">
											<span>080-850-0085</span>
										
										
											<b>교환 및 반품이 가능한 경우</b><br>
											- 상품을 공급 받으신 날로부터 7일이내 단, 가전제품의<br>
											&nbsp;&nbsp;경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.<br>
											- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과<br>
											&nbsp;&nbsp;다르거나 다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내<br>
											<br>
											
											<b>교환 및 반품이 불가능한 경우</b><br>
											- 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단, 상품의 내용을 확인하기 위하여<br>
											&nbsp;&nbsp;포장 등을 훼손한 경우는 제외<br>
											- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우<br>
											&nbsp;&nbsp;(예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에<br>
											&nbsp;&nbsp;따른 반품/교환은 제조사 기준에 따릅니다.)<br>
											- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을 <br>
											&nbsp;&nbsp;제공한 경우에 한 합니다.<br>
											- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우<br>
											- 복제가 가능한 상품등의 포장을 훼손한 경우<br>
											&nbsp;&nbsp;(자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)<br>
											<br>
											※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.<br>
											&nbsp;&nbsp;(색상 교환, 사이즈 교환 등 포함)<br>
											</div>
										</div>
										
							</div>
 						
 						<div class="line"></div>
 						
 						<div class="cont contents_div_2">
						    <h3>상품결제정보</h3>
						            고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인 명의의 주문등
						             정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다. &nbsp; <br>
						      <br>
						      무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다. &nbsp;<br>
						      주문시 입력한&nbsp;입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며&nbsp;입금되지
						      않은 주문은 자동취소 됩니다. <br>
						 </div>
 
 
                                
                      	</div>
                      	<div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">
                        	<div class="comments">
                            	<h5 class="product_tab_title">2 Review For <span>Blue Dress For Woman</span></h5>
                                <ul class="list_none comment_list mt-4">
                                    <li>
                                        <div class="comment_img">
                                            <img src="${pageContext.request.contextPath}/resources/images/user1.jpg" alt="user1"/>
                                        </div>
                                        <div class="comment_block">
                                            <div class="rating_wrap">
                                                <div class="rating">
                                                    <div class="product_rate" style="width:80%"></div>
                                                </div>
                                            </div>
                                            <p class="customer_meta">
                                                <span class="review_author">Alea Brooks</span>
                                                <span class="comment-date">March 5, 2018</span>
                                            </p>
                                            <div class="description">
                                                <p>Lorem Ipsumin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="comment_img">
                                            <img src="${pageContext.request.contextPath}/resources/images/user2.jpg" alt="user2"/>
                                        </div>
                                        <div class="comment_block">
                                            <div class="rating_wrap">
                                                <div class="rating">
                                                    <div class="product_rate" style="width:60%"></div>
                                                </div>
                                            </div>
                                            <p class="customer_meta">
                                                <span class="review_author">Grace Wong</span>
                                                <span class="comment-date">June 17, 2018</span>
                                            </p>
                                            <div class="description">
                                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters</p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                        	</div>
                            <div class="review_form field_form">
                                <h5>Add a review</h5>
                                <form class="row mt-3">
                                    <div class="form-group col-12">
                                        <div class="star_rating">
                                            <span data-value="1"><i class="far fa-star"></i></span>
                                            <span data-value="2"><i class="far fa-star"></i></span> 
                                            <span data-value="3"><i class="far fa-star"></i></span>
                                            <span data-value="4"><i class="far fa-star"></i></span>
                                            <span data-value="5"><i class="far fa-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <textarea required="required" placeholder="Your review *" class="form-control" name="message" rows="4"></textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input required="required" placeholder="Enter Name *" class="form-control" name="name" type="text">
                                     </div>
                                    <div class="form-group col-md-6">
                                        <input required="required" placeholder="Enter Email *" class="form-control" name="email" type="email">
                                    </div>
                                   
                                    <div class="form-group col-12">
                                        <button type="submit" class="btn btn-fill-out" name="submit" value="Submit">Submit Review</button>
                                    </div>
                                </form>
                            </div>
                      	</div>
                	</div>
                </div>
            </div>
        </div>
        
        
<!--         <div class="row">
        	<div class="col-12">
            	<div class="small_divider"></div>
            	<div class="divider"></div>
                <div class="medium_divider"></div>
            </div>
        </div> -->
        
<!-- 관련상품 -->        
<%--         <div class="row">
        	<div class="col-12">
            	<div class="heading_s1">
                	<h3>Releted Products</h3>
                </div> <!-- END "heading_s1" -->
                
            	<div class="releted_product_slider carousel_slider owl-carousel owl-theme" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                	<div class="item">
                        <div class="product">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="${pageContext.request.contextPath}/resources/images/product_img1.jpg" alt="product_img1">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                        <li><a href="shop-compare.html"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="//bestwebcreator.com/shopping-zone/demo/shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">Blue Dress For Woman</a></h6>
                                <div class="product_price">
                                    <span class="price">$45.00</span>
                                    <del>$55.25</del>
                                    <div class="on_sale">
                                        <span>35% Off</span>
                                    </div>
                                </div>
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:80%"></div>
                                    </div>
                                    <span class="rating_num">(21)</span>
                                </div>
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                <div class="pr_switch_wrap">
                                    <div class="product_color_switch">
                                        <span class="active" data-color="#87554B"></span>
                                        <span data-color="#333333"></span>
                                        <span data-color="#DA323F"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- END class="item" -->
                    
                    
                    <div class="item">
                        <div class="product">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="${pageContext.request.contextPath}/resources/images/product_img2.jpg" alt="product_img2">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                        <li><a href="shop-compare.html"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="//bestwebcreator.com/shopping-zone/demo/shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div> <!-- END class="product_action_box" -->
                            </div> <!-- END class="product_img" -->
                            
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">Lether Gray Tuxedo</a></h6>
                                
                                <div class="product_price">
                                    <span class="price">$55.00</span>
                                    <del>$95.00</del>
                                    <div class="on_sale">
                                        <span>25% Off</span>
                                    </div>
                                </div> <!-- END class="product_price" -->
                                 
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:68%"></div>
                                    </div>
                                    <span class="rating_num">(15)</span>
                                </div> <!-- END class="rating_wrap" -->
                                
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                
                                <div class="pr_switch_wrap">
                                    <div class="product_color_switch">
                                        <span class="active" data-color="#847764"></span>
                                        <span data-color="#0393B5"></span>
                                        <span data-color="#DA323F"></span>
                                    </div>
                                    
                                </div> <!-- END class="pr_switch_wrap" -->
                            </div> <!--  END class="product_info" -->
                        </div> <!--  END class="product" -->
                    </div> <!-- END class="item" -->
                    
                    
                    <div class="item">
                        <div class="product">
                            <span class="pr_flash">New</span>
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="${pageContext.request.contextPath}/resources/images/product_img3.jpg" alt="product_img3">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                        <li><a href="shop-compare.html"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="//bestwebcreator.com/shopping-zone/demo/shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div> <!--  END class="product_action_box" -->
                            </div> <!-- END class="product_img" -->
                            
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">woman full sliv dress</a></h6>
                                
                                <div class="product_price">
                                    <span class="price">$68.00</span>
                                    <del>$99.00</del>
                                </div>
                                
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:87%"></div>
                                    </div>
                                    <span class="rating_num">(25)</span>
                                </div> <!--  END class="rating_wrap" -->
                                
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                
                                <div class="pr_switch_wrap">
                                    <div class="product_color_switch">
                                        <span class="active" data-color="#333333"></span>
                                        <span data-color="#7C502F"></span>
                                        <span data-color="#2F366C"></span>
                                        <span data-color="#874A3D"></span>
                                    </div>
                                </div> <!--  END class="pr_switch_wrap" -->
                                
                            </div> <!--  END class="product_info" -->
                        </div> <!-- END class="product" -->
                    </div> <!-- END class="item" -->
                    
                    
                    <div class="item">
                        <div class="product">
                            
                            <div class="product_img">
                                
                                <a href="shop-product-detail.html">
                                    <img src="${pageContext.request.contextPath}/resources/images/product_img4.jpg" alt="product_img4">
                                </a>
                                
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                        <li><a href="shop-compare.html"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="//bestwebcreator.com/shopping-zone/demo/shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div> <!-- class="product_action_box" -->
                                
                            </div> <!-- END class="product_img" -->
                            
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">light blue Shirt</a></h6>
                                
                                <div class="product_price">
                                    <span class="price">$69.00</span>
                                    <del>$89.00</del>
                                    <div class="on_sale">
                                        <span>20% Off</span>
                                    </div>
                                </div>
                                
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:70%"></div>
                                    </div>
                                    <span class="rating_num">(22)</span>
                                </div> <!-- END class="rating_wrap" -->
                                
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                
                                <div class="pr_switch_wrap">
                                    <div class="product_color_switch">
                                        <span class="active" data-color="#333333"></span>
                                        <span data-color="#A92534"></span>
                                        <span data-color="#B9C2DF"></span>
                                    </div>
                                </div> <!-- END lass="pr_switch_wrap" -->
                                
                            </div> <!-- class="product_info" -->
                        </div> <!-- class="product" -->
                    </div> <!-- END class="item" -->
                    
                    
                    <div class="item">
                        <div class="product">
                            <div class="product_img">
                                <a href="shop-product-detail.html">
                                    <img src="${pageContext.request.contextPath}/resources/images/product_img5.jpg" alt="product_img5">
                                </a>
                                <div class="product_action_box">
                                    <ul class="list_none pr_action_btn">
                                        <li class="add-to-cart"><a href="#"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                        <li><a href="shop-compare.html"><i class="icon-shuffle"></i></a></li>
                                        <li><a href="//bestwebcreator.com/shopping-zone/demo/shop-quick-view.html" class="popup-ajax"><i class="icon-magnifier-add"></i></a></li>
                                        <li><a href="#"><i class="icon-heart"></i></a></li>
                                    </ul>
                                </div> <!-- class="product_action_box" -->
                            </div> <!-- class="product_img" -->
                            
                            <div class="product_info">
                                <h6 class="product_title"><a href="shop-product-detail.html">blue dress for woman</a></h6>
                                
                                <div class="product_price">
                                    <span class="price">$45.00</span>
                                    <del>$55.25</del>
                                    <div class="on_sale">
                                        <span>35% Off</span>
                                    </div>
                                </div> <!-- class="product_price" -->
                                
                                <div class="rating_wrap">
                                    <div class="rating">
                                        <div class="product_rate" style="width:80%"></div>
                                    </div>
                                    <span class="rating_num">(21)</span>
                                </div> <!-- class="rating_wrap" -->
                                
                                <div class="pr_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                                
                                <div class="pr_switch_wrap">
                                    <div class="product_color_switch">
                                        <span class="active" data-color="#87554B"></span>
                                        <span data-color="#333333"></span>
                                        <span data-color="#5FB7D4"></span>
                                    </div>
                                </div> <!-- class="pr_switch_wrap"> -->
                                
                                
                            </div> <!-- class="product_info" -->
                        </div> <!-- class="product" -->
                    </div> <!-- END class="item" -->
                    
                    
                    
                </div> <!-- END class="releted_product_slider carousel_slider owl-carousel owl-theme"  -->
            </div> <!-- END class="col-12" -->
        </div><!-- END class="row" --> --%>
    </div><!-- END class="container" -->
</div>  <!-- END class="section" -->

<!-- END SECTION SHOP -->





<!-- START SECTION SUBSCRIBE NEWSLETTER -->
<div class="section bg_default small_pt small_pb">
	<div class="container">	
    	<div class="row align-items-center">	
            <div class="col-md-6">
                <div class="heading_s1 mb-md-0 heading_light">
                    <h3>Subscribe Our Newsletter</h3>
                </div>
            </div>
            <div class="col-md-6">
                <div class="newsletter_form">
                    <form>
                        <input type="text" required="" class="form-control rounded-0" placeholder="Enter Email Address">
                        <button type="submit" class="btn btn-dark rounded-0" name="submit" value="Submit">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- START SECTION SUBSCRIBE NEWSLETTER -->

</div>
<!-- END MAIN CONTENT -->

<!-- START FOOTER -->
<c:import url="../template/footer.jsp"></c:import>
<!-- END FOOTER -->

<a href="#" class="scrollup" style="display: none;"><i class="ion-ios-arrow-up"></i></a> 

<!-- Latest jQuery --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.12.4.min.js"></script> 
<!-- jquery-ui --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<!-- popper min js -->
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<!-- Latest compiled and minified Bootstrap --> 
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script> 
<!-- owl-carousel min js  --> 
<script src="${pageContext.request.contextPath}/resources/owlcarousel/js/owl.carousel.min.js"></script> 
<!-- magnific-popup min js  --> 
<script src="${pageContext.request.contextPath}/resources/js/magnific-popup.min.js"></script> 
<!-- waypoints min js  --> 
<script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script> 
<!-- parallax js  --> 
<script src="${pageContext.request.contextPath}/resources/js/parallax.js"></script> 
<!-- countdown js  --> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script> 
<!-- fit video  -->
<script src="${pageContext.request.contextPath}/resources/js/Hoverparallax.min.js"></script>
<!-- imagesloaded js --> 
<script src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
<!-- isotope min js --> 
<script src="${pageContext.request.contextPath}/resources/js/isotope.min.js"></script>
<!-- jquery.appear js  -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.appear.js"></script>
<!-- jquery.dd.min js -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.dd.min.js"></script>
<!-- slick js -->
<script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
<!-- elevatezoom js -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.elevatezoom.js"></script>
<!-- Google Map Js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7TypZFTl4Z3gVtikNOdGSfNTpnmq-ahQ&amp;callback=initMap"></script>
<!-- scripts js --> 
<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>

</body>
</html>