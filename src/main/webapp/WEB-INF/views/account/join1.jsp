<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style type="text/css">
.mainArea {
	width: 70%;
	height: 900px;
	background-color: white;
	margin: 0 auto;
}
*{margin: 0;padding: 0;box-sizing: border-box}
body{background-color: #f7f7f7;}
ul>li{list-style: none}
a{text-decoration: none;}
.clearfix::after{content: "";display: block;clear: both;}
#joinForm{width: 70%;margin: 0 auto;}
ul.join_box{border: 1px solid #ddd;background-color: #fff;}
.checkBox,.checkBox>ul{position: relative;}
.checkBox>ul>li{float: left;}
.checkBox>ul>li:first-child{width: 85%;padding: 15px;font-weight: 600;color: #888;}
.checkBox>ul>li:nth-child(2){position: absolute;top: 50%;right: 30px;margin-top: -12px;}
.checkBox textarea{width: 96%;height: 90px; margin: 0 2%;background-color: #f7f7f7;color: #888; border: none;}
.footBtwrap{margin-top: 15px;}
.footBtwrap>li{float: left;width: 50%;height: 60px;}
.footBtwrap>li>button{display: block; width: 100%;height: 100%; font-size: 20px;text-align: center;line-height: 60px;}
.fpmgBt1{background-color: #fff;color:#888}
.fpmgBt2{background-color: pink;color: #fff}
</style>

</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<jsp:include page="../common/joinHeader.jsp"/>
	<br>
	<div class="mainArea">
		<h3 style="padding: 20px;">
			<b>회원가입</b>
		</h3>
		<br>
		<h4 align="center">
			<b>키즈 랜드 약관 동의</b>
		</h4>
		<h5 align="center">서비스 약관 및 개인정보 수집, 이용에 동의해 주세요.</h5>

		<br>
			<ul class="join_box">
				<li class="checkBox check01">
					<ul class="clearfix">
						<li>이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</li>
						<li class="checkAllBtn"><input type="checkbox" name="chkAll"
							id="chk" class="chkAll"></li>
					</ul>
				</li>
				<li class="checkBox check02">
					<ul class="clearfix">
						<li>키즈랜드 이용약관 동의 <span style="color:red">(필수)</span></li>
						<li class="checkBtn"><input type="checkbox" name="chk" class="check1">
						</li>
					</ul> 
					<textarea name="" id="" rows="100">
[ 키즈랜드 이용약관 ]

제 1 조 (목적)
이 약관은 주식회사 키즈랜드(이하 "회사"라 한다)가 운영하는 키즈랜드 인터넷 사이트 및 키즈랜드 모바일 애플리케이션에서 제공하는 서비스(이하 "서비스"라 한다)를 이용함에 있어 "회사"와 회원의 권리∙의무 및 책임 사항, 기타 필요한 사항 등을 규정함을 목적으로 합니다. *「PC통신, 무선, 스마트폰/아이폰앱 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」

제 2 조 (약관의 명시와 설명 및 개정)
"회사"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소, 전화번호, 전자우편주소, 사업자등록번호 등을 회원이 쉽게 알 수 있도록 "서비스" 초기 화면에 게시합니다. 다만, 약관의 구체적 내용은 회원이 연결화면을 통하여 볼 수 있습니다.
"회사"는 『약관의 규제에 관한 법률』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『전자상거래 등에서의 소비자보호에 관한 법률』, 『전자문서 및 전자거래 기본법』, 『전자서명법』, 『소비자기본법』 등 관계법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
"회사"가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자의 15일 전부터 적용일 이후 상당 기간 동안 "서비스" 페이지에 공지합니다. 다만, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안 "서비스" 페이지에 공지하고 기존 회원에게는 회원의 이메일 주소로 이메일을 발송하거나 알림 메시지를 띄우는 등 합리적으로 가능한 방법으로 명확히 고지 또는 공지합니다.
"회사"가 전항에 따라 고지ᆞ공지한 날로부터 개정약관의 시행일 7일 후까지 거부의사를 표시하지 않으면 변경된 약관을 승인한 것으로 본다는 뜻을 명확하게 고지ᆞ공지하였음에도 거부의 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 이용 계약을 해지할 수 있습니다.
이 약관에서 정하지 아니한 사항과 해석에 관하여는 관계법령 및 상관례에 따릅니다.
제 3 조 (회사의 의무)
"회사"는 관계법령과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.
"회사"는 회원이 안전하게 "서비스"를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 노력하며 개인정보 처리방침을 공시하고 준수합니다.
"회사"는 서비스 이용과 관련하여 발생하는 이용자의 불만 또는 피해구제요청을 적절하게 처리할 수 있도록 필요한 인력 및 시스템을 구비합니다.
"회사"는 서비스 이용과 관련하여 "회원"으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다.
제 4 조 (회사의 권리)
"회사"는 "서비스"를 통해 제공되는 콘텐츠(이하 "콘텐츠"라고 한다)를 사전 심사, 거부, 검색, 격리, 삭제 또는 이동할 권리를 보유합니다. 그러나 이러한 의무를 지지는 않습니다. "회사"는 "서비스"를 구성하는 모든 소프트웨어 및 그에 관한 모든 지적재산권 등과 관련된 모든 법적 권리 및 이익을 가지고 있습니다.
"회사"는 "서비스"를 안전하고 정상적으로 운영하기 위해 회원이 제공하는 콘텐츠에 대한 일정 권리를 회원으로부터 얻어야 합니다. 따라서 회원은 당사 "서비스"를 이용해 제공한 콘텐츠에 대해 "회사"가 "서비스"에 회원의 콘텐츠를 수정, 복제 및 배포할 수 있는 권리를 부여하는 것에 동의합니다. 또한 "회사"가 "서비스" 제공에 대한 계약상 관계가 있는 타인에 대하여 해당 "서비스" 제공의 목적으로 해당 콘텐츠의 이용을 가능하게 하며 해당 콘텐츠에 대한 권리를 양도할 수 있고 법적 의무를 준수하기 위해 회원의 콘텐츠를 제 3자가 사용하는 것을 허용할 수 있다는 것에도 동의합니다.
이 약관에서 "회사"에 부여된 권리를 제외하고 학부모 회원은 회원의 콘텐츠에 대한 모든 권리를 보유합니다. 회원의 동의 없이 "회사"는 회원의 콘텐츠를 공개할 수 없습니다. 단, 회원이 공유를 목적으로 배포한 콘텐츠 또는 회원의 동의를 얻은 콘텐츠에 한해서는 회원의 콘텐츠를 이용, 전시, 배포 및 수정하는 것을 동의하는 것으로 봅니다.
"회사"는 회원의 "서비스"의 이용 또는 회원 계정의 사용을 해지 또는 휴면 상태로 전환 할 수 있습니다. "회사"가 회원의 계정 또는 "서비스" 이용을 종료하는 이유는 다음과 같으며 "서비스" 제공 측면 및 "회사"의 정책에 반하는 경우가 포함됩니다.
회원이 이 약관 또는 개별 계약을 위반한 경우
회원의 요청 또는 회원 스스로 회원 계정을 삭제한 경우
회원이 "서비스"를 1년 이상 미사용한 경우
회원이 "서비스" 이용과 관련해 "회사" 또는 타인에게 지불해야 하는 비용의 미불 및 체납한 경우
정부 기관의 요청이 있는 경우
기타 중대한 사유로 인하여 "회사"가 "서비스" 제공을 지속하는 것이 부적당하다고 인정하는 경우
제 5 조 (회원의 권리 및 의무)
회원은 "회사"의 "서비스"를 통해 회원 본인이 제공, 게시 또는 표시한 콘텐츠에 한해 저작권 및 기타 권리를 보유합니다.
"회사"는 이 약관의 효력이 다할 때까지 이 약관이 허용하는 범위에서 "회사"가 회원에게 제공하는 "서비스"에 대해 양도 불가능한 비독점적인 이용권한을 회원에게 제공합니다.
회원은 "회사"의 "서비스"를 이용하여 공개적으로 게시 또는 비공개로 전달하거나 저장된 모든 사진, 음성, 텍스트, 동영상 등 기타자료에 대한 책임을 동의합니다. 회원이 "회사"의 "서비스"를 통해 회원의 콘텐츠를 게시 등을 하는 것은 타인의 어떠한 권리도 침해하지 않음을 진술 보증하는 것으로 봅니다.
회원은 "서비스"와 관련하여 회원에게 "회사"가 정한 이용조건에 따라 계정, ID, 콘텐츠 등을 이용할 수 있는 이용권만을 부여 받으며, 회원은 "서비스"를 이용함으로써 얻은 정보를 "회사"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 등 기타 방법에 의하여 영리 목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.
회원은 회원의 계정에서 발생하는 일체의 행위 및 행위에 따른 결과에 대해 책임을 지는 것에 동의합니다. 회원은 이 약관 및 모든 관계법령에 따라 "회사"의 "서비스"를 이용하는 것에 동의합니다.
제 6 조 (서비스 정의 및 이용조건)
"회사"는 "서비스"를 연중무휴, 1일 24시간 제공함을 원칙으로 합니다.
"회사"는 "서비스"를 이용하기 위해 회원에게 생년월일, 가장 최근의 연락처 및 기타 정보를 제출하는 것을 요청할 수 있으며, 회원은 이러한 정보의 정확성과 완전성을 유지해야 합니다. 회원은 "서비스"의 이용을 위해, 또는 타인이 회원의 계정에 접근해 사용하거나 수정하는 것을 허용하기 위해 사용자 이름, 암호, 이메일 주소를 제공하는 경우도 있습니다.
"회사"는 회원이 "회사"에 정확한 정보를 제출하지 아니하거나 회원의 계정 정보를 안전하게 보관하지 않음으로 인한 손실 및 손해에 대해서 책임을 지지 않습니다.
회원은 "서비스"를 이용하는데 필요한 장비 및 통신 비용 등 일체의 비용을 별도로 지불해야 합니다.
제 7 조 (유료서비스의 이용)
"회사"는 "서비스"를 무료로 제공하고 있으나, 일부 "서비스"의 경우 유료로 제공할 수 있습니다. 예를 들면, 키즈랜드에서 자녀의 콘텐츠를 무료로 주고 받거나 다운로드 받을 수 있으나, 전체 콘텐츠들을 한번에 일괄 다운로드하는 등의 부가기능은 유료로 이용이 가능합니다.
회원이 "회사"가 유료로 제공하는 서비스(이하 "유료서비스"라 한다)를 이용하는 경우 이용대금을 납부한 후 이용하는 것을 원칙으로 합니다. "회사"가 제공하는 "유료서비스"에 대한 이용요금의 결제 방법은 핸드폰결제, 신용카드결제, 계좌이체, 무통장입금, 선불전자지급수단결제 등이 있으며 각 "유료서비스"마다 결제 방법에 차이가 있을 수 있습니다.
"회사"는 결제의 이행을 위하여 반드시 필요한 회원의 개인정보를 추가적으로 요구할 수 있으며, 회원은 "회사"가 요구하는 개인정보를 정확하게 제공하여야 합니다.
개별 "유료서비스" 이용계약을 체결한 회원은 이용계약이 성립한 날로부터 7일 이내에, 체결된 이용계약이 다르게 이행된 경우에는 "유료서비스"를 이용할 수 있는 날로부터 3월 이내 또는 그 사실을 알거나 알 수 있었던 날로부터 30일 이내에 청약을 철회할 수 있습니다. 다만, "회사"의 "유료서비스"는 『전자상거래 등에서의 소비자보호에 관한 법률』 및 『콘텐츠산업진흥법』 등에서 규정하는 청약철회가 불가능한 서비스가 포함되어 있습니다. 이 경우 "회사"는 청약철회권의 제한을 위해 동 법에 따라 다음 각 호 중 하나의 조치를 취합니다.
청약의 철회가 불가능한 유료서비스에 대한 사실을 표시사항에 포함
시용상품을 제공
한시적 또는 일부이용 등의 방법을 제공
회원 개인의 귀책사유로 이용요금을 환불하는 경우 일반적인 방법은 아래와 같습니다.
"회사"가 제공하는 "유료서비스"가 결제 후 1회의 이용만으로 서비스의 이용이나 구매가 완료되는 서비스인 경우 해당 "유료서비스"를 이용한 후에는 환불이 불가능합니다.
"회사"가 제공하는 "유료서비스"가 결제 후 1개월(결제 기준) 이하로 지속되는 서비스인 경우 해지일로부터 이용일수에 해당하는 금액을 제외한 나머지 금액을 환불합니다. 본 항의 규정은 1개월 단위로 매월 결제되는 "유료서비스"의 경우에도 적용됩니다.
"회사"가 제공하는 "유료서비스"가 결제 후 1개월(결제 기준)을 초과하여 지속되는 서비스인 경우 해지일로부터 이용일수에 해당하는 금액을 제외한 나머지 금액을 환불합니다.
전 항의 규정에도 불구하고 아래 각 호의 경우에는 회원 개인이 결제한 전액을 환불합니다.
서비스 장애 또는 "회사"가 제시한 최소한의 기술사양을 충족하였음에도 불구하고 "회사"의 귀책사유로 서비스를 이용하지 못한 경우
회원이 구매한 서비스가 제공되지 않은 경우
제공되는 서비스가 표시∙광고 등과 상이하거나 현저한 차이가 있는 경우
제공되는 서비스의 결함으로 서비스의 정상적인 이용이 현저히 불가능한 경우
회원은 이용요금에 대하여 이의를 제기할 수 있습니다. 단, 이용요금에 관한 이의는 그 사유 발생을 안 날로부터 30일 이내에, 그 사유가 발생한 날로부터 3개월 이내에 제기하여야 합니다.
"회사"는 과오금이 발생한 경우 또는 전액 환불의 경우 이용대금의 결제와 동일한 방법으로 환불하여야 합니다. 다만, 동일한 방법으로 환불이 불가능하거나 서비스의 중도해지로 인한 부분 환불 등의 경우에는 "회사"가 정하는 별도의 방법으로 환불합니다. "회사"는 환불 의무가 발생한 날로부터 3영업일 이내에 환불을 진행하며, 환불이 지연되는 경우 지연이자율은 『전자상거래 등에서의 소비자보호에 관한 법률 시행령』에 따라 환불합니다. 단, 환불에 회원의 협조가 필요한 경우에 회원의 귀책사유로 인한 환불 지연에 대해서는 지연이자를 지급하지 않습니다.
환불에 소요되는 비용은 회원의 귀책사유로 인한 환불의 경우에는 회원이, "회사"의 귀책사유로 인한 환불의 경우에는 "회사"가 각각 부담합니다.
이 약관의 유료서비스 규정과 각 개별 유료서비스 약관의 내용이 충돌하는 경우 각 개별 약관의 규정에 따릅니다.
제 8 조 (서비스 제공의 제한 및 중지)
"회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 "서비스"의 제공을 일시적으로 중단할 수 있습니다. 구체적인 사유는 다음과 같습니다.
회원이 "서비스"의 운영을 고의로 방해하는 경우
점검, 보수 또는 공사로 인하여 부득이한 경우
국가비상사태, 설비의 장애 또는 "서비스" 이용의 폭주 등으로 "서비스" 이용에 지장이 있는 상태
기타 중대한 사유로 인하여 "회사"가 "서비스" 제공을 지속하는 것이 부적당하다고 인정되는 경우
회원이 회원의 의무를 위반한 경우, 이 경우 "회사"는 회원의 이메일 주소나 공지사항을 통해 "서비스" 제공의 제한 및 중지 내용을 사전에 회원에게 통지합니다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.
"회사"는 "서비스"의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 "서비스" 제공 화면에 공지한 바에 따릅니다.
제 9 조 (개인위치정보 수집과 사용 및 관리)
위치기반서비스 사업자인 "회사" 및 위치정보관리책임자의 정보입니다.
상호 : 주식회사 키즈랜드
대표 : 최장욱
주소 : 경기도 성남시 분당구 판교역로 225-14, 7층 ㈜키즈랜드
위치정보관리책임자의 직위 : 대표이사
위치정보관리책임자의 성명 : 최장욱
"회사"는 회원이 보유한 GPS 수신기, 와이파이 등을 탑재한 통신단말장치로부터 야외에서는 기지국 기반의 GPS 신호를, 실내에서는 무선 AP들의 와이파이 정보를 통해 위치정보를 수집합니다.
회원은 "회사"에 대해 언제든지 개인위치정보 수집에 대한 동의 또는 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 "회사"는 수집한 개인위치정보를 파기합니다.
회원은 "회사"에 대하여 본인에 대한 위치정보 수집, 이용, 제공사실 확인자료, 본인의 개인위치정보가 제3자에게 제공된 이유 및 내용을 열람 또는 고지를 요구할 수 있고, 오류가 있는 경우에는 정정을 요구할 수 있습니다. 회원은 이러한 요구를 이메일(contact@kidsnote.com)을 통해 "회사"에 요구할 수 있습니다.
"회사"는 회원의 동의 없이 회원의 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공 받는 자 및 제공목적을 사전에 회원에게 고지합니다. 만약 제3자에게 회원의 개인위치정보를 제공하는 경우 위치정보이용, 제공사실 확인자료를 자동 기록, 보존하며 해당 자료는 1년간 보관합니다.
"회사"는 개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신단말장치로 매회 회원에게 제공 받는 자, 제공 일시 및 제공목적을 즉시 통보합니다. 그러나 개인위치정보를 수집한 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우나 회원이 개인위치정보를 수집한 통신단말장치 외에 통신단말장치 또는 전자우편주소로 통보할 것을 미리 요청한 경우에는 전자우편주소로 통보합니다.
"회사"는 8세 이하의 아동, 제한능력자, 정신적 장애를 가진 중증장애인에 해당하는 자의 보호의무자가 생명 또는 신체보호를 위하여 개인위치정보의 수집, 이용 또는 제공에 동의하는 경우 본인의 동의가 있는 것으로 봅니다. 동의를 하고자 하는 보호의무자는 다음 내용을 모두 기재하고 서명한 서면동의서를 "회사"에 제출하여야 합니다.
a. 보호대상자의 성명, 주소 및 생년월일 
b. 보호의무자의 성명, 주소 및 연락처
c. 개인위치정보의 수집, 이용 또는 제공의 목적이 보호대상자의 생명 또는 신체의 보호에 한정된다는 사실
d. 작성 년∙월∙일 
"회사"는 회원의 동의가 있거나 위치기반서비스 제공에 따른 요금정산을 위하여 위치정보수집, 이용, 제공사실 확인자료가 필요한 경우 또는 통계작성, 학술연구, 시장조사를 위하여 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우를 제외하고는 개인위치정보 또는 위치정보수집, 이용, 제공사실 확인자료를 이 약관에 명시하거나 별도 고지한 범위를 넘어 이용하거나 제3자에게 제공하지 않습니다.
제 10 조 (개인정보 수집 및 이용안내)
"회사"의 개인정보 수집 및 이용, 보호에 대한 안내는 [개인정보 처리방침]에서 별도 공개됩니다. 본 "서비스" 이용을 통해 회원은 [개인정보 처리방침]의 모든 조항을 이해하며 개인정보 수집 및 이용에 동의합니다.
제 11 조 (회사의 면책권한)
"회사"는 다음의 경우로 "서비스"를 제공할 수 없는 경우 이로 인하여 회원에게 발생한 손해에 대해서는 책임을 부담하지 않습니다.
천재지변 또는 불가항력의 상태가 있는 경우
제3자의 고의적인 "서비스" 방해가 있는 경우
회원의 귀책사유로 "서비스" 이용에 장애가 있는 경우
기타 회사의 고의 또는 과실이 없는 사유로 인한 경우
회원은 "회사"가 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 "서비스" 이용하여 상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌이 광고, 음란사이트 등을 통한 상업행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어겨 발생한 영업활동의 결과 및 손실, 관계기관에 의한 법적 조치 등에 관해서는 "회사"가 책임을 지지 않습니다.
"회사"는 회원이 "서비스"를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며, 그 밖의 "서비스"를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.
"회사"는 회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지 않습니다.
"회사"는 회원간 또는 회원과 제3자 상호간에 "서비스"를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.
"회사"는 무료로 제공되는 "서비스" 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.
제 12 조 (게시물의 관리)
회원의 게시물이 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 및 『저작권법』 등 관계법령에 위반되는 내용을 포함하는 경우, 권리자는 관계법령이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, "회사"는 관계법령에 따라 조치를 취하여야 합니다.
"회사"는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 "회사" 정책 및 관계법령에 위반되는 경우에는 관계법령에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다.
제 13 조 (게시물의 배포)
학부모 회원은 "서비스" 가입과 동시에 "서비스" 사용 원이 "서비스"를 통해 해당 원 소속 학부모 회원을 위한 콘텐츠를 게시하는 것에 전적으로 동의하는 것으로 봅니다. 이 때 전술한 콘텐츠는 학부모 회원의 자녀 사진 등을 포함합니다.
"회사"를 통한 원의 게시물 최초 배포는 전 항에 의거하여 정상 행위로 간주되고, 이후 게시물에 대한 소유권 또는 초상권을 가진 사용자의 동의 없이 행해지는 재배포와 그로 인한 법적 책임은 재배포자에게 귀속되며, "회사"와 원 관리자는 이에 대해 아무런 법적 책임을 지지 않습니다.
제 14 조 (정보의 제공 및 광고의 게재)
"회사"는 회원이 "서비스" 이용 중 필요하다고 인정되는 다양한 정보를 공지사항 또는 전자우편이나 서신우편, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 관련법에 따른 거래관련정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편 등에 대해서 수신 거절을 할 수 있습니다.
"회사"는 "서비스"의 운영과 관련하여 "서비스" 화면, 홈페이지, 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편 등을 수신한 회원은 수신거절을 "회사"에게 할 수 있습니다.
제 15 조 (기타 부가서비스 제공을 위한 위탁)
"회사"의 기본 스마트 알림장 "서비스" 이외에 일부 부가서비스는 효과적인 서비스 제공을 위해 외부 전문업체에 위탁될 수 있습니다.
회원에게 제공되는 부가서비스에 관한 규정사항은 각 위탁 외부 전문업체의 약관을 준수해야 합니다.
제 16 조 (분쟁해결)
"회사"는 회원이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위해서 최선의 노력을 다해야 합니다.
"회사"는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 즉시 통보합니다.
제 17 조 (준거법 및 관할법원)
이 약관의 해석 및 "회사"와 회원간의 분쟁에 대하여는 대한민국의 법을 적용합니다.
"서비스" 이용과 관련하여 "회사"와 회원 사이에 분쟁이 발생하여 소송이 제기되는 경우에는 민사소송법상의 주소지를 관할하는 법원을 합의관할로 합니다.
부칙
이 약관은 2016년 12월 15일부터 시행합니다.
이 약관의 공지 이후 시행일 이전에 이 약관에 동의한 경우에는 동의 시부터 이 약관이 적용됩니다.
</textarea>
				</li>
				<li class="checkBox check03">
					<ul class="clearfix">
						<li>개인정보 수집 및 이용 동의<span style="color:red">(필수)</span></li>
						<li class="checkBtn"><input type="checkbox" name="chk" class="check1">
						</li>
					</ul> 
<textarea name="" id="">
개인정보 수집 및 이용에 대한 동의

(주)키즈랜드는 아래의 목적으로 개인정보를 수집 및 이용하며, 회원의 소중한 개인정보를 보호함으로써 안심하고 서비스를 이용할 수 있도록 최선을 다합니다.

[필수] 서비스 기본 기능 제공
목    적	항    목	보유 기간
서비스 및 컨텐츠 제공, 본인인증	아이디, 비밀번호, 이름, 이메일, 주소, 자녀정보(이름, 생년월일, 성별), 휴대폰번호	회원탈퇴 후 지체없이 삭제
서비스 제공을 위해 필요한 최소한의 개인정보이므로 동의를 해주셔야 서비스 이용이 가능합니다. 그 외에도 서비스 이용 과정에서 추가 개인정보가 수집될 수 있습니다.


[선택] 이벤트 및 광고성 정보 수신
목    적	항    목	보유 기간
이벤트 및 광고성 정보 수신	아이디, 이름, 이메일, 자녀정보(이름, 생년월일, 성별), 휴대폰번호	회원탈퇴 후 지체없이 삭제
동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.


[ 키즈랜드 개인정보 처리방침 ]
제 1 조 (개인정보의 수집과 사용)
“Kids Note”는 당사의 “서비스”를 이용하는 회원들이 보다 높은 수준의 “서비스”를 받을 수 있도록 회원들의 개인정보를 수집합니다. 
“Kids note”는 정보통신망법 등 관계 법령이 정하는 바에 따라 회원의 개인정보 보호에 노력합니다. 개인정보 보호 및 사용은 회사의 개인정보 처리방침을 적용합니다. 개인정보수집을 통해 개인에게 적합한 사용환경을 제공하고 제품의 소식이나 특전 안내 등을 알리는 등 “Kids Note”의 사업 목적을 위해 수집 및 사용하며 이용 목적이 추가, 변경될 시에는 변경사항의 시행일의 최소 7일 전부터 공지사항이나 이메일을 통하여 고지합니다. 다만, 회원의 권리 또는 의무에 중요한 내용의 변경은 최소 30일전에 고지합니다.

개인정보 처리방침 버전: 3.4
개인정보 처리방침 시행일자: 2019년 5월 9일
제 2 조 (수집하는 개인정보 항목 및 수집방법)
“Kids Note”는 당사의 “서비스”를 이용하는 회원이 가입 및 사용하는 과정에서 아래와 같은 정보를 수집합니다.

회원가입 시 필수 항목 
아이디, 비밀번호, 본인이름, 이메일주소, 자녀정보(이름, 생년월일, 성별), 휴대폰번호
서비스 이용 시 추가 수집 항목 
a. 초대 메세지 발송을 위한 필수 항목 : 타인의 연락처 정보 
b. 상품 구매시 필수 항목 : 배송지 정보(이름, 휴대폰번호), 결제정보(신용카드번호 또는 계좌번호/은행명) 
c. 환불(부분취소)시 필수 항목 : 계좌번호, 은행명, 계좌주 성명 
환불(부분취소) 시 필수항목 
계좌번호, 은행명, 계좌주 성명
입점 또는 제휴 문의 시 
입점 및 제휴 담당자 연락처(담당자명, 휴대폰번호)
다만, 회원이 “서비스”를 이용과정에서 발생하는 “서비스” 이용기록, 접속로그, 쿠키, 결제기록 등의 정보는 자동으로 생성되어 수집될 수 있습니다.
개인정보 수집 방법 
a. “Kids Note” 홈페이지(회원가입, 고객센터게시판) 및 “Kids Note” 애플리케이션(회원가입) 
b. 고객센터를 통한 전화 및 온라인 상담 
c. 결제 시, 페이지 창을 통한 입력 
제 3 조 (개인정보의 수집 및 이용목적)
“Kids Note”의 서비스 제공에 관한 계약 이행 및 컨텐츠 제공, 특정 맞춤 서비스 제공, 물품배송, 본인인증, 구매 등
회원관리
회원제 서비스 제공, 개인식별, “Kids Note” 이용약관 위반 회원에 대한 이용제한 조치, 서비스의 원활한 운영에 지장을 미치는 행위 및 서비스 부정이용 행위 제재, 가입의사 확인, 가입 및 가입횟수 제한, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원탈퇴 의사의 확인
신규 서비스 개발 및 마케팅광고에의 활용
신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 이벤트 정보 및 참여기회 제공, 광고성 정보 제공, 접속빈도 파악, 회원의 서비스이용에 대한 통계
제 4 조 (개인정보의 보유 및 이용기간)
“Kids Note”는 회원이 탈퇴한 경우 지체 없이 개인정보를 파기합니다. 단, 다음의 정보에 대해 아래의 사유로 명시한 기간 동안 보관합니다.

회사 내부 방침에 의한 정보보호 사유
동일 아이디의 중복 가입 방지를 위해 아이디 정보를 보관합니다.
계약 또는 청약철회 등에 관한 기록
보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률
보존 기간: 5년
대금결제 및 재화 등의 공급에 관한 기록
보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률
보존 기간: 5년
소비자의 불만 또는 분쟁처리에 관한 기록
보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률
보존 기간: 3년
서비스 방문기록
보존 이유: 통신비밀보호법
보존 기간: 3개월
제 5 조 (개인정보의 파기절차 및 방법)
“Kids Note”는 개인정보 수집 및 이용목적이 달성되거나, 보유 및 이용기간이 경과된 후에는 관계법령에 따른 저장 기간이 지난 직후 해당 정보를 지체 없이 파기합니다. 보관되는 개인정보 또한 관계법령에서 명시한 목적 이외에 다른 목적으로는 사용하지 않습니다.
파기방법은 종이에 출력된 개인정보는 분쇄하거나 소각하며, 파일형태로 저장된 개인정보는 복원이 불가능한 방법으로 영구 삭제합니다.
제 6 조 (개인정보의 제공 및 공유)
“Kids Note”는 회원이 사전에 동의한 경우 또는 법령에서 규정하거나 수사 기관의 요구가 있는 경우를 제외하고는, 회원의 개인정보를 어떠한 목적으로도 외부에 절대 공개하지 않습니다. 이용자들이 사전에 동의한 경우라 할지라도 정보가 제공되는 대상과 필요한 정보, 그리고 언제까지 어떻게 관리되는지에 대해 해당 회원에게 안내 및 동의를 구하는 절차를 거치게 됩니다. “Kids Note”는 서비스 향상을 위해서 아래와 같이 개인정보를 제3자와 제휴하고 있으며, 관계 법령에 따라 개인정보 제3자 제공 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 회사의 개인정보 제3자 제공 내용은 아래와 같습니다.

제공 받는 자 : (주)한국학술정보
개인정보 이용 목적 : 키즈랜드북 생산 및 배송 의뢰
제공하는 개인정보 항목: 키즈랜드북 생산을 위한 사진 등이 포함된 PDF, 배송을 위한 이름, 연락처, 주소 등
제공 정보의 보유 및 이용 기간: 상품 제작 및 배송일로부터 1개월
제공 받는 자 : ㈜위피앤피
개인정보 이용 목적 : 포토북 제작 서비스 제공 및 유지보수 대행
제공하는 개인정보 항목 : 포토스토어 상품 제작을 위한 사진, 회원정보(아이 이름, 회원 번호)
제공 정보의 보유 및 이용 기간: 상품 제작 및 배송일로부터 1개월
제 7 조 (개인정보의 위탁)
“Kids Note”는 원칙적으로 회원의 소중한 개인정보를 위탁해 관리하지 않습니다. 단, 서비스 이용 과정에서 사용자의 편의성과 고객 만족을 위한 일부 업무에 한해 아래 업체에게 개인정보를 위탁하고 있습니다.

제공수탁업체명	위탁업무운영	개인정보 이용기간
(주)카카오	서비스 제공을 위한 인프라 운영 및 관리	회원 탈퇴 시 혹은 위탁계약 종료시 까지
(주)LG유플러스, (주)케이지이니시스	결제처리(휴대폰, 무통장 입금, 계좌이체, 신용카드, 지류상품권 및 기타 결제수단, 환불계좌 인증)
dk service	고객센터 운영 및 고객상담
인포뱅크	SMS 발송
MailChimp®	이메일 발송
제 8 조 (이용자 및 법정대리인의 권리와 그 행사방법)
회원 및 법정대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 가입 해지를 요청할 수도 있습니다. 이용자 혹은 만 14세 미만 아동의 개인정보 조회/수정을 위해서는 ‘개인정보변경’(또는 ‘회원정보관리’ 등)을 통하여 가능하며, 가입해지(동의철회)를 위해서는 “회원탈퇴”를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다. 또는 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락할 경우 조치 가능합니다.
회원이 개인정보의 오류에 대한 정정을 요청한 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 합니다.
“Kids Note”는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보를 ‘개인정보의 보유 및 이용기간’에 명시된 바에 따라 처리하고, 그 외의 용도로 열람 또는 이용할 수 없도록 합니다.
제 9 조 (개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항)
“Kids Note”는 이용자에게 특화된 맞춤”서비스”를 제공하기 위해서 이용자들의 정보를 수시로 저장하고 불러오는 ‘쿠키(cookie)’를 사용합니다. 쿠키란 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에 보내는 아주 작은 텍스트 파일로서 이용자의 컴퓨터 하드디스크에 저장됩니다.

쿠키의 사용 목적 및 설정 거부 방법
회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 횟수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 “서비스” 제공
“서비스” 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수 있습니다.
2. 비개인식별정보 활용
“Kids Note”는 비개인식별정보를 통해 웹사이트의 효율성을 제고하고 사용자 경험을 향상시키고 있습니다.
제 10 조 (개인정보보호를 위한 기술적/관리적 대책)
“Kids Note”는 회원의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안정성 확보를 위하여 다음과 같은 기술적, 관리적 대책을 강구하고 있습니다.

기술적 대책
회원의 개인정보는 비밀번호에 의해 보호되며, 중요한 데이터는 파일 및 전송 데이터를 암호화하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 통해 보호 하고 있습니다.
관리적 대책
개인정보관련 처리직원은 담당자에 한정시켜 최소화 하고 새로운 보안기술의 습득 및 개인정보보호 의무에 관해 정기적인 교육을 실시하며 별도의 비밀번호를 부여하여 접근 권한을 관리하는 등 관리적 대책을 시행하고 있습니다. 단, 회원의 아이디와 비밀번호는 회원 및 회원이 지정한 인원만이 사용하도록 되어있으며, 회원의 부주의로 개인정보가 유출되어 발생하는 문제나 기본적인 인터넷의 위험성 때문에 일어나는 문제에 대해서는 책임을 지지 않습니다.
제 11 조 (개인정보 보호책임자 및 상담•신고)
개인정보 보호책임자
이름 : 최장욱
전화 : 1644-6734
이메일 : contact@kidsnote.com
개인정보 처리담당자
이름 : 방선호
전화 : 1644-6734
이메일 : contact@kidsnote.com
개인정보침해신고센터 : 118 / http://www.118.or.kr
대검찰청 첨단범죄수사과 : 02-3480-2000 / http://www.spo.go.kr
경찰청 사이버테러대응센터 : 1566-0112 / http://www.netan.go.kr
공고일자: 2019년 5월 2일 
시행일자: 2019년 5월 9일
</textarea>
				</li>

			</ul>
			
			<div id="buttonArea" align="center">
			<button class="huge ui button">이전</button>
			<button class="huge ui secondary button" id="nextBtn" style="width:200px" onclick="check();">다음</button>
		</div>

	</div>
	
	<script>
	$('#chk').change(function(){
		
		if($(this).prop('checked')){
			
		$('.check1').attr("checked", true);
			
		}else{
			
			$('.check1').attr("checked",false);
		}
		
	});
	
	function check(){
		
		if($('.check1').eq(0).prop("checked") && $('.check1').eq(1).prop("checked")){
			
		location.href='joinPage2.pl'
			
		}else{
			
			alert("필수 사항에 동의 체크 해주세요.")
			
		}
				
		
		
		
		
		
	}
	
	</script>

</body>
</html>
