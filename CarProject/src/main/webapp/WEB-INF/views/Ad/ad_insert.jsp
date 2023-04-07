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
    
    
    <!-- 드롭존 사용  -->  
    <script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>    
	<link rel="stylesheet" href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css">
	
	<!-- jquery : datepicker -->
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<style type="text/css">
		.ui-datepicker { font:14px dotum; }
		.ui-datepicker select.ui-datepicker-month, 
		.ui-datepicker select.ui-datepicker-year { width: 100px;}
		.ui-datepicker-trigger { margin:0 0 -5px 2px; }
		
	</style>
</head>
<body>
	<%@include file="../Include/header.jsp" %>
	<script>
		jQuery(function($){
			    
			    /*
			    //config 값을 json형식으로 만든후 setDefaults로 설정할수도 있음.
			     
			    $.datepicker.regional['ko'] = {closeText: '닫기',dayNamesShort: ['일','월','화','수','목','금','토']};
			    $.datepicker.setDefaults($.datepicker.regional['ko']);
			    */
			     
			    $("#calander").datepicker({
			        changeMonth:true,
			        changeYear:true,
			        yearRange:"1900:2014",
			        showOn:"both",
			        buttonImage:"../img/ico/calendar.gif",
			        buttonImageOnly:true,
			        dateFormat: 'yy-mm-dd',
			        showOtherMonths: true,
			        selectOtherMonths: true,
			        showMonthAfterYear: true,
			        dayNamesMin: ['일','월', '화', '수', '목', '금', '토'],
			        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			        monthNames: ['년 1월','년 2월','년 3월','년 4월','년 5월','년 6월','년 7월','년 8월','년 9월','년 10월','년 11월','년 12월'],
			        nextText: '다음 달',
			        prevText: '이전 달',
			        beforeShowDay: disableAllTheseDays 
			    });
			     
			});
			 
			// 특정날짜들 배열
			var disabledDays = ["2023-4-8","2013-7-24","2013-7-26"];
			 
			// 주말(토, 일요일) 선택 막기
			function noWeekendsOrHolidays(date) {
			    var noWeekend = jQuery.datepicker.noWeekends(date);
			    return noWeekend[0] ? [true] : noWeekend;
			}
			 
			// 일요일만 선택 막기
			function noSundays(date) {
			  return [date.getDay() != 0, ''];
			}
			 
			// 이전 날짜들은 선택막기
			function noBefore(date){
			    if (date < new Date())
			        return [false];
			    return [true];
			}
			 
			// 특정일 선택막기
			function disableAllTheseDays(date) {
			    var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
			    for (i = 0; i < disabledDays.length; i++) {
			        if($.inArray(y + '-' +(m+1) + '-' + d,disabledDays) != -1) {
			            return [false];
			        }
			    }
			    return [true];
			}	
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
		
		
		/* var today = Date.now().toISOString().split("T")[0]; // 오늘 날짜 가져오기		
		var startDateInput = document.getElementById("start_date");
		
		startDateInput.setAttribute("min", today); // 시작일자 input 요소에 min 속성 지정하기 
		alert(today); */
	</script>
	    <script>        
        //fileDropzone dropzone 설정할 태그의 id로 지정
        Dropzone.options.fileDropzone = {
            url: 'ad_insert', //업로드할 url (ex)컨트롤러)
            init: function () {
                /* 최초 dropzone 설정시 init을 통해 호출 */
                var submitButton = document.querySelector("#btn-upload-file");
                var myDropzone = this; //closure
                submitButton.addEventListener("click", function () {
                    /* console.log("업로드"); //tell Dropzone to process all queued files */
                   
                    myDropzone.processQueue();
                });
            },
            autoProcessQueue: false, // 자동업로드 여부 (true일 경우, 바로 업로드 되어지며, false일 경우, 서버에는 올라가지 않은 상태임 processQueue() 호출시 올라간다.)
            clickable: true, // 클릭가능여부
            thumbnailHeight: 90, // Upload icon size
            thumbnailWidth: 90, // Upload icon size
            maxFiles: 5, // 업로드 파일수
            maxFilesize: 10, // 최대업로드용량 : 10MB
            parallelUploads: 5, // 동시파일업로드 수(이걸 지정한 수 만큼 여러파일을 한번에 컨트롤러에 넘긴다.)
            addRemoveLinks: true, // 삭제버튼 표시 여부
            dictRemoveFile: '삭제', // 삭제버튼 표시 텍스트
            uploadMultiple: false, // 다중업로드 기능            
        };        
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
					<p class="ko_font float_l" style="width: 50%">광고내용</p>			
					<textarea id="counsel_txt" name="contents" placeholder="광고 내용을 입력하세요"></textarea>
					<p class="ko_font float_l" style="width: 50%">사진등록</p>		
					<div class="dropzone" id="fileDropzone" style="margin-top: 50px"></div> 
					<!-- <div class="dropzone" id="fileDropzone" style="margin-top: 50px"></div> -->
     				<!-- <button id="btn-upload-file">서버전송</button>	 -->		
					<input class="ko_font" type="submit" value="등록하기" id="btn_upload-file" style="display: inline-block; margin-left: 280px">				
					<input class="ko_font" type="submit" value="돌아가기" style="display: inline-block;">
					<input type="text" id="calander">				
				</form>				 				
		 </div>
		</article>
	</section>
	<%@include file="../Include/footer.jsp" %>
 
</body>

</html>