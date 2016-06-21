<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>会员信用认证信息管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				messages: {
					carCreditAuthRemark:{required:"请填写认证说明"}
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
			$("#btnReject").click(function(){
				var creditScore = $("#carScore");
				creditScore.removeClass("required");
				creditScore.val("");
				$("#carCreditAuthCode").val("-1");
				$("#inputForm").submit();
				creditScore.addClass("required");
			});
			$("#btnAgree").click(function(){
				$("#carCreditAuthCode").val("2");
				$("#inputForm").submit();
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/customer/customerCreditAuth/">会员信用认证信息列表</a></li>
		<li class="active"><a href="${ctx}/customer/customerCreditAuth/formCar?id=${customerCreditAuth.id}">审核会员车产信息<shiro:lacksPermission name="customer:customerCreditAuth:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form modelAttribute="customerCar" class="form-horizontal">
		<div class="control-group">
			<label class="control-label">车辆型号：</label>
			<div class="controls">
				<form:input path="carType" readonly="true" htmlEscape="false" maxlength="20" class="input-xlarge"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">未还贷款（元）：</label>
			<div class="controls">
				<form:input path="loanValue" readonly="true" htmlEscape="false" maxlength="12" class="input-xlarge digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">行驶里程（公里）：</label>
			<div class="controls">
				<form:input path="distance" readonly="true" htmlEscape="false" maxlength="4" class="input-xlarge digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">购买年份：</label>
			<div class="controls">
				<form:input path="buyYear" readonly="true" htmlEscape="false" maxlength="4" class="input-xlarge digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">人车合照：</label>
			<div class="controls">
				<form:hidden id="carFile" path="carFile" htmlEscape="false" maxlength="500" class="input-xlarge required"/>
				<sys:ckfinder input="carFile" readonly="true" type="images" uploadPath="/customer" selectMultiple="true"/>
			</div>
		</div>
	</form:form>
	<form:form id="inputForm" modelAttribute="customerCreditAuth" action="${ctx}/customer/customerCreditAuth/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		<form:hidden path="carCreditAuthCode"/>
		<div class="control-group">
			<label class="control-label">认证说明：</label>
			<div class="controls">
				<form:textarea path="carCreditAuthRemark" placeholder="请填写认证说明" htmlEscape="false" rows="4" maxlength="500" class="input-xxlarge required"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">车产认证得分：</label>
			<div class="controls">
				<form:input path="carScore" htmlEscape="false" min="0" max="10" maxlength="11" class="input-xlarge required number"/>
				<span class="help-inline">分数范围：0分-10分。(车辆所有情况满分10分， 由风控人员给出得分)</span>
			</div>
		</div>
		<div class="form-actions">
			<c:if test="${customerCreditAuth.carCreditAuthCode==1 }">
			<shiro:hasPermission name="customer:customerCreditAuth:edit">
			<input id="btnReject" class="btn btn-danger" type="button" value="驳 回"/>&nbsp;
			<input id="btnAgree" class="btn btn-success" type="button" value="通 过"/>&nbsp;
			</shiro:hasPermission>
			</c:if>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>