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
$( function() {
    
    $.datepicker.setDefaults({
        closeText: "닫기",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "오늘",
        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)','7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
        monthNamesShort: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNames: ['1월','2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],  
        dayNamesShot: ['일', '월', '화', '수', '목', '금', '토'],
        //dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        
        changeMonth: true, //  월 변경가능
        changeYear: true, //  년 변경가능
        showMonthAfterYear: true, //  년 뒤에 월 표시
        dateFormat: "yy-mm-dd",  //  년월일 표시방법  yy-mm-dd 또는 yymmdd
        firstDay: 1, //  0: 일요일 부터 시작, 1:월요일 부터 시작
        autoSize: true, //  default: false, input 사이즈를 자동으로 리사이즈.
        showAnim: "fold", //  default: show , fold
        
        showWeek: false, //  주차 = true : 보이기 / false : 숨기기
        weekHeader: "주차", //  default: Wk, 주차 헤드 부분의 명칭 설정
        
        showButtonPanel: true, //  하단에 Today, Done 버튼 Display
        gotoCurrent: false, //  default: false, true일 경우에는 Today버튼 클릭 시 현재 일자로 이동하지 못함
        
        // 달력버튼 관련
        showOn: "button"
        /* buttonImage: "<?php echo $g4[path]; ?>/img/calendar.gif",
        buttonImageOnly: true */
    });

    // 달력 하나씩 사용할때
    $( "#datepicker" ).datepicker({
        //  기준일 옵션
        yearRange: "c-99:c+99",
        minDate: "+1d",  //  기본선택일이 1일 이후가 선택되는 옵션
        maxDate: "+5d",
        
        //  선택날짜의 요일을 input 필드에 넣기
        altField: "#alternate",
        altFormat: "DD"   //  altFormat: "DD, d MM, yy",
    });
    
    // 시작날짜와 끝나는 날짜를 함께 선택해서 사용할때
    var dates = $( "#datepicker_from, #datepicker_to" ).datepicker({
        //defaultDate: "+1w",  // 기본선택일이 1 week 이후가 선택되는 옵션
        changeMonth: true,
        numberOfMonths: 1,  // 한눈에 보이는 월달력수
        onSelect: function( selectedDate ) {
            var option = this.id == "datepicker_from" ? "minDate" : "maxDate",
            instance = $( this ).data( "datepicker" ),
            date = $.datepicker.parseDate(
            instance.settings.dateFormat ||
            $.datepicker._defaults.dateFormat,
            selectedDate, instance.settings );
            dates.not( this ).datepicker( "option", option, date );
        }
    });

} );
</script>


</head>
<body>
	// 개별사용할때
<input type="text" id="datepicker" style="width:80px;" name="date1" value="">

// 선택일자와 요일을 함께 표현하기
날짜: <input type="text" id="datepicker" style="width:80px;" readonly value=''>&nbsp;
요일: <input type="text" id="alternate" style="width:50px;" readonly> &nbsp;&nbsp;<font color="#999999">※ 달력 을 클릭하여 날짜를 입력하세요.</font>

// 시작날짜와 끝날짜를 선택할때
시작일: <input type="text" id="datepicker_from" style="width:80px;" name="date1" value="">
종료일: <input type="text" id="datepicker_to" style="width:80px;" name="date2" value="">
 

[ 팁1 ]
년도가 현재 기준년도에서 +10년 , -10년 표시되는것을 +50년 , -50년으로 늘리기
jquery.ui.datepicker.js 의 78라인을 수정
  수정전 : yearRange: 'c-10:c+10', // Range of years to display in drop-down,
  수정후 : yearRange: 'c-70:c+50', // Range of years to display in drop-down,
</body>
</html>