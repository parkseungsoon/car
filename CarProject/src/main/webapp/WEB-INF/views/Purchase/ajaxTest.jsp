<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.jslhrd.carproject.domain.purchase.CarDTO , java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<!-- 제이쿼리 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
.pagination-xl .page-link {
  font-size: 24px;
  padding: 0.5rem 1rem;
}
.search_option_wrap {
  font-size: 1.5em;
}
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
					style="text-align: left; font-size: 30px;">
					차량 <span class="search_prod_count"  >총대수 :</span> <strong>150</strong>
				</div>
				<div class="search_option_list">
					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">차종</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_type" id="car_type1"
										value="경차" > <span
										class="item_text"> 경차 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="소형" name="car_type"
										id="car_type2" > <span class="item_text"> 소형차 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="대형" name="car_type"
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
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="현대" name="car_maker"
										id="car_maker1"> <span class="item_text"> 현대 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="BMW" name="car_maker"
										id="car_maker2"> <span class="item_text"> BMW </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="도요타" name="car_maker"
										id="car_maker3"> <span class="item_text"> 도요타 </span>
								</label></li>
							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">연료</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="경유" name="car_fuel"
										id="car_fuel1"> <span class="item_text"> 경유 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="휘발유" name="car_fuel"
										id="car_fuel2"> <span class="item_text"> 휘발유 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" value="전기차" name="car_fuel"
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
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_gear" id="car_gear1"
										value="오토"> <span class="item_text"> 오토 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_gear" id="car_gear2"
										value="스틱"> <span class="item_text"> 스틱 </span>
								</label></li>

							</ul>
						</div>
					</div>

					<div class="search_option_item" >
						<div class="search_cate_title" style="font-size: 1.5em;">색상</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_color" id="car_color1"
										value="블랙"> <span class="item_text"> 블랙 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_color" id="car_color2"
										value="화이트"> <span class="item_text"> 화이트 </span>
								</label></li>
								
							</ul>
						</div>
					</div>

					<div class="search_option_item">
						<div class="search_cate_title" style="font-size: 1.5em;">색상</div>
						<div class="search_cate_contents">
							<ul class="search_cate_list">
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_color" id="car_color1"
										value="블랙"> <span class="item_text"> 블랙 </span>
								</label></li>
								<li class="search_cate_item"><label class="item_radio">
										<input type="radio" name="car_color" id="car_color2"
										value="화이트"> <span class="item_text"> 화이트 </span>
								</label></li>
								
							</ul>
						</div>
					</div>

				</div>
			</div>

		</div>

		
		
		<div id="oup1">
			<div
				style="position: relative; min-height: 600px; margin-top: 12px; border: 1px solid #b3b3b3; box-sizing: border-box;">
				<div class="row row-cols-4 row-cols-md-4 g-4 " id="col"
					style="width: 85%; margin: 0 auto; padding: 15px;">

				</div>

			</div>


			<div id="oup2">
				<div
					style="position: relative; min-height: 100px; margin-top: 12px; border: 1px solid #b3b3b3; box-sizing: border-box;">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center pagination-xl">
							
							
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

