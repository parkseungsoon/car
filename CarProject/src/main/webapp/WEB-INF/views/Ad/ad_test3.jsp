<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<style type="text/css">
	<!--
	/*
	.ui-datepicker { font:14px dotum; }
	.ui-datepicker select.ui-datepicker-month, 
	.ui-datepicker select.ui-datepicker-year { width: 100px;}
	.ui-datepicker-trigger { margin:0 0 -5px 2px; }
	*/
	-->
	</style>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
	var disabledDays = ["2023-7-9","2013-7-24","2013-7-26"];
	 
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
	</script>
</head>
<body>
	<input type="text" id="calander">
</body>
</html>