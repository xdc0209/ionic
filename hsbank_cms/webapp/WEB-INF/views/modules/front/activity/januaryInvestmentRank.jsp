<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctxStatic }/modules/front/images/util/favicon.ico" rel="shortcut icon">
<link href="${ctxStatic }/bootstrap/2.3.2/css_cerulean/bootstrap.css" rel="stylesheet"/>
<link href="${ctxStatic }/modules/front/css/util/util.css?${version }" rel="stylesheet" />
<script src="${ctxStatic }/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctxStatic }/modules/front/js/jquery.downCount.js" type="text/javascript"></script>

<title>岁末感恩3重礼！贴心好福利，豪气过大年。</title>
<script>
//百度站长统计代码
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?07b2a85308e4705c86371a9310089957";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<script type="text/javascript">
	var hasGetAward = ${hasGetAward };
	$(function() {
		$('#roll_top').click(function () {
			$('html,body').animate({
				scrollTop : '0px'
			}, 300);//返回顶部所用的时间 返回顶部也可调用goto()函数
		});
		if(hasGetAward) {
			$("#unGetAwardContent").removeClass("show");
			$("#hasGotAwardContent").show();
			$("#gotAwardValue").html("${awardValue }");
		}
	});
	
	function getAward() {
		$.getJSON("${ctxFront}/customer/investmentRank/getJanuaryActivityAward", null, function(data) {
			if(data.isSuccess) {
				$("#getAwardTips").show();
				$("#getAwardValue").html(data.awardValue);
				$("#gotAwardValue").html(data.awardValue);
				$("#unGetAwardContent").removeClass("show");
			} else {
				$("#canNotGetAwardTips").show();
				$("#unGetAwardContent").hide();
			}
		});
	}
	function closeGetAwardTips() {
		$("#getAwardTips").hide();
		$("#hasGotAwardContent").show();
	}
