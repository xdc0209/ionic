<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="decorator" content="front_with_juanzhou" />
<title></title>
<style type="text/css">
.main_content{ padding-bottom:20px; margin:0 auto; width:980px; border:1px solid #c9b093; background:#fff;}
.pic1, .pic2, .pic3, .pic4, .pic5{ position:relative; margin:0 auto; text-align:center;}
.pic1{ margin-top:20px;}
.btn-mt{ position:absolute; z-index:10; width:269px; height:53px; text-align:center; line-height:53px; font-size:24px; color:#fff; display:block; background:url(${ctxStatic }/modules/front/images/activity/marketing/btn_orange.png) no-repeat; text-decoration:none;}
.btn-zc{ right:58px; bottom:60px;}
.btn-tz{ left:72px; bottom:50px;}
.btn-sy{ left:50%; bottom:50px; margin-left:-134px;}
</style>
</head>

<body>
<div class="div_bg_001">
	<!--主要内容-->
    <div class="juanzhou_middle pb30">
        <div class="main_content">
        	<div class="pic1">
            	<img src="${ctxStatic }/modules/front/images/activity/marketing/marketing_pic_01.jpg">
            </div>
        	<div class="pic2">
                <a href="${ctxFront }/register" class="btn-mt btn-zc">注册领红包</a>
            	<img src="${ctxStatic }/modules/front/images/activity/marketing/marketing_pic_02.jpg">
            </div>
        	<div class="pic3">
                <a href="${ctxFront }/xszq?flag=1" class="btn-mt btn-tz">立即投资</a>
            	<img src="${ctxStatic }/modules/front/images/activity/marketing/marketing_pic_03.jpg">
            </div>
        	<div class="pic4">
            	<img src="${ctxStatic }/modules/front/images/activity/marketing/marketing_pic_04.jpg">
            </div>
        	<div class="pic5">
                <a href="${ctxFront }/index" class="btn-mt btn-sy">进入首页</a>
            	<img src="${ctxStatic }/modules/front/images/activity/marketing/marketing_pic_05.jpg">
            </div>
        </div>            
    </div>
</div>

</body>
</html>