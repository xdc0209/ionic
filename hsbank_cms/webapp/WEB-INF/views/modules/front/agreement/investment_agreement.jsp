<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="${ctxStatic }/bootstrap/2.3.2/css_cerulean/bootstrap.css" rel="stylesheet">
	<link href="${ctxStatic }/modules/front/css/util/util.css?${version }" rel="stylesheet">

	<title>花生金服 hsbank360.com-更优质、更安全、更便捷、更有诚意的互联网金融P2P平台</title>
</head>

<body>

<div class="div_bg_001">
	<div class="agreement_area">
    	<div class="agreement">
            <div class="title"><span>融资协议书</div>
            
            <div class="loan_field">
            	<dl class="clearfix">
                	<dt>甲方（出借人）：</dt>
                    <dd>${investmentBase.customerName }</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>花生金服用户名：</dt>
                    <dd>${p2p:vagueName(investmentAccount.accountName) }</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>身份证号码：</dt>
                    <dd>${p2p:vagueCertNum(investmentBase.certNum) }</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>联系电话：</dt>
                    <dd>${p2p:vagueMobile(investmentBase.mobile) }</dd>
                </dl>
            </div>
            <div class="loan_field">
            	<dl class="clearfix">
                	<dt>乙方（借款人）：</dt>
                    <dd>${p2p:vagueName(borrowerBase.customerName) }</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>花生金服用户名：</dt>
                    <dd>${p2p:vagueName(borrowerAccount.accountName) }</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>联系电话：</dt>
                    <dd>${p2p:vagueMobile(borrowerBase.mobile) }</dd>
                </dl>
            </div>
            <div class="loan_field">
            	<dl class="clearfix">
                	<dt>丙方（服务方）：</dt>
                    <dd>上海富定金融信息服务股份有限公司</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>法定代表人：</dt>
                    <dd>高海波</dd>
                </dl>
            	<dl class="clearfix">
                	<dt>通讯地址：</dt>
                    <dd>上海市浦东新区世纪大道100号环球金融中心69楼</dd>
                </dl>
            </div>
            
            <dl class="item">
                <dt>鉴于：</dt>
                <dd>1、甲方承诺对本协议涉及的款项具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实、有效、合法的。</dd>
                <dd>2、乙方有融资需求，甲方亦同意借款，双方建立借贷关系均系真实意思表示。</dd>
                <dd>3、乙方已在花生金服网站注册，并承诺其提供给丙方的信息是完全真实有效的。</dd>
                <dd>4、丙方是一家在上海市合法成立并有效存续的有限责任公司，拥有 <a href="http://www.hsbank360.com" target="_blank" class="btn_text_gold">www.hsbank360.com</a>  网站（下称“花生金服”）的经营权，提供信息咨询，为交易方提供信息推介、撮合等中介服务。</dd>
                <dd>据此，各方经友好协商一致，达成如下协议，以资共同遵照履行：</dd>
            </dl>
            <dl class="item">
                <dt>第一条、借款明细</dt>
                <dd>
                	<table class="table_loan" cellpadding="0" cellspacing="0" border="1">
                    	<tbody>
                        	<tr>
                        		<td width="17%" height="40" align="center">借款金额</td>
                                <td width="83%"><p><fmt:formatNumber value="${loanAmount }" pattern="#0.00"/>元</p></td>
                            </tr>
                        	<tr>
                        		<td height="40" align="center">借款期限</td>
                                <td>
                                	<p>自<span>${startYear }</span>年<span>${startMonth }</span>月<span>${startDay }</span>日始
                                	至<span>${endYear }</span>年<span>${endMonth }</span>月<span>${endDay }</span>日止。</p>
                               	</td>
                            </tr>
                        	<tr>
                        		<td height="40" align="center">借款年利率</td>
                                <td><p><fmt:formatNumber value="${rate }" type="percent" maxFractionDigits="1" /></p></td>
                            </tr>
                        	<tr>
                        		<td height="40" align="center">借款用途</td>
                                <td><p>${useType }</p></td>
                            </tr>
                        	<tr>
                        		<td height="62" align="center">还款日</td>
                                <td><p>
                                	<c:choose>
                                		<c:when test="${projectBaseInfo.repaymentMode eq '1' }">
                                		${endYear }年${endMonth }月${endDay }日
                                		</c:when>
                                		<c:otherwise>
                                		每月${endDay }日 （若当月没有该日，则还款日为当月最后一天，节假日不顺延）。
                                		</c:otherwise>
                                	</c:choose>
                                </p></td>
                            </tr>
                        </tbody>
                    </table>
                </dd>
                <dd>注：上述借款明细部分内容可能根据借款利率的调整而调整，如有变化，以本协议签订时的花生金服网上发布或更新的具体内容为准。</dd>
            </dl>
            <dl class="item">
                <dt>第二条、合约各方确认</dt>
                <dd>（一）、各方同意并确认，各方通过自行或授权其代理人根据花生金服网站有关规则和说明，在花生金服网站通过点击花生金服网站相关按钮进行借款申请操作等方式确认签署本协议。</dd>
                <dd>（二）、各方已认真阅读和理解本协议所有内容并自愿按本协议相关约定履行各自的权利义务。</dd>
                <dd>（三）、借款人承诺不得挪用本协议借款资金用于其他本协议以外之用途。</dd>
                <dd>（四）、通过花生金服网站提供的服务，出借人向借款人成功出借资金时，本协议即为生效。</dd>
                <dd>（五）、各方承诺，不得利用花生金服平台进行信用卡套现、洗钱或其他违法、违纪行为，否则应依法承担由此产生的法律责任与后果。 </dd>
                <dd>（六）、各方确认，借款人/出借人授权和委托丙方按照本协议约定实施的行为或采取的措施所产生的法律后果均由借款人/出借人个人承担。</dd>
            </dl>
            <dl class="item">
                <dt>第三条、甲方有权监督借款的使用情况。如发现乙方将上述借款用于非法用途，甲方有权随时停止借款或提前收回部分或全部借款（还本付息），且不承担违约责任。</dt>
            </dl>
            <dl class="item">
                <dt>第四条、乙方愿意按照以下第（${(projectBaseInfo.repaymentMode eq '1') ? '四' : '三' }）种方式偿还借款本息，直至乙方还清全部借款本息为止：</dt>
                <dd>（一）、采用等额本息还款法的，每期还本付息额计算公式为： 每期还本付息额=贷款本金×期利率+贷款本金×期利率÷[（1＋期利率）还款总期数 -1]。</dd>
                <dd>（二）、采用等额本金还款法的，每期还本付息额计算公式为： 每期还本付息额=贷款本金÷还款总期数+（贷款本金-已归还本金累计额）×期利率。 </dd>
                <dd>（三）、采用先息后本的，利息计算公式为：每期利息=贷款剩余本金×年化利率÷365×实际天数。</dd>
                <dd>（四）、采用到期还本付息的，利息计算公式为：总利息=贷款本金×年化利率÷365×实际天数。</dd>
                <dd>（五）、其他乙方同意的还款方法<span class="underline"></span></dd>
            </dl>
            <dl class="item">
                <dt>第五条、提前还本</dt>
                <dd>（一）、乙方提前还本，需事先向甲方提出申请，经甲方同意后，方可提前偿还全部借款本金。</dd>
                <dd>（二）、乙方提前还本时，应首先偿清拖欠本息（如有）。乙方提前部分还本的，还须先结清当期应还本息。</dd>
                <dd>（三）、乙方申请全部提前偿还借款本金的，甲方按照提前还本时本协议执行的借款利率、提前还本的金额以及当期的实际用款天数计收利息，此前已计收的借款利息不再调整，同时乙方应当向甲方、丙方承担违约责任并足额支付剩余借款本金2%的违约金（其中由甲方、丙方各收取违约金的1%）。</dd>
            </dl>
            <dl class="item">
                <dt>第六条、甲方的主要权利与义务</dt>
                <dd>（一）、甲方享有其所出借款项所带来的利息收益，并应自行承担并缴付利息收益应当缴付之税费 (如有) 。</dd>
                <dd>（二）、就任一甲方在本协议项下对乙方的部分或全部债权，任一甲方均有权根据自己的真实意思表示对外转让。</dd>
                <dd>（三）、如乙方违反本协议项下对甲方负有的任何义务，甲方有权要求丙方披露其已获得的乙方信息、资料。</dd>
                <dd>（四）、甲方承诺对依据本协议获得的乙方信息、资料予以保密，除用于本协议目的进行资金出借与合理催收外，不得向外转让或披露。</dd>
            </dl>
            <dl class="item">
                <dt>第七条、乙方的主要权利与义务</dt>
                <dd>（一）、乙方应按本协议约定的用途使用借款，不得将借款挪作他用，乙方无条件接受甲方对借款使用情况进行监督检查；</dd>
                <dd>（二）、乙方应向对甲方、丙方提供的借款有关信息资料的真实性、有效性、合法性负责；</dd>
                <dd>（三）、乙方应当按期、足额向甲方归还每期应还本金和利息，以及按期、足额向丙方支付相关费用。</dd>
                <dd>（四）、除本协议另有约定，乙方不得将本协议项下的任何权利义务转让给任何其他第三方。</dd>
            </dl>
            <dl class="item">
                <dt>第八条、丙方的主要权利与义务</dt>
                <dd>（一）、丙方应按照本协议的规定，恪尽职守，以诚实、信用、谨慎、有效管理的原则为出借人、借款人进行服务。</dd>
                <dd>（二）、丙方对出借人、借款人的个人信息、资产情况及其他服务相关信息和资料依法保密。</dd>
                <dd>（三）、丙方为出借人提供与借款人相关的信用信息等，进行必要的形式审核服务，但对借款人相关资料的真实性无法进行保证且不承担责任。</dd>
                <dd>（四）、丙方有权就为本协议借款所提供的服务向乙方收取咨询费，咨询费的金额和收取方式由乙丙双方另行约定。</dd>
            </dl>
            <dl class="item">
                <dt>第九条、债权转让</dt>
                <dd>（一）、各方同意并确认，甲方可将本协议项下的全部借款债权转让予丙方或第三人（该第三人可以为一人或多人，下同），但该第三人必须为花生金服平台的注册用户，丙方除外。</dd>
                <dd>（二）、乙方知晓并同意，甲方持有债权30日后于本协议履行过程中可能将其享有的债权的全部或部分转让给不特定的第三人，且转让次数无限定。甲方根据本协议转让借款债权的，无须事先通知乙方，债权受让人依法承接甲方在本协议项下享有的权利和义务，但乙方明确告知或说明本协议项下债权不得转让的除外。</dd>
            </dl>
            <dl class="item">
                <dt>第十条、委托代理确认</dt>
                <dd>甲方同意并确认，授权丙方作为其代理人，代理其行使其在本协议项下之各项权利，包括但不限于债权转让通知、向乙方进行借款的违约提醒及催收工作 (包括但不限于电话通知、上门通知、发律师函、对乙方提起诉讼等)等 ，丙方也可以委托其他主体进行前述借款的违约提醒和催收工作。</dd>
            </dl>
            <dl class="item">
                <dt>第十一条、借款担保</dt>
                <dd>（一）、担保方式为<span class="underline">${fns:getDictLabel(projectBaseInfo.safeguardMode, 'project_safeguard_mode_dict', '') }</span>。</dd>
                <dd>1、保证担保范围</dd>
                <dd>借款金额（大写）<span class="underline">${upperLoanAmount }</span>元及利息、借款人应支付的违约金（包括罚息）、赔偿金以及实现借款债权和抵押权的费用（包括但不限于律师费、保全费、诉讼费、合理费用等）。</dd>
                <dd>2、保证方式</dd>
                <dd>连带责任保证。如借款协议期届满乙方没有履行债务的，保证人应当承担连带保证责任。</dd>
                <dd>3、保证期间</dd>
                <dd>自借款协议生效之日起至借款协议履行期限届满之日后两年止。</dd>
                <dd>4、保证效力</dd>
                <dd>借款协议其他条款无效并不影响本保证人承诺担保条款的效力。</dd>
            </dl>
            <dl class="item">
                <dt>第十二条、违约责任</dt>
                <dd><b>（一）、乙方未按本协议约定及时偿还借款，即出现乙方逾期归还借款的，乙方则应按逾期金额和天数支付逾期管理费和逾期违约金，具体支付可参见如下：</b></dd>
                <dd>1、如乙方无正当理由逾期归还借款，如逾期天数＜30天，乙方应当向丙方支付逾期管理费（剩余金额*0.05%*逾期天数），同时还应向甲方支付逾期违约金（剩余金额*0.1%*逾期天数）。</dd>
                <dd>2、如乙方无正当理由逾期归还借款，如逾期天数≥30天的，乙方应当向丙方支付逾期管理费（剩余金额*0.1%*逾期天数），同时还应向甲方支付逾期违约金（剩余金额*0.5%*逾期天数）。</dd>
                <dd><b>（二）、乙方发生下列情况之一时，甲方有权停止向乙方发放借款，或提前收回已发放借款的本息，或解除本协议：</b></dd>
                <dd>1、本协议生效后，无论何种原因导致乙方未能发生本协议项下的用途；</dd>
                <dd>2、乙方未按本协议约定用途使用借款的，罚息利率为借款利率上浮50%；</dd>
                <dd>3、乙方向甲方提供虚假借款资料的；</dd>
                <dd>4、乙方被宣告失踪，而其财产代管人拒绝履行本协议的；</dd>
                <dd>5、乙方丧失民事行为能力，而其监护人拒绝履行本协议的；</dd>
                <dd>6、乙方死亡或被宣告死亡而其财产合法继承人拒绝继续履行本协议的；</dd>
                <dd>7、乙方涉及或即将涉及重大的诉讼或仲裁程序及其他法律纠纷，足以影响其偿债能力。</dd>
            </dl>
            <dl class="item">
                <dt>第十三条、通知</dt>
                <dd>（一）、本协议任何一方当事人送达给其他各方的通知，须按本协议所列的通讯地址、联系电话或其他联系方式进行。</dd>
                <dd>（二）、如本协议任何一方的上述通讯地址和联系方法发生变化，应立即通知对方。协议当事人的名称、法定代表人、住所等发生变化而未书面通知债权人的，债权人按本协议所载资料发送的所有通知或文书，视同送达。</dd>
                <dd>（三）、任何通知或各种通讯联系只要按照上述地址（通知地址变更的，则按变更后的地址）发送，即应视为被送达。</dd>
            </dl>
            <dl class="item">
                <dt>第十四条、争议解决</dt>
                <dd>如在履行本协议过程中发生争议，应友好协商解决。如协商不成，任何一方均可向甲方所在地有管辖权的人民法院提起诉讼。</dd>
            </dl>
            <dl class="item">
                <dt>第十五条、其他事宜</dt>
                <dd>（一）、各方可以书面协议方式对本协议作出修改和补充。经过各方签署的有关本协议的补充协议是本协议组成部分，具有与本协议同等的法律效力。</dd>
                <dd>（二）、本协议书正本一式叁份，签字盖章各方各执一份，均具有同等法律效力。</dd>
            </dl>
            <dl class="item">
                <dd><b>※温馨提示：立约各方均应仔细通读协议条款，甲方已应其他立约各方的要求作了必要的解释说明，现立约各方已全面知悉合同条款的法律含义。如一经您的签字确认，即视为您对所有的内容充分理解且无异议。</b></dd>
            </dl>
      </div>
    </div>
</div>

</body>
</html>