</script>
<style type="text/css">
body{ background-color:#fef7da;}
.font-size-12{ font-size:12px;}
.display-area{ position:relative; width:1000px; margin:0 auto;}
.right-nav{ position:fixed; right:50px; top:50%; margin-top:-218px; width:264px; height:436px; z-index:999;}
.right-nav .nav-top{ width:264px; height:229px; background:url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-01.png) no-repeat;}
.right-nav ul{ margin:0 auto; width:174px;}
.right-nav ul li a{ display:block; line-height:54px; text-align:center; color:#a34722; border-bottom:1px solid #f6c314; font-size:24px; background-color:#fbd736;}
.right-nav ul li a.li-last{ border-bottom:none; border-radius:0 0 4px 4px; -moz-border-radius:0 0 4px 4px; -webkit-border-radius:0 0 4px 4px; background-color:#ff8e20; color:#fff;}
.main-banner{ height:885px; background:url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-02.png) no-repeat  center 0px;}
.main-content { min-height:800px;}
.content-title{ text-align:center;}
.main-one{ padding:10px 0 80px 0; background-color:#eeaf00;}
.content-one{ position:relative; text-align:center; margin:40px auto 0 auto; width:1000px; height:766px; border-radius:10px; -webkit-border-radius:10px; background: #fade64 url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-07.png) no-repeat  center 0px;}
.content-one .one-title{ padding:81px 0 10px 0; height:40px; line-height:40px; font-size:30px; color:#9d4906;}
.content-one .one-tip{ padding:224px 0 30px 0; font-size:30px; color:#fbe651; line-height:50px;}
.one-button{ position:relative; width:224px; height:52px; line-height:52px; overflow:hidden; border-radius:8px; -moz-border-radius:8px; -webkit-border-radius:8px; text-align:center; display:inline-block; font-size:24px; background-color:#ffe561; color:#57320a; -webkit-box-shadow:0 3px 0 rgba(218, 169, 15, 1); -moz-box-shadow:0 3px 0 rgba(218, 169, 15, 1); box-shadow:0 3px 0 rgba(218, 169, 15, 1); transition: all ease-out .3s; -moz-transition: all ease-out .3s; -webkit-transition: all ease-out .3s;}
.content-one .one-button:hover{ color:#ff4403; border-radius:0; -moz-border-radius:0; -webkit-border-radius:0; box-shadow:none; -moz-box-shadow:none; -webkit-box-shadow:none;}
.one-button::before, .one-button::after { overflow:hidden; content: attr(data-text);position: absolute;width: 100%;height: 50%;left: 0;background: #fbda30;color: #c62033;overflow: hidden;-webkit-transition: -webkit-transform 0.3s;transition: transform 0.3s;-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);}
.one-button::before {top: 0;border-radius:8px 8px 0 0;-moz-border-radius:8px 8px 0 0;-webkit-border-radius:8px 8px 0 0;}
.one-button::after { bottom: 0;line-height: 0; border-radius:0 0 8px 8px; -moz-border-radius:0 0 8px 8px; -webkit-border-radius:0 0 8px 8px;}
.one-button > em {display: block;font-style:normal;line-height:52px;-webkit-transform: scale3d(0.2, 0.2, 1);transform: scale3d(0.2, 0.2, 1);opacity: 0;-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;transition: transform 0.3s, opacity 0.3s;-webkit-transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);transition-timing-function: cubic-bezier(0.2, 1, 0.3, 1);}
.one-button:hover::before {border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;-webkit-transform: translate3d(0, -100%, 0);transform: translate3d(0, -100%, 0);}
.one-button:hover::after {border-radius:8px;-moz-border-radius:8px;-webkit-border-radius:8px;-webkit-transform: translate3d(0, 100%, 0);transform: translate3d(0, 100%, 0);}
.one-button:hover > em {opacity: 1;-webkit-transform: scale3d(1, 1, 1);transform: scale3d(1, 1, 1);}
.content-one .one-rule{ padding:160px 0 0 0; font-size:20px; color:#9d4906;}
.main-two{ padding:80px 0 80px 0; background-color:#f96633;}
.content-two{ text-align:center; margin:0px auto; width:1000px; min-height:766px;}
.content-two .two-title{ padding:30px 0 40px 0; height:40px; line-height:40px; font-size:30px; color:#f9ddab;}
.two-list{ margin-right:-20px;}
.two-list li{ float:left; margin-right:20px; margin-bottom:20px; width:320px; height:340px; background-color:#fef7da; border-radius:10px; -moz-border-radius:10px; -webkit-border-radius:10px;}
.two-list li .li-card{ width:320px; height:243px;}
.two-list li .li-text{ height:90px; line-height:100px; font-size:17px; color:#9d4906;}
.li-button{ position:relative; margin:0 auto; width:156px; height:44px; line-height:44px; font-weight:bold; font-size:20px; display:block; overflow:hidden; text-align:center; background-color:#ffe561; color:#c62033; border-radius:4px; -moz-border-radius:4px; -webkit-border-radius:4px; -webkit-box-shadow:0 3px 0 rgba(218, 169, 15, 1); -moz-box-shadow:0 3px 0 rgba(218, 169, 15, 1); box-shadow:0 3px 0 rgba(218, 169, 15, 1); transition: all ease-out .3s; -moz-transition: all ease-out .3s; -webkit-transition: all ease-out .3s;}
.li-button:hover{ box-shadow:none; -moz-box-shadow:none; -webkit-box-shadow:none;}
.li-button em{ font-style:normal;}
.li-button::before { border-radius:4px; -moz-border-radius:4px; -webkit-border-radius:4px;content: attr(data-text);position: absolute;top: 0;left: 0;width: 156px;height:44px;line-height:44px;text-align:center;background: #fbda30;-webkit-transform: translate3d(-100%, 0, 0);transform: translate3d(-100%, 0, 0);}
.li-button > em {display: block;}
.li-button::before, .li-button > em {-webkit-transition: -webkit-transform 0.3s;transition: transform 0.3s;-webkit-transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);}
.li-button:hover::before {-webkit-transform: translate3d(0, 0, 0);transform: translate3d(0, 0, 0);color:#ff4403;}
.li-button:hover > em {-webkit-transform: translate3d(0, 100%, 0);transform: translate3d(0, 100%, 0);}
.two-text{ padding:30px 0 0 0; font-size:20px; color:#f9daa1;}
.main-three{ padding:80px 0 80px 0; background-color:#8d9fed;}
.content-three{ text-align:center; margin:0px auto; min-height:766px;}
.content-three .three-title{ padding:30px 0 10px 0; height:40px; line-height:40px; font-size:30px; color:#ffed85;}
.three-m-area{ min-height:582px; background:url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-08.png) no-repeat  center 0px;}
.top-three{ padding-top:54px; padding-bottom:60px; margin-right:-70px;}
.top-three li{ float:left; margin-right:70px; width:284px; height:310px; text-align:center;}
.top-three li span{ display:block;}
.top-three li .mobile-number{ padding-top:84px; font-size:24px; color:#333;}
.top-three li .grand-total{ padding-top:60px; font-size:24px; color:#ff652f;}
.top-three li .award{ padding-top:65px; font-size:22px; color:#ff652f; font-weight:bold;}
.top-three li .award em{ padding-right:8px; font-style:normal; font-size:30px;}
.investment-tip{ height:30px; line-height:30px; padding:20px 0 24px 135px; text-align:left; font-size:26px; color:#fefb01;}
.countdown{ padding-left:334px;}
.countdown li{ padding-right:47px; float:left; height:44px; line-height:38px; font-size:26px; color:#ff652f;}
.ranking-list{ margin-top:40px; background-color:#8b60dd;}
.ranking-list dt{ height:80px; line-height:80px; font-size:26px; color:#ffed85;}
.ranking-list dt span{ float:left; text-align:center;}
.ranking-list dd{ height:48px; line-height:48px; font-size:24px; color:#ffed85;}
.ranking-list dd.odd{ background-color:#8257d5;}
.ranking-list dd span{ float:left; text-align:center;}
.ranking-list .s1{ width:170px;}
.ranking-list .s2{ width:480px;}
.ranking-list .s3{ width:350px;}
.three-rule{ padding:30px 70px 10px; line-height:36px; font-size:20px; text-align:left; color:#ffed85; background-color:#8b60dd;}
.three-rule p{ margin-bottom:20px;}
.main-four{ margin:0 auto; width:1000px; padding:80px 0 80px 0;}
.content-four{ margin:0px auto; font-size:24px; color:#797d74;}
.content-four p{ margin-top:16px; line-height:40px;}
.pupop-bg{ position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,.8); z-index: 997;}
.pupop-content{ position:absolute; top:50%; left:50%; margin-left:-157.5px; margin-top:-242.5px; width:315px; height:485px; background:url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-09.png) no-repeat  center 0px;}
.pupop-content .popup-close{ position:relative; top:-58px; left:140px; width:35px; height:58px; display:block;}
.pupop-content .popup-close a{ width:35px; height:35px; display:block; background:url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-10.png) no-repeat; cursor:pointer;transition: all ease-out .3s; -o-transition: all ease-out .3s; -ms-transition: all ease-out .3s; -moz-transition: all ease-out .3s; -webkit-transition: all ease-out .3s;}
.pupop-content .popup-close a:hover{ transform: rotate(180deg); -o-transform: rotate(180deg); -ms-transform: rotate(180deg); -moz-transform: rotate(180deg); -webkit-transform: rotate(180deg);}
.pupop-content .popup-close i{ margin:0 auto; width:1px; height:23px; display:block; background-color:#fff;}
.pupop-content .pupup-text{ padding:160px 0 30px 0; font-size:30px; color:#fbe651; line-height:50px;}
.pupop-content .pupup-button{ padding-top:20px;}
.pupop-content.pupop-content2{ top:137px; margin-top:0;}
.pupop-content.pupop-content2 .pupup-text{ padding-top:210px;}
.no-data{ width:1000px; height:336px; background:url(${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-11.png) no-repeat}
</style>
</head>
<body>
<!--浮动菜单-->
<div class="right-nav">
	<div class="nav-top"></div>
    <ul>
    	<li><a href="#one" name="#one">新年红包</a></li>
    	<li><a href="#two" name="#two">进阶福利</a></li>
    	<li><a href="#three" name="#three">终极大赏</a></li>
    	<li><a href="javascript:;" id="roll_top" class="li-last">回到顶部</a></li>
    </ul>
</div>
<!--头部-->
<div class="activity-header">
	<div class="display-area clearfix">
    	<div class="header-logo pull-left">
        	<a href="${ctxFront }/index"><img id="logo" class="logo" src="${ctxStatic }/modules/front/images/util/logo.png"></a>
        </div>
    	<div class="header-btn pull-right">
        	<a href="${ctxFront }/index">进入首页</a>
        </div>
    </div>
</div>
<!--banner-->
<div class="main-banner"></div>
<!--主要内容-->
<div class="main-content">
	<div class="main-one">
    	<div class="display-area">
        	<div class="content-title" id="one"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-03.png"></div>
        	<div class="content-one">
            	<div class="one-title">投资用户，人人都有份</div>
                <div id="unGetAwardContent" class="show">
                    <p class="one-tip">恭喜你获得<br>新年红包</p>
                    <c:choose>
	                	<c:when test="${empty customerBase }">
	                <a href="${ctxFront }/login" class="one-button" data-text="立即打开"><em>立即打开</em></a>
	                	</c:when>
	                	<c:otherwise>
	                <a href="javascript:;" onclick="getAward()" class="one-button" data-text="立即打开"><em>立即打开</em></a>
	                	</c:otherwise>
	                </c:choose>
                </div>
                <div id="canNotGetAwardTips" class="hide">
                    <p class="one-tip">您需要完成1笔<br>投资才能拆红包</p>
                    <a href="${ctxFront }/wytz" class="one-button" data-text="立即投资"><em>立即投资</em></a>
                </div>
                <div id="getAwardTips" class="pupop-bg" style="display:none">
                	<div class="pupop-content">
                        <div class="popup-close">
                        	<a href="javascript:;" onclick="closeGetAwardTips()"></a>
                            <i></i>
                        </div>
                        <div class="pupup-text">恭喜你获得<br><span id="getAwardValue">188</span>元现金券</div>
                        <div class="pupup-button"><a href="${ctxFront }/customer/ticket/my" class="one-button" data-text="立即查看"><em>立即查看</em></a></div>
                    </div>
                </div>
                <div id="hasGotAwardContent" class="pupop-content pupop-content2 hide">
                    <div class="pupup-text">恭喜你已获得<br><span id="gotAwardValue">188</span>元现金券</div>
                    <div class="pupup-button"><a href="${ctxFront }/customer/ticket/my" class="one-button" data-text="立即查看"><em>立即查看</em></a></div>
                </div>
                <p class="one-rule">红包规则：所有用户在活动期间完成投资，就可获得新年红包，最高188元，新年好运走起！</p>
            </div>
        </div>
	</div>
	<div class="main-two">
    	 <div class="display-area">
        	<div class="content-title" id="two"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-04.png"></div>
            <div class="content-two">
            	<div class="two-title">投资赢福利，年货任性买</div>
                <ul class="clearfix two-list">
                	<li>
                    	<div class="li-card"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-card-1.png"></div>
                        <p class="li-text">累计投资满2万元，送30元 京东E卡</p>
                    </li>
                	<li>
                    	<div class="li-card"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-card-2.png"></div>
                        <p class="li-text">累计投资满5万元，送80元 京东E卡</p>
                    </li>
                	<li>
                    	<div class="li-card"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-card-3.png"></div>
                        <p class="li-text">累计投资满10万元，送200元 京东E卡</p>
                    </li>
                	<li>
                    	<div class="li-card"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-card-4.png"></div>
                        <p class="li-text">累计投资满20万元，送300元 京东E卡</p>
                    </li>
                	<li>
                    	<div class="li-card"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-card-5.png"></div>
                        <p class="li-text">累计投资满30万元，送500元 京东E卡</p>
                    </li>
                	<li>
                    	<div class="li-card"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-card-6.png"></div>
                        <p class="li-text">累计投资满50万元，送1000元 京东E卡</p>
                    </li>
                </ul>
                <div style="padding:20px 0 20px 0"><a href="${ctxFront }/wytz" class="li-button" data-text="我要福利"><em>投资拿福利</em></a></div>
                <div class="two-text">福利规则：所有花生金服用户在活动期间的累计投资额达到指定额度，就可获得对应面额的京东E卡。</div>
            </div>
        </div>
    </div>
	<div class="main-three">
        <div class="content-title" id="three"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-05.png"></div>
        <div class="content-three">
            <div class="three-title">投资大咖PK，究竟花落谁家</div>
            <div class="three-m-area">
            	<div class="display-area">
    				<ul class="clearfix top-three">
                        <li>
                            <c:choose>
                            	<c:when test="${fn:length(projectInvestmentRankList) > 0 }">
                            <span class="mobile-number">${projectInvestmentRankList[0].mobile }</span>
                            <span class="grand-total"><fmt:formatNumber value="${projectInvestmentRankList[0].amount }" pattern="#0.00" />元</span>
                            	</c:when>
                            	<c:otherwise>
                            <span class="mobile-number">******</span>
                            <span class="grand-total">0.00元</span>
                            	</c:otherwise>
                            </c:choose>
                            <span class="award"><em>3888元</em>京东E卡</span>
                        </li>
                        <li>
                            <c:choose>
                            	<c:when test="${fn:length(projectInvestmentRankList) > 1 }">
                            <span class="mobile-number">${projectInvestmentRankList[1].mobile }</span>
                            <span class="grand-total"><fmt:formatNumber value="${projectInvestmentRankList[1].amount }" pattern="#0.00" />元</span>
                            	</c:when>
                            	<c:otherwise>
                            <span class="mobile-number">******</span>
                            <span class="grand-total">0.00元</span>
                            	</c:otherwise>
                            </c:choose>
                            <span class="award"><em>1888元</em>京东E卡</span>
                        </li>
                        <li>
                            <c:choose>
                            	<c:when test="${fn:length(projectInvestmentRankList) > 2 }">
                            <span class="mobile-number">${projectInvestmentRankList[2].mobile }</span>
                            <span class="grand-total"><fmt:formatNumber value="${projectInvestmentRankList[2].amount }" pattern="#0.00" />元</span>
                            	</c:when>
                            	<c:otherwise>
                            <span class="mobile-number">******</span>
                            <span class="grand-total">0.00元</span>
                            	</c:otherwise>
                            </c:choose>
                            <span class="award"><em>888元</em>京东E卡</span>
                        </li>
                    </ul>
                    <div class="clearfix">
                    	<div class="pull-left">
                        	<div class="investment-tip">
	                        	<c:choose>
				                	<c:when test="${empty customerBase }">
				                <p>请登录后查看本月累计投资额（年化）</p>
				                	</c:when>
				                	<c:otherwise>
				                <p>您本月累计投资额（年化）：<fmt:formatNumber value="${januaryInvestmentAmount }" pattern="#0.00" /> 元</p>
				                	</c:otherwise>
				                </c:choose>
                                
                            </div>
                            <div class="">
                            	<ul class="clearfix countdown">
                                    <li>
                                        <span class="days">00</span>
                                    </li>
                                    <li>
                                        <span class="hours">00</span>
                                    </li>
                                    <li>
                                        <span class="minutes">00</span>
                                    </li>
                                    <li>
                                        <span class="seconds">00</span>
                                    </li>
                                </ul>
                                <script class="javascript" type="text/javascript">
								$('.countdown').downCount({
									date: '1/31/2016 23:59:59',
									offset: +8
								}, function () {
									//alert('倒计时结束!');
								});
								</script>
                            </div>
                        </div>
                        <!--未登录显示“立即登录”，已登录显示“立即投资”-->
                        <div class="pull-left" style=" margin:43px 0 0 56px;">
                        	<c:choose>
			                	<c:when test="${empty customerBase }">
			                <a href="${ctxFront }/login" class="li-button" data-text="立即登录"><em>立即登录</em></a>
			                	</c:when>
			                	<c:otherwise>
			                <a href="${ctxFront }/wytz" class="li-button" data-text="立即投资"><em>立即投资</em></a>
			                	</c:otherwise>
			                </c:choose>
                       	</div>
                    </div>
                    <dl class="ranking-list">
                        <dt class="clearfix">
                        	<span class="s1">排名</span>
                        	<span class="s2">手机号码</span>
                        	<span class="s3">累计投资额（年化）</span>
                        </dt>
                        <c:forEach var="projectInvestmentRank" items="${projectInvestmentRankList }" varStatus="status">
                        	<c:if test="${status.index > 2 }">
                        <dd class="clearfix odd">
                        	<span class="s1">${status.index + 1 }</span>
                        	<span class="s2">${projectInvestmentRank.mobile }</span>
                        	<span class="s3"><fmt:formatNumber value="${projectInvestmentRank.amount }" pattern="#0.00" />元</span>
                        </dd>
                        	</c:if>
                        </c:forEach>
                    </dl>
                    <c:if test="${fn:length(projectInvestmentRankList) lt 4 }">
                    	<div class="no-data"></div>
                    </c:if>
                    <div class="three-rule">
                    	<p>获奖规则：活动期间，累计投资额(年化）最高的前3名用户，可获得终极大奖<br>
计算公式：投资额（年化）= 投资额*投资期限/12<br>
例如：单笔投资10000元，投资期限为3个月，则投资额（年化）为:10000*3/12=2500元</p>
                    	<p>* 注：排名每12小时更新一次！</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="main-four">
    	 <div class="content-title" id="three"><img src="${ctxStatic }/modules/front/images/activity/leaderboard-jan/20151229-06.png"></div>
         <div class="content-four">
         	<p>1、活动时间：2016.1.1-1.31</p>
         	<p>2、参与用户：花生金服平台用户皆可参与</p>
         	<p>3、投资范围：所有投资项目（“活花生”除外）</p>
         	<p>4、奖励说明：①新年红包均为现金券，请登录个人账户查看；②京东E卡（电子卡），激活密码将在活动结束后5个工作日内以短信形式通知到获奖用户</p>
         	<p>5、使用说明：京东E卡（电子卡）的使用规则请参照京东网站公布的章程</p>
         	<p>6、本活动最终解释权归花生金服所有</p>
         </div>
    </div>
</div>
<!-- 版权申明区域 -->
<div id="footer_area" class="footer_area">
	<div class="footer_menu">
       	<span class=""><a href="${ctxFront }/gywm/index">关于我们</a></span>
           <span class="line">|</span>
       	<span class=""><a href="${ctxFront }/gywm/jrwm">加入我们</a></span>
           <span class="line">|</span>
       	<span class=""><a href="${ctxFront }/gywm/lxwm">联系我们</a></span>
           <span class="line">|</span>
       	<span class=""><a href="${ctxFront }/index#cooperationAgency">友情链接</a></span>
           <span class="line">|</span>
       	<span class=""><a href="javascript:void(0);">网站地图</a></span>
           <span class="line">|</span>
       	<span class=""><a href="javascript:void(0);">法律声明</a></span>
           <span class="line">|</span>
       	<span class=""><a href="javascript:void(0);">黑名单</a></span>
    </div>
	<div class="div_height_20"></div>
	<div class="footer_text">
    	<span>客服邮箱：service@fdjf.net</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <span>服务热线：<b class="font_size_18">400-969-6599</b>&nbsp;(工作日9:00~18:00)</span>
    </div>
    <div class="div_height_10"></div>
	<div class="footer_text">©2015上海蓄积金融信息服务有限公司&nbsp;&nbsp;All right reserved.&nbsp;&nbsp;沪ICP备15025483号</div>
   	<div class="div_height_20"></div>
   	<div class="footer_logo">
    	<a href="javascript:void(0);" class="logo_gs"></a>
    	<a href="javascript:void(0);" class="logo_nt"></a>
    	<a href="javascript:void(0);" class="logo_jc"></a>
   	</div>
</div>
<!--Start of DoubleClick Floodlight Tag: Please do not remove Activity name of this tag: CN_Direct_HsBank360_Retargeting-->
<script type="text/javascript">
var axel = Math.random() + "";
var a = axel * 10000000000000;
document.write('<img src="https://ad.doubleclick.net/ddm/activity/src=5141770;type=invmedia;cat=urjh3w2a;ord=' + a + '?"  alt="" style="display:block;height:0;" />');
</script>
<noscript>
<img src="https://ad.doubleclick.net/ddm/activity/src=5141770;type=invmedia;cat=urjh3w2a;ord=1?" alt="" style="display:block;height:0;" />
</noscript>
<!-- End of DoubleClick Floodlight Tag: Please do not remove -->
</body>
</html>