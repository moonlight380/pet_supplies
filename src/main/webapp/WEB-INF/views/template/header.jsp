<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- START HEADER -->
<header class="header_wrap fixed-top header_with_topbar">
	<div class="bottom_header dark_skin main_menu_uppercase">
		<div class="container">
			<nav class="navbar navbar-expand-lg">
				<a class="navbar-brand" href="index.html"> <img
					class="logo_light"
					src="${pageContext.request.contextPath}/resources/images/catdog.jpg"
					alt="logo" /> <img class="logo_dark"
					src="${pageContext.request.contextPath}/resources/images/catdog.jpg"
					alt="logo" />
				</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent" aria-expanded="false">
					<span class="ion-android-menu"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="dropdown"><a data-toggle="dropdown"
							class="nav-link dropdown-toggle active" href="#">홈</a>
							<div class="dropdown-menu">
								<ul>
									<li><a class="dropdown-item nav-link nav_item active"
										href="index.html">Fashion 1</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="index-2.html">Fashion 2</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="index-3.html">Furniture 1</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="index-4.html">Furniture 2</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="index-5.html">Electronics 1</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="index-6.html">Electronics 2</a></li>
								</ul>
							</div></li>
						<li class="dropdown"><a class="dropdown-toggle nav-link"
							href="#" data-toggle="dropdown">게시판</a>
							<div class="dropdown-menu">
								<ul>
									<li><a class="dropdown-item nav-link nav_item"
										href="about.html">회사 소개</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="${pageContext.request.contextPath}/notice/noticeList">공지
											사항</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="${pageContext.request.contextPath}/qna/qnaList">QnA</a></li>
								</ul>
							</div></li>
						<li class="dropdown dropdown-mega-menu"><a
							class="dropdown-toggle nav-link" href="#" data-toggle="dropdown">제품</a>
							<div class="dropdown-menu">
								<ul class="mega-menu d-lg-flex">
									<li class="mega-menu-col col-lg-3">
										<ul>
											<li class="dropdown-header">Woman's</li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-three-columns.html">Vestibulum sed</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-four-columns.html">Donec porttitor</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-grid-view.html">Donec vitae facilisis</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-list-view.html">Curabitur tempus</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-left-sidebar.html">Vivamus in tortor</a></li>
										</ul>
									</li>
									<li class="mega-menu-col col-lg-3">
										<ul>
											<li class="dropdown-header">Men's</li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-cart.html">Donec vitae ante ante</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="checkout.html">Etiam ac rutrum</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="wishlist.html">Quisque condimentum</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="compare.html">Curabitur laoreet</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="cart-empty.html">Vivamus in tortor</a></li>
										</ul>
									</li>
									<li class="mega-menu-col col-lg-3">
										<ul>
											<li class="dropdown-header">Kid's</li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail.html">Donec vitae facilisis</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-left-sidebar.html">Quisque
													condimentum</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-right-sidebar.html">Etiam ac
													rutrum</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-thumbnails-left.html">Donec
													vitae ante ante</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-accordion-style.html">Donec
													porttitor</a></li>
										</ul>
									</li>
									<li class="mega-menu-col col-lg-3">
										<ul>
											<li class="dropdown-header">Accessories</li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail.html">Curabitur tempus</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-left-sidebar.html">Quisque
													condimentum</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-right-sidebar.html">Vivamus in
													tortor</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-thumbnails-left.html">Donec
													vitae facilisis</a></li>
											<li><a class="dropdown-item nav-link nav_item"
												href="shop-product-detail-accordion-style.html">Donec
													porttitor</a></li>
										</ul>
									</li>
								</ul>
								<div class="d-lg-flex menu_banners">
									<div class="col-sm-4">
										<div class="header-banner">
											<img src="assets/images/menu_banner1.jpg" alt="menu_banner1">
											<div class="banne_info">
												<h6>10% Off</h6>
												<h4>New Arrival</h4>
												<a href="#">Shop now</a>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="header-banner">
											<img src="assets/images/menu_banner2.jpg" alt="menu_banner2">
											<div class="banne_info">
												<h6>15% Off</h6>
												<h4>Men's Fashion</h4>
												<a href="#">Shop now</a>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="header-banner">
											<img src="assets/images/menu_banner3.jpg" alt="menu_banner3">
											<div class="banne_info">
												<h6>23% Off</h6>
												<h4>Kids Fashion</h4>
												<a href="#">Shop now</a>
											</div>
										</div>
									</div>
								</div>
							</div></li>

						<li class="dropdown"><a class="dropdown-toggle nav-link"
							href="#" data-toggle="dropdown">마이 페이지</a>
							<div class="dropdown-menu">
								<ul>
									<li><a class="dropdown-item nav-link nav_item"
										href="about.html">정보 수정</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="contact.html">주문 조회</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="faq.html">쿠폰 조회</a></li>
									<li><a class="dropdown-item nav-link nav_item"
										href="faq.html">회원 탈퇴</a></li>
								</ul>
							</div></li>

						<li><a class="nav-link nav_item"
							href="${pageContext.request.contextPath}/nav/contact">매장 위치</a></li>

					</ul>
				</div>

				<ul class="navbar-nav attr-nav align-items-center">

					<li><div class="col-md-6">
							<div class="text-center text-md-right">
								<ul class="header_list">
									<li><a href="login.html"><i class="ti-user"></i><span>Login</span></a></li>
								</ul>
							</div>
						</div></li>

					<li class="dropdown cart_dropdown"><a
						class="nav-link cart_trigger" href="#" data-toggle="dropdown"><i
							class="linearicons-cart"></i><span class="cart_count">2</span></a>
						<div class="cart_box dropdown-menu dropdown-menu-right">
							<ul class="cart_list">
								<li><a href="#" class="item_remove"><i
										class="ion-close"></i></a> <a href="#"><img
										src="assets/images/cart_thamb1.jpg" alt="cart_thumb1">Variable
										product 001</a> <span class="cart_quantity"> 1 x <span
										class="cart_amount"> <span class="price_symbole">$</span></span>78.00
								</span></li>
								<li><a href="#" class="item_remove"><i
										class="ion-close"></i></a> <a href="#"><img
										src="assets/images/cart_thamb2.jpg" alt="cart_thumb2">Ornare
										sed consequat</a> <span class="cart_quantity"> 1 x <span
										class="cart_amount"> <span class="price_symbole">$</span></span>81.00
								</span></li>
							</ul>
							<div class="cart_footer">
								<p class="cart_total">
									<strong>Subtotal:</strong> <span class="cart_price"> <span
										class="price_symbole">$</span></span>159.00
								</p>
								<p class="cart_buttons">
									<a href="#" class="btn btn-fill-line rounded-0 view-cart">View
										Cart</a><a href="#" class="btn btn-fill-out rounded-0 checkout">Checkout</a>
								</p>
							</div>
						</div></li>

				</ul>
			</nav>
		</div>
	</div>
</header>
<!-- END HEADER -->