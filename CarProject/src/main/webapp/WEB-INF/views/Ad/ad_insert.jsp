<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html lang="ko">
<head>
    <link rel="shortcut icon" href="/favicon.ico or favicon.png(16x16)"><!--파비콘(탭 네임 옆의 아이콘)-->
    <link rel="stylesheet" type="text/css" href="/css/muto_default.css"/>
    <link rel="stylesheet" type="text/css" href="/css/fontello.css"/><!--폰트텔로-->
    <link rel="stylesheet" type="text/css" href="/css/jquery.bxslider.css"/>
    <link rel="stylesheet" type="text/css" href="/css/bttn.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/css/media-query.css"/>
    <script src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/js/jquery.bxslider.min.js"></script>  
</head>
<body>
	<%@include file="../Include/header.jsp" %>
	<script>
		// ad_grade에 따른 가격 계산 함수
		function getPriceByGrade(ad_grade) {
			switch (ad_grade) {
			case "1":
				return 50000;
			case "2":
				return 45000;
			case "3":
				return 40000;
			case "4":
				return 35000;
			case "5":
				return 30000;
			default:
				return 0;
			}
		}
		
		// 시작일, 종료일 input에 change 이벤트 추가
		function getDateDiff(start_date, end_date) {
			const diffTime = Math.abs(end_date - start_date);
			const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
			return diffDays;
		}
		function calculatePrice() {
			const ad_grade = document.getElementsByName("ad_grade")[0].value;
			const start_date = new Date(document
					.getElementsByName("start_date")[0].value);
			const end_date = new Date(
					document.getElementsByName("end_date")[0].value);

			const diffDays = getDateDiff(start_date, end_date);
			const gradePrice = getPriceByGrade(ad_grade);
			const totalPrice = diffDays * gradePrice;

			document.getElementsByName("ad_price")[0].value = totalPrice;
		}
		// 시작일, 종료일 input에 change 이벤트 추가
		const startDateInput = document.getElementsByName("start_date")[0];
		startDateInput.addEventListener("change", calculatePrice);

		const endDateInput = document.getElementsByName("end_date")[0];
		endDateInput.addEventListener("change", calculatePrice);

		// ad_grade select에 change 이벤트 추가
		const adGradeSelect = document.getElementsByName("ad_grade")[0];
		adGradeSelect.addEventListener("change", calculatePrice);
		
		
		var today = Date.now().toISOString().split("T")[0]; // 오늘 날짜 가져오기		
		var startDateInput = document.getElementById("start_date");
		
		startDateInput.setAttribute("min", today); // 시작일자 input 요소에 min 속성 지정하기 
		alert(today);
	</script>
	<section id="section_common" class="min_w_1200">
		<article class="container">
			<div id="sub04" class="buy_banner_2 over_h ko_font">
				<h2 class="ko_font text_center">광고 등록</h2>
				<p class="ko_font text_center">아래 양식을 작성하여 광고를 등록하세요.</p>
				<form name="insert" action="ad_insert" method="post">
					<input type="hidden" name="user_id">
					<!-- 광고 등록 양식 시작 -->
					<p class="ko_font float_l" style="width: 50%">광고유형</p>
					<p class="ko_font float_l" style="width: 50%">위치</p>
					<select class="ok_font float_l" name="ad_gubun">
						<option value=""></option>
						<option value="">중고차판매</option>
						<option value="">기타광고</option>
					</select> 
					<select class="ok_font float_l" name="ad_grade" onchange="getPriceByGrade()">
						<option value=""></option>
						<option value="1">1[50000]</option>
						<option value="2">2[45000]</option>
						<option value="3">3[40000]</option>
						<option value="4">4[35000]</option>
						<option value="5">5[30000]</option>
					</select>
					<p class="ko_font float_l" style="width: 50%">시작일</p>
					<p class="ko_font float_l" style="width: 50%">종료일</p>
					<input class="float_l" type="date" name="start_date" id="start_date">
					<input class="float_l" type="date" name="end_date" onchange="calculatePrice()">
					<p class="ko_font float_l" style="width: 50%">제목</p>
					<p class="ko_font float_l" style="width: 50%">금액</p>
					<input class="float_l" type="text"> 
					<input type="number" readonly="readonly" name="ad_price">					
					<textarea id="counsel_txt" name="contents" placeholder="광고 내용을 입력하세요"></textarea>					
					<input class="ko_font" type="submit" value="등록하기" style="display: inline-block;">				
					<input class="ko_font" type="submit" value="등록하기" style="display: inline-block;">
				</form>				
		 </div>
		</article>
	</section>
	<%@include file="../Include/footer.jsp" %>
 
</body>

</html>