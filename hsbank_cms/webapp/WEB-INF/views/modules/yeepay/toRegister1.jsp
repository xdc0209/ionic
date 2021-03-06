<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<title>易宝测试入口</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<%@include file="/WEB-INF/views/include/head.jsp"%>

<script>
	
</script>
</head>
<body>
	<div id="lA1" class="tab-pane active">
		<h3>1注册明细</h3>
		<hr />
		<form:form class="form-horizontal" modelAttribute="toRegisterReq"
			action="${ctx}/yeepay/toRegister">
			<div class="control-group">
				<label class="control-label">商户编号：</label>
				<div class="controls">
					<label><%=request.getParameter("platformNo")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">请求流水号：</label>
				<div class="controls">
					<label><%=request.getParameter("requestNo")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">商户平台会员标识：</label>
				<div class="controls">
					<label><%=request.getParameter("platformUserNo")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">昵称：</label>
				<div class="controls">
					<label><%=request.getParameter("nickName")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">真实姓名：</label>
				<div class="controls">
					<label><%=request.getParameter("realName")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">身份证类型：</label>
				<div class="controls">
					<label><%=request.getParameter("idCardType")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">身份证号：</label>
				<div class="controls">
					<label><%=request.getParameter("idCardNo")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">手机号码：</label>
				<div class="controls">
					<label><%=request.getParameter("mobile")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">邮箱：</label>
				<div class="controls">
					<label><%=request.getParameter("email")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">页面调回Url：</label>
				<div class="controls">
					<label><%=request.getParameter("callbackUrl")%></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">服务通知URL：</label>
				<div class="controls">
					<label><%=request.getParameter("notifyUrl")%></label>
				</div>
			</div>
		</form:form>
		<form method="post"  action="<%=request.getAttribute("yeepayURL")%>">

			<textarea style="width: 500px; height: 200px; display: none"
				name="req"><%=request.getAttribute("req")%></textarea>
			<input type="hidden" name="sign"
				value="<%=request.getAttribute("sign")%>" />


			<div class="form:form-actions">
				<input id="lA1Go" class="btn btn-success" type="submit" value="确定" />
			</div>
		</form>
	</div>
</body>
</html>