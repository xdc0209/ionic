<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户意见反馈审核</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$('#channelId').select2("readonly", true);
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
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
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/feedback/userFeedbackInfo/">用户意见反馈列表</a></li>
		<li class="active"><a href="${ctx}/feedback/userFeedbackInfo/reviewform?id=${userFeedbackInfo.id}">意见反馈审核</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="userFeedbackInfo" action="${ctx}/feedback/userFeedbackInfo/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<form:hidden path="result" value="1"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">渠道：</label>
			<div class="controls">
				<form:select path="channelId" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('op_term_dict')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">反馈内容：</label>
			<div class="controls">
				<form:textarea path="content" htmlEscape="false" rows="4" maxlength="1000" class="input-xxlarge " readonly="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">反馈时间：</label>
			<div class="controls">
				<input name="createDt" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${userFeedbackInfo.createDt}" pattern="yyyy-MM-dd HH:mm:ss"/>"
				 readonly="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">处理意见：</label>
			<div class="controls">
				<form:textarea path="returnContent" htmlEscape="false" rows="4" maxlength="500" class="input-xxlarge required"/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="feedback:userFeedbackInfo:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="审核"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>