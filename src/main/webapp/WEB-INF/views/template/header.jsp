<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- START HEADER -->
<header class="header_wrap">
	<div class="middle-header dark_skin">
		<div class="container">
			<div class="nav_block">
				<a class="navbar-brand" href="index.html"> <img
					class="logo_light"
					src="${pageContext.request.contextPath}/resources/images/catdog.jpg"
					alt="logo" /> <img class="logo_dark"
					src="${pageContext.request.contextPath}/resources/images/catdog.jpg"
					alt="logo" />
				</a>
				<div class="contact_phone order-md-last">
					<i class="linearicons-phone-wave"></i> <span>02-0000-0000</span>
				</div>
				<div class="product_search_form">
					<form>
						<div class="input-group">
							<div class="input-group-prepend">
								<div class="custom_select">
									<select class="first_null">
										<option value="AllCatagory">모든 카테고리</option>
										<option value="Dog">강아지 용품</option>
										<option value="Cat">고양이 용품</option>
										<option value="Etc">기타 용품</option>
									</select>
								</div>
							</div>
							<input class="form-control" placeholder="검색어를 입력하세요" required=""
								type="text">
							<button type="submit" class="search_btn">
								<i class="linearicons-magnifier"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom_header light_skin main_menu_uppercase bg_dark mb-4">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6 col-3">
					<div class="categories_wrap">
						<button type="button" data-toggle="collapse"
							data-target="#navCatContent" aria-expanded="false"
							class="categories_btn" >
							<i class="linearicons-menu"></i><span>모든 카테고리 </span>
							
						</button>
						<div id="navCatContent" class="nav_cat navbar collapse">
							<ul>
								<li class="dropdown dropdown-mega-menu"><a
									class="dropdown-item nav-link dropdown-toggler" href="${pageContext.request.contextPath}/product/productList"
									data-toggle="dropdown"><span>강아지 용품</span></a>
									<div class="dropdown-menu">
										<ul class="mega-menu d-lg-flex">
											<li class="mega-menu-col col-lg-7">
												<ul class="d-lg-flex">
													<li class="mega-menu-col col-lg-6">
														<ul>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">사료</a></li>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">간식</a></li>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">의류</a></li>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">훈련용품</a></li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</div></li>
								<li class="dropdown dropdown-mega-menu"><a
									class="dropdown-item nav-link dropdown-toggler" href="#"
									data-toggle="dropdown"><span>고양이 용품</span></a>
									<div class="dropdown-menu">
										<ul class="mega-menu d-lg-flex">
											<li class="mega-menu-col col-lg-7">
												<ul class="d-lg-flex">
													<li class="mega-menu-col col-lg-6">
														<ul>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">사료</a></li>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">간식</a></li>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">의류</a></li>
															<li><a class="dropdown-item nav-link nav_item"
																href="#">훈련용품</a></li>
														</ul>
													</li>
												</ul>
											</li>
										</ul>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-8 col-sm-6 col-9">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler side_navbar_toggler" type="button"
							data-toggle="collapse" data-target="#navbarSidetoggle"
							aria-expanded="false">
							<span class="ion-android-menu"></span>
						</button>
						<div class="collapse navbar-collapse mobile_side_menu"
							id="navbarSidetoggle">
							<ul class="navbar-nav">
								<li class="dropdown"><a data-toggle="dropdown"
									class="nav-link dropdown-toggle active" href="#">Home</a>
									<div class="dropdown-menu">
										<ul>
											<li><a class="dropdown-item nav-link nav_item" href="">홈1</a></li>
											<li><a class="dropdown-item nav-link nav_item" href="">홈2</a></li>
										</ul>
									</div></li>
								<li class="dropdown"><a class="dropdown-toggle nav-link"
									href="#" data-toggle="dropdown">게시판</a>
									<div class="dropdown-menu">
										<ul>
											<li><a class="dropdown-item nav-link nav_item" href="${pageContext.request.contextPath}/qna/qnaList">QnA</a></li>
											<li><a class="dropdown-item nav-link nav_item" href="${pageContext.request.contextPath}/notice/noticeList">공지사항</a></li>
											<li><a class="dropdown-item nav-link nav_item" href="">이벤트</a></li>
										</ul>
									</div></li>

								<li><a class="nav-link nav_item" href="${pageContext.request.contextPath}/nav/contact">매장 위치 정보</a></li>
							</ul>
						</div>
						<ul class="navbar-nav attr-nav align-items-center">
							<li><a href="#" class="nav-link" data-toggle="dropdown"><i
									class="linearicons-user"></i></a>
								<div class="dropdown-menu">
									<ul>

										<li><a class="dropdown-item nav-link nav_item" href="${pageContext.request.contextPath}/member/memberLogin">로그인하기</a></li>
										<li><a class="dropdown-item nav-link nav_item" href="">마이페이지</a></li>
										<li><a class="dropdown-item nav-link nav_item" href="">회원탈퇴</a></li>
										<li><a class="dropdown-item nav-link nav_item" href="">기타
												기능</a></li>
									</ul>
								</div></li>
							<li class="dropdown cart_dropdown"><a
								class="nav-link cart_trigger" href="#" data-toggle="dropdown"><i
									class="linearicons-cart"></i><span class="cart_count">0</span></a>
							</li>
						</ul>
						<div class="pr_search_icon">
							<a href="javascript:void(0);" class="nav-link pr_search_trigger"><i
								class="linearicons-magnifier"></i></a>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- END HEADER -->