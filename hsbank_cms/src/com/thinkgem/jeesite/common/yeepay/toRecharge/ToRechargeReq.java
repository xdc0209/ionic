/**
 * 
 */
package com.thinkgem.jeesite.common.yeepay.toRecharge;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlRootElement;

import com.thinkgem.jeesite.common.mapper.JaxbMapper;

/**
 * @author yangtao
 *
 */
@XmlRootElement(name = "request")
@XmlAccessorType(XmlAccessType.FIELD)
public class ToRechargeReq {
	@XmlAttribute(name = "platformNo")
	public String platformNo; //商户编号
	public String platformUserNo; //平台用户编号
	public String requestNo; //请求流水号
	public String amount; //充值金额，如果丌传则有用户填写充值金额
	public String feeMode; //【见费率模式】
	public String callbackUrl; //页面回跳URL
	public String notifyUrl; //服务器通知URL
	public String payProduct;
	
	public String getPayProduct() {
		return payProduct;
	}
	public void setPayProduct(String payProduct) {
		this.payProduct = payProduct;
	}
	public String getPlatformNo() {
		return platformNo;
	}
	public void setPlatformNo(String platformNo) {
		this.platformNo = platformNo;
	}
	public String getPlatformUserNo() {
		return platformUserNo;
	}
	public void setPlatformUserNo(String platformUserNo) {
		this.platformUserNo = platformUserNo;
	}
	public String getRequestNo() {
		return requestNo;
	}
	public void setRequestNo(String requestNo) {
		this.requestNo = requestNo;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getFeeMode() {
		return feeMode;
	}
	public void setFeeMode(String feeMode) {
		this.feeMode = feeMode;
	}
	public String getCallbackUrl() {
		return callbackUrl;
	}
	public void setCallbackUrl(String callbackUrl) {
		this.callbackUrl = callbackUrl;
	}
	public String getNotifyUrl() {
		return notifyUrl;
	}
	public void setNotifyUrl(String notifyUrl) {
		this.notifyUrl = notifyUrl;
	}
	public String toReq(){
		return JaxbMapper.toXml(this);
	}

}