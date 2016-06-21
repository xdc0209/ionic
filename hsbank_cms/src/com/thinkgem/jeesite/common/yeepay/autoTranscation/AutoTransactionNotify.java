/**
 * 
 */
package com.thinkgem.jeesite.common.yeepay.autoTranscation;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author yangtao
 *
 */
@XmlRootElement(name = "notify")
@XmlAccessorType(XmlAccessType.FIELD)
public class AutoTransactionNotify {
	public String platformNo; //商户编号
	public String bizType; //固定值
	public String code; //【见返回码】
	public String message; //描述信息
	public String status; //固定值：DIRECT
	public String requestNo; //请求流水号


	public String getPlatformNo() {
		return platformNo;
	}

	public void setPlatformNo(String platformNo) {
		this.platformNo = platformNo;
	}

	public String getBizType() {
		return bizType;
	}

	public void setBizType(String bizType) {
		this.bizType = bizType;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRequestNo() {
		return requestNo;
	}

	public void setRequestNo(String requestNo) {
		this.requestNo = requestNo;
	}

}
