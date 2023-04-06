<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>

<html lang="ko">
<head>
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
</style>
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dokdo&family=Hahmlet:wght@200&family=IBM+Plex+Sans+KR:wght@300&family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<!-- 여기까지 -->
<meta charset="UTF-8">
<!--문자 인코딩-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--인터넷 익스플로러 최신버전 렌더링-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=2.0, minimum-scale=0.5, user-scalable=no,target-densitydpi=device-dpi">
<!--뷰포트-->

<title>내차견적 적토마</title>


<link rel="shortcut icon" href="/favicon.ico or favicon.png(16x16)">
<!--파비콘(탭 네임 옆의 아이콘)-->
<link rel="stylesheet" type="text/css" href="css/muto_default.css" />
<link rel="stylesheet" type="text/css" href="css/fontello.css" />
<!--폰트텔로-->
<link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css" href="css/bttn.min.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/media-query.css" />
<link rel="stylesheet" type="text/css" href="css/market_share.css" />
<link rel="stylesheet" type="text/css" href="css/shop.navigation.css" />
<link rel="stylesheet" type="text/css"
	href="css/shop.virtualestimate.css" />
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>

<!-- 부트스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>

</head>

<body>
	<header>
		<nav class="top_nav hide_720 min_w_1200">
			<div class="container">
				<p class="float_l ko_font">전국어디서나 1522-9907</p>
				<ul class="float_r over_h">

					<li class="float_l"><a href="/member/login.html">로그인</a></li>
					<li class="float_l"><a href="/member/join01.html">회원가입</a></li>
				</ul>
			</div>
		</nav>

		<nav class="main_nav hide_720 min_w_1200">
			<div class="container" style="margin: 0 auto; width: 79%;">
				<a href="index"><h1 class="float_l">적토마</h1></a>
				<ul class="float_r over_h ">
					<li class="float_l"><a href=""
						style="text-decoration: none; color: black;">네비1</a></li>
					<li class="float_l"><a href=""
						style="text-decoration: none; color: black;">네비2</a></li>
					<li class="float_l"><a href=""
						style="text-decoration: none; color: black;">네비3</a></li>
					<li class="float_l"><a href=""
						style="text-decoration: none; color: black;">네비4</a></li>
					<button class="btm_image" type="button" data-bs-toggle="dropdown"
						aria-expanded="false">
						<img alt="" src="../images/symbol.png">
					</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#"
							style="text-decoration: none;">정보</a></li>
						<li><a class="dropdown-item" href="#"
							style="text-decoration: none;">로그아웃</a></li>
						<li><a class="dropdown-item" href="#"
							style="text-decoration: none;">기타</a></li>
					</ul>


				</ul>
			</div>
		</nav>


	</header>
	<div
		style="background-color: white; height: 100px; display: inline-block; vertical-align: top; width: 100%;">
		<div id="gago" class="carousel slide" data-bs-ride="carousel"
			style="margin: 0 auto; width: 50%;">
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="5000">
					<img src="images/slide_2.jpg" class="d-block w-100" alt=""
						width="100%" height="100px">
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="images/slide_2.jpg" class="d-block w-100" alt=""
						width="100%" height="100px">
				</div>
				<div class="carousel-item">
					<img src="images/slide_2.jpg" class="d-block w-100" alt=""
						width="100%" height="100px">
				</div>
			</div>

			<button class="carousel-control-prev" type="button"
				data-bs-target="#gago" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"
					style="background-color: blue"></span> <span
					class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#gago" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"
					style="background-color: blue"></span> <span
					class="visually-hidden">Next</span>
			</button>
		</div>
	</div>



	<!-- 광고부분 -->

	<div
		style="background-color: red; width: 10%; border: 1px solid red; height: 1000px; margin: 0 auto; display: inline-block; vertical-align: top;">
		<div id="carouselExampleIndicators" class="carousel slide"
			style="margin: 15px; padding: 15px;">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/slide_2.jpg" class="d-block w-100" alt="..."
						width="200px" height="200px">
				</div>
				<div class="carousel-item">
					<img src="images/수박.jpg" class="d-block w-100" alt="..."
						width="200px" height="200px">
				</div>
				<div class="carousel-item">
					<img src="images/slide_2.jpg" class="d-block w-100" alt="..."
						width="200px" height="200px">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>

		</div>




	</div>



	<!-- 메인 부분 -->
	<div
		style="background-color: white; width: 74%; border: 1px solid blue; margin: 0 auto; display: inline-block; vertical-align: top;">
		<div id="oup">
			<div class="search_option_wrap">
				<div id="oupname" class="search_option_title"
					style="text-align: left;">
					OPTION <span class="search_prod_count">총개수 :</span> <strong>150</strong>
				</div>
				<div class="search_option_list">
					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">차종</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_type" id="car_type1"
										value="경차" style="width: 110px"> <span
										class="item_text"> 경차 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="소형차" name="car_type"
										id="car_type2"> <span class="item_text"> 소형차 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="대형차" name="car_type"
										id="car_type3"> <span class="item_text"> 대형차 </span>
								</label></li>
							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">
							제조사</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="현대" name="car_maker"
										id="car_maker1"> <span class="item_text"> 현대 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="BMW" name="car_maker"
										id="car_maker2"> <span class="item_text"> BMW </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="도요타" name="car_maker"
										id="car_maker3"> <span class="item_text"> 도요타 </span>
								</label></li>
							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">연료</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="경유" name="car_fuel"
										id="car_fuel1"> <span class="item_text"> 경유 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="휘발유" name="car_fuel"
										id="car_fuel2"> <span class="item_text"> 휘발유 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" value="전기차" name="car_fuel"
										id="car_fuel3"> <span class="item_text"> 전기차 </span>
								</label></li>
							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">
							변속기</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_gear" id="car_gear1"
										value="오토"> <span class="item_text"> 오토 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_gear" id="car_gear2"
										value="스틱"> <span class="item_text"> 스틱 </span>
								</label></li>

							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">색상</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_color" id="car_color1"
										value="검은색"> <span class="item_text"> 검은색 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_color" id="car_color2"
										value="흰색"> <span class="item_text"> 흰색 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_color" id="car_color3"
										value="그외"> <span class="item_text"> 그외 </span>
								</label></li>
							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">색상</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="radio" name="car_color" id="car_color1"
										value="검은색"> <span class="item_text"> 검은색 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_color" id="car_color2"
										value="흰색"> <span class="item_text"> 흰색 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_checkbox">
										<input type="checkbox" name="car_color" id="car_color3"
										value="그외"> <span class="item_text"> 그외 </span>
								</label></li>
							</ul>
						</div>
					</div>

				</div>
			</div>

		</div>
		<script type="text/javascript">
			${document}.ready(function(){
				$('input[type=checkbox][name=car_type]').change(function{
					var
				})
			})
		</script>
		
		
		<div id="oup1">
			<div
				style="position: relative; min-height: 600px; margin-top: 12px; border: 1px solid #b3b3b3; box-sizing: border-box;">
				<div class="row row-cols-4 row-cols-md-4 g-4"
					style="width: 85%; margin: 0 auto; padding: 15px;">
					<!-- for문 -->
					<c:forEach var="item" items="${list}">
						<div class="col">
							<div class="card h-100"
								style="border-radius: 30px; overflow: hidden;">
								<img src="images/${item.car_photo}" class="card-img-top" alt=""
									style="width: 100%; height: 150px;">

								<div class="card-body" id="card-${item.idx}"
									style="position: relative;width: 100%; height: 150px;">
									<div class="main" id="main-${item.idx}"
										style="display: block; width: 100%; height: 150px;">
										<h5 class="card-title">${item.car_maker}</h5>
										<p class="card-text"
											style="font-family: 'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;">
											This is a wider card with supporting text below as a natural
											lead-in to additional content. This content is a little bit
											longer.</p>
									</div>

									<div class="main1" id="main1-${item.idx}"
										style="display: none; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); ">
										<c:if test="${item.car_accident eq 'o'}">
											<div >
												<p class="card-text"
													style="font-family: 'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;">
													사고 있음</p>
											</div>
										</c:if>
										<c:if test="${item.car_accident eq 'x'}">
											<p class="card-text"
												style="text-align: center; font-family: 'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;">
												무사고</p>
										</c:if>
									</div>

									<div class="main2" id="main2-${item.idx}"
										style="display: none; position: absolute;  top: 50%; left: 50%; transform: translate(-50%, -50%);">
										<p class="card-text"
											style="text-align: center; font-family: 'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;">
											222222</p>

									</div>
								</div>
								<div class="card-footer">
									<small class="text-muted" style="font-weight: bold;">등록일
										: ${item.car_regist}</small>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- 여기까지 -->


					<script type="text/javascript">
						$(document).ready(function() {
							
							
							
			/*	
							$(document).on('click','.main',function() {
								var index = $(this).attr('id').split('-')[1];
					   //var car_accident = $(this).attr('id').split('-')[2];
								$('#main-'+ index+ ', #main2-'+ index).hide();
									$('#main1-'+ index).show()$('#card-'+ index).css('background-color','red')
							});

							$(document).on('click','.main1',function() {
								var index = $(this).attr('id').split('-')[1];
									$('#main-'+ index+ ', #main1-'+ index).hide();
										$('#main2-'+ index).show()$('#card-'+ index).css('background-color','blue')
							});

							$(document).on('click','.main2',function() {
								var index = $(this).attr('id').split('-')[1];
								$('#main1-'+ index+ ', #main2-'+ index).hide();
									$('#main-'+ index).show()$('#card-'+ index).css('background-color','white')
								});
				*/
							});
				/*
						$(document).ready(function() {
							$(".card-body").hover(function() {
								$(this).append("<div class='circle'></div>");
							}, function() {
								$(".circle").remove();
							});
						
						});
					</script>



				</div>

			</div>


			<div id="oup2">
				<div
					style="position: relative; min-height: 100px; margin-top: 12px; border: 1px solid #b3b3b3; box-sizing: border-box;">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center pagination-lg">
							<li class="page-item"><a class="page-link">&laquo;</a></li>
							<%
							for (int i = 1; i <= 10; i++) {
							%>
							<li class="page-item"><a class="page-link" href="#"><%=i%></a></li>
							<%
							}
							;
							%>
							<li class="page-item"><a class="page-link" href="#">&raquo;</a>
							</li>
						</ul>
					</nav>

				</div>
			</div>

		</div>
	</div>
	<!-- 광고부분 -->
	<div
		style="background-color: red; width: 15%; border: 1px solid red; height: 1000px; margin: 0 auto; display: inline-block; vertical-align: top;">


		<div id="carouselExampleIndicators3" class="carousel slide"
			style="margin: 15px; padding: 15px;">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/광고1.jpg" class="d-block w-100" alt="..."
						width="300px" height="800px">
				</div>
				<div class="carousel-item">
					<img src="images/광고1.jpg" class="d-block w-100" alt="..."
						width="300px" height="800px">
				</div>
				<div class="carousel-item">
					<img src="images/광고1.jpg" class="d-block w-100" alt="..."
						width="300px" height="800px">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators3" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators3" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>

		</div>

	</div>




	<footer class="min_w_1200">
		<div class="top_footer">
			<ul class="container hide_720">
				<li><a href="/sub/company.php">회사소개</a></li>
				<li>|</li>
				<li><a href="/sub/rule.php">이용약관</a></li>
				<li>|</li>
				<li><a href="/sub/privacy.php">개인정보취급방침</a></li>
			</ul>
			<a class="hide show_720 pc_btn" href="/index.php"><h1 class="">적토마</h1></a>
		</div>
		<div class="bottom_footer container over_h">
			<h1 class="float_l hide_720">내차견적 적토마</h1>
			<p class="hide_720">
				주소 : 인천광역시 남구 경인로 82, 1001호 | 상호 : 하율에이디 | 대표 : 박승순 | 사업자등록번호 :
				455-29-00292 | 개인정보관리책임자 : 류승관<br> 자동차관사업등록증 명칭 : 써니카 | 성명 :
				박종욱 | 주소 : 인천광역시 남동구 청능대로718번길 7, 106동 1203호<BR> 고객센터 :
				1522-9907 | 팩스 : 1522-9908 | 이메일 : sellcar114@naver.com Copyright ⓒ
				By 해원에이디. All Rights Reserved.
			</p>
			<p class="show_720 hide">
				주소 : 인천광역시 남구 경인로 82, 1001호 | 상호 : 하율에이디 | 대표 : 정은수 <br>
				사업자등록번호 : 455-29-00292 | 개인정보관리책임자 : 정인국<br>고객센터 : 1522-9907 |
				팩스 : 1522-9908 <br>이메일 : sellcar114@naver.com<br>Copyright
				ⓒ By 해원에이디. All Rights Reserved.
			</p>
		</div>

	</footer>
</html>