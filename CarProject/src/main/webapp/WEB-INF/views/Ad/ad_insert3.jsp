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
        function formCheck(f) {
            var f = document.forms.form;
            if(!f.hp.value) {
                alert("연락처를 입력하세요.");
                f.hp.focus();
                return false;
            }
            if(!f.subject.value) {
                alert("문의 제목을 입력하세요.");
                f.subject.focus();
                return false;
            }
            if(!f.memo.value) {
                alert("문의사항를 입력하세요.");
                f.memo.focus();
                return false;
            }

            var cObj = document.getElementById("confirmCheck");
            if(!cObj.checked) {
                alert("개인정보보호정책에 동의 하셔야 합니다.");
                cObj.focus();
                return false;
            }
        }
    </script>
    <section id="section_common" class="min_w_1200">
        <article class="container">
            <div id="sub04" class="buy_banner_2 over_h ko_font">
                <div>
                    <form name="form" method="POST" action="consult_ok2.php" onsubmit="return formCheck(this);" style="display:inline;">
                        <input type="hidden" name="id" value="">
                        <input type="hidden" name="q_id" value="">
                        <input type="hidden" name="no" value="">
                        <input type="hidden" name="m_no" value="">
                        <input type="hidden" name="mode" value="add">
                        <input type="hidden" name="code" value="install">
                        <input type="hidden" name="passwd" value="00327592a00fced2b1e459f017039f83">
                        <input type="hidden" name="posGubun" value="할부금융" />
                        <input type="hidden" name="afterAction" value="home" />
                        <h2 class="ko_font text_center">정보입력</h2>
                        <p class="ko_font text_center">고객님의 정보를 남겨주시면 견적카 전문상담원이 확인 즉시 연락드립니다.</p>
                        <input class="float_l" type="number" name="hp" placeholder="연락처를 남겨주세요.('-'는 제외)">
                         <input type="date" name="">
                        <input class="float_l" type="text" name="subject" placeholder="문의제목을 입력해주세요.">
                        <textarea id="counsel_txt" name="memo" cols="30" rows="10" placeholder="문의사항을 입력해주세요."></textarea>
                        <input type="checkbox" name="confirmCheck" id="confirmCheck" value="Y" />
                        <label for="confirmCheck"><span></span>개인정보취급방침동의 <a class="privacy_2">[약관보기]</a></label>
                        <input class="ko_font" type="submit" value="대행 신청하기">
                    </form>
                </div>

            </div>
            <div class="agreeDetail agreeDetail_3">
                <h2 class="ko_font">개인정보취급방침</h2>
                <h3>* 개인정보의 수집목적 및 이용목적</h3>
                <p>원할한 차량판매와 구입등 고객상담 및 보다 편리한 중고차 서비스 제공을 위해 개인정보를 수집하고 있습니다. <br>1. 비밀번호는 별도의 회원가입없이 해당글에 대한 수정 및 상담완료 처리시 필요<br>
                    2. 성명, 이메일, 전화번호, 지역 : 상담글에 대한 상담답변 처리 및 응대시 활용
                </p>
                <h3>* 수집하는 개인정보의 항목</h3>
                <p>
                    - 개인식별정보: 이름, 연락처(휴대폰), 지역<br>
                    - 차량식별정보: 차량정보, 연식, 상세정보
                </p>
                <h3>* 수집하는 개인정보의 보유 및 이용기간</h3>
                <p>
                    해당정보는 상담 내역의 신청 및 처리결과 확인 등을 위해 계속적으로 보유하며, 동의하신 내용을 언제든지 철회할 수 있습니다.
                    고객의 직접 요청 시 해당 개인정보의 이용을 즉시 중지하고 지체없이 파기합니다.
                </p>
                <a class="close">확인</a>
            </div>
            <script type="text/javascript">
                $(function(){
                    $('.privacy_2').click(function(){
                        $('.agreeDetail').css('display','block');
                    });
                    $('.close').click(function(){
                        $('.agreeDetail').css('display','none');
                    });
                });
            </script>
        </article>
    </section>
	<%@include file="../Include/footer.jsp" %>
   	<script>
        $("a.navicon-button").click(function(){
            $(this).toggleClass("open");
        });
        $("a.mobile_navicon-button").click(function(){
            $(this).toggleClass("open");
            $('.mobile_menu').slideToggle();
        });
    </script>
    <script>
        $( document ).ready(function() {
            $('.bxslider').bxSlider({
                mode: 'fade',
                auto: true,
            });
        });
    </script>
    <script>
    // select
    $( document ).ready(function() {
        var select = $("select#sub_select");

        select.change(function(){
            var select_name = $(this).children("option:selected").text();
            $(this).siblings("label").text(select_name);
        });
    });
    </script>


<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_bf609f027ce";
if (!_nasa) var _nasa={};
wcs.inflow("xn--l89a913csre.com");
wcs_do(_nasa);
</script>


    <!-- Google Code for &#49345;&#45812;&#49888;&#52397; Conversion Page -->
    <!--
    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 823315541;
        var google_conversion_label = "JDtGCMGuiXsQ1ZjLiAM";
        var google_remarketing_only = false;
        /* ]]> */
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <noscript>
        <div style="display:inline;">
            <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/823315541/?label=JDtGCMGuiXsQ1ZjLiAM&amp;guid=ON&amp;script=0"/>
        </div>
    </noscript>
    -->
</body>

</html>