<script type="text/javascript">
$(document).ready(function() {
	  var checkArr = []; // 라디오 데이터
	  var carList = []; // 총페이지 idx 배열
	  var nowPage =1; //현재 페이지
	  var pageCount = 0; // 총페이지
	  var pageLimit = 5; // 총 나올페이지 수 1, 2 ,3 ,4,5->
	  var currentPage = 1;
	  var pagetotcount = 0;
	  var view = 12;
	  var Listsize = 0;
	  var oupname = $("#oupname");
	  var pagination = $("#oup2 .pagination");
	  var prevBtn = $("<li class='page-item page-link' id='prevBtn'>&laquo;</li>");
	  var nextBtn = $("<li class='page-item page-link' id='nextBtn'>&raquo;</li>");
	  $.ajax({
	        url: "ajaxTest1",
	        type: "get",
	        contentType: "application/json; charset=UTF-8",
	        dataType: "json",
	        success: function(data) {
	            console.log(data);

	         // carList 초기화 및 데이터 추가
	            carList = data;
				Listsize = carList.length;
				var htmlStr = '차량 <span class="search_prod_count" style="font-size: 30px;">총대수 :</span> <strong>' + Listsize + '</strong>';
				oupname.html(htmlStr);
				
				
	            // 페이지 수 계산
	           	pageCount = Math.ceil(carList.length / 12);
	            console.log(pageCount)
	            // 페이지 버튼 생성 함수
	            function createPageButton(pageNum) {
	              var pageLink = $("<li class='page-link'></li>").text(pageNum).attr('data-page', pageNum);
	              var pageBtn = $("<li class='page-item'></li>").append(pageLink);
	              return pageBtn;
	            }
	            
	            // 페이지 버튼 보이기/숨기기 처리 함수
	           function setPageButtonVisibility(start, end) {
	        	pagination.find('.page-item').remove();
				//pagination.find('.page-item').hide();
				if (pageCount > 1) {
				    for (var i = start; i <= Math.min(end, 5); i++) {
				      pagination.find('.page-item:nth-child(' + i + ')').show();
				    }
 				
 					 
					 }
					// 페이지 버튼 추가
        			if(pageCount != 1) {
        				pagination.empty();
        				//pagination.append(prevBtn);
  	            	for (var i = 1; i <=Math.min(end, 5)  ; i++) {
  	             	 pagination.append(createPageButton(i));
  	             	pagetotcount++;
  	          		  }
  	            	
  	            	 pagination.append(nextBtn);
        			}else{
        				pagination.empty()
        				pagination.append(createPageButton(1));
        			}
        			
				}
	            
	            // 페이지 버튼 보이기/숨기기 처리
	            setPageButtonVisibility(1, pageCount);
	        
	         // 응답으로 받은 데이터를 사용하여 카드 생성
	            var col = $("#col");
	            col.empty(); // 기존에 있던 내용 제거

	            for (var i = 0; i < 12; i++) { // data 대신 carList를 사용해야 합니다.
	              var item = carList[i];
					
	             var colcard = $("<div></div>").addClass("col")
	              var card = $("<div></div>").addClass("card h-100").css({
	                "border-radius": "30px",
	                "overflow": "hidden"
	              });

	              var img = $("<img>").addClass("card-img-top").attr({
	                "src": "images/" + item.car_photo,
	                "style": "width: 100%; height: 150px;"
	              });

	              var cardBody = $("<div></div>").addClass("card-body").attr("id", "card-" + item.idx).css({
	                "position": "relative",
	                "width": "100%",
	                "height": "150px"
	              });

	              var mainDiv = $("<div></div>").addClass("main").attr("id", "main-" + item.idx).css({
	                "display": "block",
	                "width": "100%",
	                "height": "150px"
	              });

	              var cardTitle = $("<h5></h5>").addClass("card-title").text(item.car_maker);
				if(item.car_accident=='o')
					var cardText = $("<p></p>").addClass("card-text").text("사고 있음").css({
		                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
		              });
				else
					var cardText = $("<p></p>").addClass("card-text").text("무사고").css({
		                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
		              });
					
	              mainDiv.append(cardTitle).append(cardText);
	              cardBody.append(mainDiv);
	              card.append(img).append(cardBody);
	              colcard.append(card);
	              col.append(colcard);
	            }
	          },
	          error: function(error) {
	            console.log(error);
	          }
	    });
	  
	  
	  
	  
	  $("input:radio").on("click", function() {
		$("#test2").hide();
	    var clickedName = $(this).attr("name");
	    var clickedVal = $(this).val();
		
	    // 배열에서 해당 이름과 같은 값을 가진 객체를 찾아 제거
	    checkArr = checkArr.filter(function(item) {
	      return item.name !== clickedName;
	    });

	    checkArr.push({
	      name: clickedName,
	      value: clickedVal,
	    });

	    console.log(checkArr);

	    $.ajax({
	        url: "ajaxTest",
	        type: "POST",
	        contentType: "application/json; charset=UTF-8",
	        dataType: "json",
	        data: JSON.stringify(checkArr),
	        success: function(data) {
	            console.log(data);
			
	         // carList 초기화 및 데이터 추가
	            carList = data;
	            Listsize = carList.length;
				var htmlStr = '차량 <span class="search_prod_count" style="font-size: 30px;">총대수 :</span> <strong>' + Listsize + '</strong>';
				oupname.html(htmlStr);
	            // 페이지 수 계산
	            if(carList.length == 0)
	            	pageCount = 1;
		         else
	           	pageCount = Math.ceil(carList.length / 12);
	            console.log(pageCount)
	            // 페이지 버튼 생성 함수
	            function createPageButton(pageNum) {
	              var pageLink = $("<li class='page-link' ></li>").text(pageNum).attr('data-page', pageNum);
	              var pageBtn = $("<li class='page-item'></li>").append(pageLink);
	              return pageBtn;
	            }
	            
	            // 페이지 버튼 보이기/숨기기 처리 함수
	           function setPageButtonVisibility(start, end) {
	        	pagination.find('.page-item').remove();
  				//pagination.find('.page-item').hide();
  				if (pageCount > 1) {
  				    for (var i = start; i <= Math.min(end, 5); i++) {
  				      pagination.find('.page-item:nth-child(' + i + ')').show();
  				    }
   				
   					 
 					 }
  					// 페이지 버튼 추가
          			if(pageCount != 1) {
          				pagination.empty();
          				//pagination.append(prevBtn);
    	            	for (var i = 1; i <=Math.min(end, 5)  ; i++) {
    	             	 pagination.append(createPageButton(i));
    	             	pagetotcount++;
    	          		  }
    	            	
    	            	 pagination.append(nextBtn);
          			}else{
          				pagination.empty()
          				pagination.append(createPageButton(1));
          			}
          			
				}
	            
	            // 페이지 버튼 보이기/숨기기 처리
	            setPageButtonVisibility(1, pageCount);
	        
	            // 응답으로 받은 데이터를 사용하여 카드 생성
	            var col = $("#col");
	            col.empty(); // 기존에 있던 내용 제거

	            for (var i = 0; i < 12; i++) { // data 대신 carList를 사용해야 합니다.
	              var item = carList[i];
					
	             var colcard = $("<div></div>").addClass("col")
	              var card = $("<div></div>").addClass("card h-100").css({
	                "border-radius": "30px",
	                "overflow": "hidden"
	              });

	              var img = $("<img>").addClass("card-img-top").attr({
	                "src": "images/" + item.car_photo,
	                "style": "width: 100%; height: 150px;"
	              });

	              var cardBody = $("<div></div>").addClass("card-body").attr("id", "card-" + item.idx).css({
	                "position": "relative",
	                "width": "100%",
	                "height": "150px"
	              });

	              var mainDiv = $("<div></div>").addClass("main").attr("id", "main-" + item.idx).css({
	                "display": "block",
	                "width": "100%",
	                "height": "150px"
	              });

	              var cardTitle = $("<h5></h5>").addClass("card-title").text(item.car_maker);

	              if(item.car_accident=='o')
						var cardText = $("<p></p>").addClass("card-text").text("사고 있음").css({
			                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
			              });
					else
						var cardText = $("<p></p>").addClass("card-text").text("무사고").css({
			                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
			              });

	              mainDiv.append(cardTitle).append(cardText);
	              cardBody.append(mainDiv);
	              card.append(img).append(cardBody);
	              colcard.append(card);
	              col.append(colcard);
	            }
	            
	          },
	          error: function(error) {
	            console.log(error);
	          }
	    });
	    
	  });
	  
	 // 페이징에 따라 데이터 동적
	 // 이전 버튼 클릭 이벤트 핸들러
	 
		$(document).on('click', '#prevBtn', function() {
			nowPage--;
			var start = (nowPage -1) * 5 +1 -5
				//pagetotcount - 4;
			var end = nowPage * 5 -5;
				 // 페이지 버튼 생성 함수
	            function createPageButton(pageNum) {
	              var pageLink = $("<li class='page-link' ></li>").text(pageNum).attr('data-page', pageNum);
	              var pageBtn = $("<li class='page-item'></li>").append(pageLink);
	              return pageBtn;
	            }
	            
	           function setPageButtonVisibility(start, end) {
	        	pagination.find('.page-item').remove();
	        	
						// 페이지 버튼 추가
	      				pagination.empty();
	      				if(start!=1){
	    					pagination.append(prevBtn);
	    				}
		            	for (var i = start; i <=end  ; i++) {
		             	pagination.append(createPageButton(i));
		             	pagetotcount--;
		             	
		            	}
		            	pagination.append(nextBtn);	
				}
				
	            setPageButtonVisibility(start, end);
			
				
				});

		$(document).on('click', '#nextBtn', function() {
			var start = 0;
			var end = 0;
			console.log("nowPage :"+ nowPage);
			if(nowPage==1)
				start = (nowPage ) * 5 +1	
			else
				start = (nowPage -1) * 5 +1

			if(nowPage==1)
				end = (nowPage+1 ) * 5 	
			else
				end = (nowPage) * 5
			
			
			nowPage++;
			console.log("start :"+ start);
			console.log("end :"+ end);
			 // 페이지 버튼 생성 함수
            function createPageButton(pageNum) {
              var pageLink = $("<li class='page-link'></li>").text(pageNum).attr('data-page', pageNum);
              var pageBtn = $("<li class='page-item'></li>").append(pageLink);
              return pageBtn;
            }
            
           function setPageButtonVisibility(start, end) {
        	
        	  
        	pagination.find('.page-item').remove();
					// 페이지 버튼 추가
      				pagination.empty();
      				pagination.append(prevBtn);
	            	for (var i = start; i <=end && i<=pageCount  ; i++) {
	             	pagination.append(createPageButton(i));
	             	
					
	            	}
	            	
	            	if(end <  pageCount){
	            		pagination.append(nextBtn);	
	            	}
	            	
			}
			
            setPageButtonVisibility(start, end);

			});
		
		
		
		// 페이지 버튼 클릭 시 동작할 함수
		$(document).on('click', '.page-link', function() {
			var r = 0;
			var l = 6;
		    var pageNum = parseInt($(this).attr('data-page'));
		    if(isNaN(pageNum)){
		    	pageNum = l;
		    	pageNum = pageNum+5;
		    	
		    }
		    console.log(pageNum);
		 // 가져올 데이터 범위 계산
		    var startIdx = (pageNum - 1) * 12;
		    var endIdx = 12;
		    
		    
		    console.log("checkArr :"+ checkArr);
		    if(checkArr==""){
		    	$.ajax({
			        url: "ajaxTest2",
			        type: "POST",
			        contentType: "application/json; charset=UTF-8",
			        dataType: "json",
			        data: JSON.stringify({
			            "pageNum": pageNum,
			            "startIdx": startIdx,
			            "endIdx": endIdx
			        }),
			        success: function(data) {
			        	console.log(data);
			        	
			        	// carList 초기화 및 데이터 추가
			            carList = data;
			        	pagination.find("#col").remove();
			        	Listsize = carList.length;
						var htmlStr = '차량 <span class="search_prod_count" style="font-size: 30px;">총대수 :</span> <strong>' + Listsize + '</strong>';
						oupname.html(htmlStr);
			        	 // 응답으로 받은 데이터를 사용하여 카드 생성
			            var col = $("#col");
			            col.empty(); // 기존에 있던 내용 제거

			            for (var i = 0; i < 12; i++) { // data 대신 carList를 사용해야 합니다.
			              var item = carList[i];
							
			             var colcard = $("<div></div>").addClass("col")
			              var card = $("<div></div>").addClass("card h-100").css({
			                "border-radius": "30px",
			                "overflow": "hidden"
			              });

			              var img = $("<img>").addClass("card-img-top").attr({
			                "src": "images/" + item.car_photo,
			                "style": "width: 100%; height: 150px;"
			              });

			              var cardBody = $("<div></div>").addClass("card-body").attr("id", "card-" + item.idx).css({
			                "position": "relative",
			                "width": "100%",
			                "height": "150px"
			              });

			              var mainDiv = $("<div></div>").addClass("main").attr("id", "main-" + item.idx).css({
			                "display": "block",
			                "width": "100%",
			                "height": "150px"
			              });

			              var cardTitle = $("<h5></h5>").addClass("card-title").text(item.car_maker);

			              if(item.car_accident=='o')
								var cardText = $("<p></p>").addClass("card-text").text("사고 있음").css({
					                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
					              });
							else
								var cardText = $("<p></p>").addClass("card-text").text("무사고").css({
					                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
					              });

			              mainDiv.append(cardTitle).append(cardText);
			              cardBody.append(mainDiv);
			              card.append(img).append(cardBody);
			              colcard.append(card);
			              col.append(colcard);
			            }
			        }
			        
			     
			    });
		    }else{
		    	$.ajax({
			        url: "ajaxTest1",
			        type: "POST",
			        contentType: "application/json; charset=UTF-8",
			        dataType: "json",
			        data: JSON.stringify({
			            "checkArr": checkArr,
			            "pageNum": pageNum,
			            "startIdx": startIdx,
			            "endIdx": endIdx
			        }),
			        success: function(data) {
			        	console.log(data);
			        	
			        	// carList 초기화 및 데이터 추가
			            carList = data;
			            pagination.find("#col").remove();
			        	Listsize = carList.length;
						var htmlStr = '차량 <span class="search_prod_count" style="font-size: 30px;">총대수 :</span> <strong>' + Listsize + '</strong>';
						oupname.html(htmlStr);
			        	 // 응답으로 받은 데이터를 사용하여 카드 생성
			            var col = $("#col");
			            col.empty(); // 기존에 있던 내용 제거

			            for (var i = 0; i < 12; i++) { // data 대신 carList를 사용해야 합니다.
			              var item = carList[i];
							
			             var colcard = $("<div></div>").addClass("col")
			              var card = $("<div></div>").addClass("card h-100").css({
			                "border-radius": "30px",
			                "overflow": "hidden"
			              });

			              var img = $("<img>").addClass("card-img-top").attr({
			                "src": "images/" + item.car_photo,
			                "style": "width: 100%; height: 150px;"
			              });

			              var cardBody = $("<div></div>").addClass("card-body").attr("id", "card-" + item.idx).css({
			                "position": "relative",
			                "width": "100%",
			                "height": "150px"
			              });

			              var mainDiv = $("<div></div>").addClass("main").attr("id", "main-" + item.idx).css({
			                "display": "block",
			                "width": "100%",
			                "height": "150px"
			              });

			              var cardTitle = $("<h5></h5>").addClass("card-title").text(item.car_maker);

			              if(item.car_accident=='o')
								var cardText = $("<p></p>").addClass("card-text").text("사고 있음").css({
					                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
					              });
							else
								var cardText = $("<p></p>").addClass("card-text").text("무사고").css({
					                "font-family": "'Dokdo', cursive, 'Hahmlet', serif, IBM Plex Sans KR ', sans-serif,' Nanum Gothic ', sans-serif;"
					              });

			              mainDiv.append(cardTitle).append(cardText);
			              cardBody.append(mainDiv);
			              card.append(img).append(cardBody);
			              colcard.append(card);
			              col.append(colcard);
			            }
			        }
			        
			     
			    });
		    }
		    
		});
		
});


</script>
</body>
</html>