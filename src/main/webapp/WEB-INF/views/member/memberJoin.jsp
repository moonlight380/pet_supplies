<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
<c:import url="../template/css.jsp"></c:import>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div id="wrap">
   <div id="container">
        <div id="contents">
            
<div class="template_width">
	
<div class="container">

	<div class="path" style="display: block; float: right; position: relative; height: auto;">
		<ol><li style="display: inline;"><a href="${pageContext.request.contextPath}">Home > </a></li>
			<li style="display: inline;" title="현재 위치"><strong>회원 가입</strong></li>
		</ol>
	</div>
	
 <form action="./memberJoin" method="post" id="Joinfrm" style="font-style: inherit; font-size: small;">
  

<div class="path"  style="margin-top: 80px;" >

<div style="border-bottom: 3px solid black; margin-top: 100px; text-align: center;">
<h3 style="margin-bottom: 30px; font-weight: bold; font-size: 36px;">회원가입</h3>
</div>

<%-- <div class="row" style="display: block; margin-right: 30px;">
	

	<div class="col border m-5">
		<div class="text-center">
		<a href="${pageContext.request.contextPath}">
		<img class="m-5 mb-4" 
			src="${pageContext.request.contextPath}/resources/images/logo_dark.png"
			alt="" width="182" height="47">
		</a>
	</div>
	</div>

</div> --%>

<h4 style="float: right; margin-top: 60px;"><img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수">필수입력사항</h4>

<table class="table table-bordered" style="margin-bottom: -1px;">

<colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>

<colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr>
<th scope="row">아이디 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input id="id" name="id" class="input_Join" placeholder="" value="" type="text"><span id="idt" style="font-size: small;"> (영문소문자/숫자, 4~12자)</span></td>
 </tr>
<tr>
<th scope="row">비밀번호 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
 <td><input id="pw" name="pw" class="input_Join" autocomplete="off" maxlength="16" value="" type="password"><span id="pwt" style="font-size: small;"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</span></td>
 </tr>
<tr>
<th scope="row">비밀번호 확인 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input id="check_pw" name="check_pw" class="input_Join" autocomplete="off" maxlength="16" value="" type="password"><span id="pwc"></span></td>
</tr>
<tr class="">
<th scope="row">비밀번호 확인 질문 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
  <td><select id="hint" name="hint">
<option value="hint_01">기억에 남는 추억의 장소는?</option>
<option value="hint_02">자신의 인생 좌우명은?</option>
<option value="hint_03">자신의 보물 제1호는?</option>
<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
</select></td>
 </tr>
 
<tr class="">
<th scope="row">비밀번호 확인 답변 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
<td><input style="width: 400px;" id="hint_answer" name="hint_answer" class="input_Join" placeholder="" value="" type="text"><span id="answer"></span></td>
</tr>

<tr>
<th scope="row" id="nameTitle">이름 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
  <td>
    <input style="width: 100px;" type="text" name="name" id="name" class="input_Join" maxlength="20"><span id="nameContents"></span>
  </td>
</tr>

<tr>
<th scope="row">이메일 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" alt="필수"></th>
 <td><input style="widows: 350px;" id="email" name="email" class="input_Join" value="" type="email"><span id="emailCheck"></span>
 </td>
</tr>

<tr class="">
<th scope="row">주소 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" class="" alt="필수"></th>
 <td>
   <input style="width: 80px;" id="postcode1" name="address" class="input_Join" placeholder="" readonly="readonly" maxlength="14" value="우편번호" type="text">
   <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호"><br>
   <input style="width: 400px;" id="addr1" name="addr1" class="input_Join" placeholder="" readonly="readonly" value="기본주소" type="text" ><br>
   <input style="width: 250px;" id="addr2" name="addr2" class="input_Join" placeholder="" value="상세주소" type="text">
   <input style="width: 150px;" id="addr3" name="addr2" class="input_Join" placeholder="" value="참고사항" type="text"></td>
</tr>
<tr class="">
<th scope="row">휴대전화 <img src="${pageContext.request.contextPath}/resources/images/ico_required.gif" class="" alt="필수"></th>
 <td><select id="mobile1" name="phone" id="mobile1" class="input_Join tel">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input style="width: 50px;" id="mobile2" name="phone" class="input_Join tel" maxlength="4" value="" type="text">-<input style="width: 50px;" id="mobile3" class="input_Join tel" name="phone" maxlength="4" value="" type="text">
<span id="mobile"></span></td>
</tr>


<tr class="">
<th scope="row">생년월일</th>
<td>
<input id="birth" name="birth_year" placeholder="ex)20200101" maxlength="8" value="" type="text"> 

<input id="calendar0" name="calendar" value="T" type="radio" checked="checked"><label for="is_solar_calendar0">양력</label>
<input id="calendar1" name="calendar" value="F" type="radio"><label for="is_solar_calendar1">음력</label>
<span id="msg"></span>
</td>
</tr>


<tr class="">
<th scope="row">성별</th>
<td><input id="sex0" name="sex" value="M" type="radio"><label for="is_sex0">남자</label>
<input id="sex1" name="sex" value="F" type="radio" checked="checked"><label for="is_sex1">여자</label></td>
</tr>

</tbody>
</table>
</div>
</form>

<div class="AgreeFrm" style="margin-top: 50px;">
<h3>약관동의</h3>
<div class="container" id="result"  style="background-color: #ffffff; border: 1px solid #d7d5d5;">	
	
	<div class="row" style="border-bottom : 1px solid #d7d5d5;">
	<div  style="margin-left:2%; width: 100%; height: 100%">
		<input type="checkbox"  hidden="hidden"  id="checkAll" class="checkAll2" style="float: left;">
		<div class="col-sm-1 m-2" style="display: inline;">
		<label for="checkAll">
		<span style="float: left; margin-top: 8px; display: inline;"><i class='far fa-check-circle ac m-2 nocheck checkbox' style='font-size: 24px; color: gray;' id='img'></i>
		</span></label>
		</div>
		
		<div class="col">
			<label for="checkAll">
			<span class="ac nocheck checkcon" id="contents1" style="float:left; margin-top: 18px; display: inline;"> 이용약관 및 개인정보 수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다. </span>
			</label>
		</div>
	</div>
	</div>
		
				
	<div class="ec-base-box typeThinBg agreeArea" style="border-bottom:1px solid #d7d5d5;">
	<h4 style="margin-top: 20px; margin-left: 2%; font-weight: bold;">[필수] 이용약관 동의</h4>
	<div class="ec-base-box typeThinBg agreeArea" style="width:95%; height: 350px; margin : 0 auto;">
	<div class="content" style="height: 300px; border: 1px solid #d7d5d5; font-size: small; overflow: scroll;">
	<p>제1조(목적)<br>이 약관은 OO 회사(전자상거래 사업자)가 운영하는 OO 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.<br>※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」</p><p>제2조(정의)<br>① “몰”이란 OO 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br>② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br>④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.</p><p>제3조 (약관 등의 명시와 설명 및 개정) <br>① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호?모사전송번호?전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br>② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회?배송책임?환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br>③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br>④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 “몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br>⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br>⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.</p><p>제4조(서비스의 제공 및 변경) <br>① “몰”은 다음과 같은 업무를 수행합니다.<br>&nbsp; 1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br>&nbsp; 2. 구매계약이 체결된 재화 또는 용역의 배송<br>&nbsp; 3. 기타 “몰”이 정하는 업무<br>② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br>③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br>④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</p><p>제5조(서비스의 중단) <br>① “몰”은 컴퓨터 등 정보통신설비의 보수점검?교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br>② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br>③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.</p><p>제6조(회원가입) <br>① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br>② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.<br>&nbsp; 1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br>&nbsp; 2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br>&nbsp; 3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우<br>③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.<br>④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</p><p>제7조(회원 탈퇴 및 자격 상실 등) <br>① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.<br>② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.<br>&nbsp; 1. 가입 신청 시에 허위 내용을 등록한 경우<br>&nbsp; 2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우<br>&nbsp; 3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br>&nbsp; 4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br>③ “몰”이 회원 자격을 제한?정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.<br>④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</p><p>제8조(회원에 대한 통지)<br>① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br>② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.</p><p>제9조(구매신청) <br>① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.<br>&nbsp; 1. 재화 등의 검색 및 선택<br>&nbsp; 2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br>&nbsp; 3. 약관내용, 청약철회권이 제한되는 서비스, 배송료?설치비 등의 비용부담과 관련한 내용에 대한 확인<br>&nbsp; 4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>&nbsp; 5. 재화등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의<br>&nbsp; 6. 결제방법의 선택<br>② “몰”이 제3자에게 구매자 개인정보를 제공?위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및 보유?이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 처리위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.</p><p>제10조 (계약의 성립)<br>① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br>&nbsp; 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br>&nbsp; 2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br>&nbsp; 3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우<br>② “몰”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br>③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.</p><p>제11조(지급방법)<br>“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br>1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br>2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br>3. 온라인무통장입금<br>4. 전자화폐에 의한 결제<br>5. 수령 시 대금지급<br>6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제<br>7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제 <br>8. 기타 전자적 지급 방법에 의한 대금 지급 등</p><p>제12조(수신확인통지?구매신청 변경 및 취소)<br>① “몰”은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br>② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.</p><p>제13조(재화 등의 공급)<br>① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br>② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의?과실이 없음을 입증한 경우에는 그러하지 아니합니다.</p><p>제14조(환급)<br>“몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.</p><p>제15조(청약철회 등)<br>① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다. <br>② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br>&nbsp; 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br>&nbsp; 2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br>&nbsp; 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br>&nbsp; 4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br>③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br>④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시?광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.</p><p>제16조(청약철회 등의 효과)<br>① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율(괄호 부분 삭제)을 곱하여 산정한 지연이자를 지급합니다.<br>② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br>③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시?광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.<br>④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.</p><p>제17조(개인정보보호)<br>① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. <br>② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br>③ “몰”은 이용자의 개인정보를 수집?이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. <br>④ “몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용?제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.<br>⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.<br>⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br>⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 처리하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br>⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.<br>⑨ “몰”은 개인정보의 수집?이용?제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집?이용?제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집?이용?제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</p><p>제18조(“몰“의 의무)<br>① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화?용역을 제공하는데 최선을 다하여야 합니다.<br>② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.<br>③ “몰”이 상품이나 용역에 대하여 「표시?광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시?광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br>④ “몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</p><p>제19조(회원의 ID 및 비밀번호에 대한 의무)<br>① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br>② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br>③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.</p><p>제20조(이용자의 의무)<br>이용자는 다음 행위를 하여서는 안 됩니다.<br>1. 신청 또는 변경시 허위 내용의 등록<br>2. 타인의 정보 도용<br>3. “몰”에 게시된 정보의 변경<br>4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br>5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>6. “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위</p><p>제21조(연결“몰”과 피연결“몰” 간의 관계)<br>① 상위 “몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “몰”(웹 사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br>② 연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.</p><p>제22조(저작권의 귀속 및 이용제한)<br>① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.<br>② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br>③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.</p><p>제23조(분쟁해결)<br>① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치?운영합니다.<br>② “몰”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br>③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시?도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</p><p>제24조(재판권 및 준거법)<br>① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br>② “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br></p>부 칙(시행일) 이 약관은 년 월 일부터 시행합니다.
부 칙(시행일) 이 약관은 년 월 일부터 시행합니다.			</div>
	<p class="check"><span>이용약관에 동의하십니까?</span> <input type="checkbox"class="check01 Ess" id="first"><label for="agree_service_check0">동의함</label></p>
	</div>
	</div>		
				
	<div class="ec-base-box typeThinBg agreeArea" style="border-bottom:1px solid #d7d5d5;">
	<h4 style="margin-top: 20px; margin-left: 2%; font-weight: bold;">[필수] 개인정보 수집 및 이용 동의</h4>
	<div class="ec-base-box typeThinBg agreeArea" style="width:95%; height: 350px; margin : 0 auto;">
		<div class="content" style="height: 300px; border: 1px solid #d7d5d5; font-size: small; overflow: scroll;">
		<p>&nbsp;** 본 양식은 쇼핑몰 운영에 도움을 드리고자 샘플로 제공되는 서식으로 쇼핑몰 운영형태에 따른 수정이 필요합니다. 쇼핑몰에 적용하시기 전, 쇼핑몰 운영 사항 등을 확인하시고 적절한 내용을 반영하여 사용하시기 바랍니다. **</p><p>1. 개인정보 수집목적 및 이용목적</p><p>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</p><p>콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스</p><p>나. 회원 관리</p><p>회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달</p><p>2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보</p><p>3. 개인정보의 보유기간 및 이용기간</p><p>원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</p><p>가. 회사 내부 방침에 의한 정보 보유 사유</p><p>o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : OO년</p><p>나. 관련 법령에 의한 정보보유 사유</p><p>o 계약 또는 청약철회 등에 관한 기록</p><p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p><p>-보존기간 : 5년</p><p>o 대금 결제 및 재화 등의 공급에 관한 기록</p><p>-보존이유: 전자상거래등에서의소비자보호에관한법률</p><p>-보존기간 : 5년&nbsp;</p><p>o 소비자 불만 또는 분쟁처리에 관한 기록</p><p>-보존이유 : 전자상거래등에서의소비자보호에관한법률</p><p>-보존기간 : 3년&nbsp;</p><p>o 로그 기록&nbsp;</p><p>-보존이유: 통신비밀보호법</p><p>-보존기간 : 3개월</p><p>※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.</p>			</div>
		<p class="check"><span>개인정보 수집 및 이용에 동의하십니까?</span>
		 <input id="second" class="check01 Ess" type="checkbox"><label for="agree_privacy_check0">동의함</label></p>
		</div>
	</div>
	
	
	<div class="ec-base-box typeThinBg agreeArea ">
	<h4 style="margin-top: 20px; margin-left: 2%; font-weight: bold;">[선택] 쇼핑정보 수신 동의</h4>
	<div class="ec-base-box typeThinBg agreeArea" style="width:95%; height: 200px; margin : 0 auto;">
	<div class="content" style="height: 150px; border: 1px solid #d7d5d5; font-size: small; overflow: scroll;">
	<p>할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 쇼핑몰에서 제공하는 유익한 쇼핑정보를 SMS나 이메일로 받아보실 수 있습니다.</p>
	<p>단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.</p>
	<p>선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다.</p>
	</div>
	<p class="check">
		<span>이메일 수신을 동의하십니까?</span> <input id="third" class="check01" type="checkbox"> <label for="is_news_mail0">동의함</label>	
	</p>
		
	</div>
	
	</div>
	
</div>
</div>

	<div class="agreeBtn" style="margin: 0 auto; margin-top: 50px; width: 100%; display: inline; height: 100%; float: left; text-align: center;" >
	
		<button id="btnJoin" type="submit" class="btn btn-info" style="font-size: small;">회원가입</button>
		
		<button id="btnCancel" type="submit" class="btn btn-danger" onclick="goback()" style="font-size: small;">취소하기</button>
		
	</div>

</div>
</div>
</div>
</div>
</div>




<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            
            
            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                $("#addr2").val(extraAddr);
            
            } else {
            	 $("#addr2").val(''); 
          /*       document.getElementById("sample6_extraAddress").value = ''; */
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
			$("#postcode1").val(data.zonecode);

			$("#addr1").val(data.address);
			
			$("#addr2").focus();

			console.log(data);
        }
    }).open();

    }

</script>

	
<script type="text/javascript">

	var frm = $("#Joinfrm");

	/* ID 유효성검사 */
	/* id는 대소문자와 숫자로 형성된 4~12자 공백X */
	/* 중복검사 */
	var idCheck = true;
	$("#id").blur(function() {
		var id = $("#id").val();
		
		
		for (var i = 0; i < id.length; i++) {
            ch = id.charAt(i)
            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
            	$("#idt").html(" 아이디는 영문 대소문자와 숫자로만 입력해주세요");
            	$("#idt").css({'color':'red','font-weight':'bold', 'font-size':'small'});
            	idCheck = false;
            }else if(id.length<4 || id.length>12){
            	$("#idt").html(" 아이디는 4~12자 사이로 입력해주세요");
            	idCheck = false;
            }else if(id.indexOf(" ")>=0){
            	$("#idt").html(" 아이디에는 공백을 사용할 수 없습니다");
            	idCheck = false;
            }else{
            	$.ajax({
    				type: "post",	//method 형식 
    				url : "./memberIdCheck",//URL 주소
    				data: {
    					id:id
    				},	//parameter
    				success : function(data){
    					if(data == 1){
	    					$("#idt").html(" 사용가능한 아이디입니다");
	    					$("#idt").css({'color':'blue','font-weight':'bold', 'font-size':'small'});
	    					idCheck = true;
    					}else{
    						$("#idt").html(" 중복된 아이디입니다");
    						$("#idt").css({'color':'red','font-weight':'bold', 'font-size':'small'});
        					idCheck = false;
    					}
    				},
    				error	: function() {
    				
    				}
    				
    			});
            }
        }
	});
	
	
	/* PW 유효성검사 */
	/* PW는 숫자+영문자+특수문자 조합으로 8자리 이상 */
	
	var pwCheck = true;
 	$("#pw").change(function() {
 		var pw = $("#pw").val();
 		
 		 if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/.test(pw)){            
 			$("#pwt").html('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다');
 			$("#pwt").css({'color':'red','font-weight':'bold', 'font-size':'small'});
 	        pw.focus();
 	        pwCheck = false;
 	    }else{
 			$("#pwt").html(" 사용가능한 비밀번호입니다");
 			$("#pwt").css({'color':'blue','font-weight':'bold', 'font-size':'small'});
 			pwCheck = true;
 		}
 	
	});
 	
 	/* PW 확인 */
 	var pw2Check = true;
 	$("#check_pw").blur(function() {
 		
 		var pw = $("#pw").val();
 		var check_pw = $("#check_pw").val();
 		
 		if(pw != check_pw){
 			$("#pwc").html(" 비밀번호가 일치하지 않습니다");
 			$("#pwc").css({'color':'red','font-weight':'bold', 'font-size':'small'});
 			pw2Check = false;
 		}else{
 			$("#pwc").html(" 비밀번호가 일치합니다");
 			$("#pwc").css({'color':'blue','font-weight':'bold', 'font-size':'small'});
 			pw2Check = true;
 		}
 		
	});
 	
 	/* 비밀번호 확인답변 유효성 검사 */
 	
 	var pwanswerCheck = true;
 	$("#hint_answer").blur(function() {
 		
		var answer = $(this).val();
		
		if(answer.length <= 0){
			$("#answer").html(" 답변을 입력해 주세요");
			$("#answer").css({'color':'red','font-weight':'bold', 'font-size':'small'});
			pwanswerCheck = false;
		} 
	});
 	
 	/* 이름 유효성 검사 */
 	/* 숫자, 영문, 자음, 공백, 2글자미만 사용금지  */
 	var nameCheck = true;
 	$("#name").blur(function() {
	
	 	var name = $(this).val(); 


 		for (var i=0; i<name.length; i++)  { 
		    var chk = name.substring(i,i+1); 
		    if(chk.match(/[0-9]|[a-z]|[A-Z]/)) { 
		    	$("#nameContents").html(" 이름을 정확히 입력해주세요");
		    	$("#nameContents").css({'color':'red','font-weight':'bold', 'font-size':'small'});
		    	nameCheck = false;
		       
		    }else if(chk.match(/([^가-힣\x20])/i)){
		    	$("#nameContents").html(" 이름을 정확히 입력해주세요");	
		    	$("#nameContents").css({'color':'red','font-weight':'bold', 'font-size':'small'});
		    	nameCheck = false;
		       
		    }else if($("#name").val() == " "){
		    	$("#nameContents").html(" 이름을 정확히 입력해주세요");
		    	$("#nameContents").css({'color':'red','font-weight':'bold', 'font-size':'small'});
		    	nameCheck = false;
		       
		    }else if(name.length <= 1){
		    	$("#nameContents").html(" 이름을 정확히 입력해주세요");
		    	$("#nameContents").css({'color':'red','font-weight':'bold', 'font-size':'small'});
		    	nameCheck = false;
		
		    }else{
		    	$("#nameContents").html(" ");
		    	$("#nameContents").css({'color':'blue','font-weight':'bold', 'font-size':'small'});
		    	nameCheck = true;
		    }
		} 
	
	});
 	
 	/* 이메일 유효성 검사 */
 	var emailCheck = true;
   	$("#email").blur(function() { 
 		
 		var email = $(this).val(); 
 		
  		var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

  		if(reg_email.test(email)==false){
  			$("#emailCheck").html(" 이메일 형식이 올바르지 않습니다");
  			$("#emailCheck").css({'color':'red','font-weight':'bold', 'font-size':'small'});
  			emailCheck = false;
  		}else{
  			$.ajax({
				type: "post",	//method 형식 
				url : "./memberEmailCheck",//URL 주소
				data: {
					email:email
				},	//parameter
				success : function(mail){
					if(mail == 1){
						$("#emailCheck").html(" 사용가능한 이메일 입니다");
						$("#emailCheck").css({'color':'blue','font-weight':'bold', 'font-size':'small'});
						emailCheck = true;
					}else{
						$("#emailCheck").html(" 중복된 이메일 입니다");
						$("#emailCheck").css({'color':'red','font-weight':'bold', 'font-size':'small'});
						emailCheck = false;
					}
				},
				error	: function() {
				
				}
				
			});
  		}
	});  
   	
   	/* 주소 유효성 검사 */
   	
    var AddrCheck = true;
   	$("#postcode1").blur(function() {
		var postcode = $(this).val();
		if(postcode == null){
			AddrCheck = false;
		}
	});
   	
   	$("#addr2").blur(function() {
		if($(this).val() == null){
			AddrCheck = true;
		}
	});

   	
   	/* 핸드폰 유효성검사 */
   	
   	var phoneCheck = true;
   	$(".tel").blur(function() {
   	var phoneNum1 = $("#mobile1").val(); 
   	var phoneNum2 = $("#mobile2").val(); 
   	var phoneNum3 = $("#mobile3").val(); 
   	
   	var phoneNumber = phoneNum1 + "-" + phoneNum2 + "-" + phoneNum3; 
   	
   	var regExp = /(01[0|1|6|9|7|8])[-](\d{3}|\d{4})[-](\d{4}$)/g; 
   	var result = regExp.exec(phoneNumber); 
   	
   	if(!result){
   		$("#mobile").html("입력값이 올바르지 않습니다.");
   		$("#mobile").css({'color':'red','font-weight':'bold', 'font-size':'small'});
   		phoneCheck = false;
   	}else{
   		$("#mobile").html(" ");
   		phoneCheck = true;
   	}
	});
  	

 	 
 	/* 생년월일 유효성검사 */
 	var birthCheck = true;
 	$("#birth").blur(function() {
 		
	  var birth = $(this).val(); 
	 	
 	 var year = Number(birth.substr(0,4)); 
  	 var month = Number(birth.substr(4,2));
     var day = Number(birth.substr(6,2));
     var today = new Date();
     var yearNow = today.getFullYear();
     var adultYear = yearNow-20; 
      
 
     if (year <1900 || year > adultYear){
          alert("년도를 확인하세요. "+adultYear+"년생 이전 출생자만 등록 가능합니다.");
          birthCheck = false;
          
     }else if (month <1 || month > 12) { 
          alert("달은 1월부터 12월까지 입력 가능합니다.");
          birthCheck = false;
          
     }else if (day < 1 || day > 31) {
          alert("일은 1일부터 31일까지 입력가능합니다.");
          birthCheck = false;
     }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
          alert(month+"월은 31일이 존재하지 않습니다.");
          birthCheck = false;
     }else if (month == 2) {
          var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
          if (day>29 || (day==29 && !isleap)) {
               alert(year + "년 2월은  " + day + "일이 없습니다.");
               birthCheck = false;
          }
     }else{
    	 birthCheck = true;
     }
		
	});
	

 	
 	
 	
 	
	/* --------------------------AgreeBtn------------------------------- */
 	
	/* Join */
	
	$("#btnJoin").click(function(e) {
		var c = true;
		var check = $(".input_Join");
		var agree = $(".Ess").prop("checked");
		
		for(i=0;i<check.length;i++){
			if(check[i].value.length==0){
				c=false;
				break;
			}
		}
			if(!(idCheck && pwCheck && pw2Check && pwanswerCheck && nameCheck && emailCheck && AddrCheck && birthCheck  && c)){
				alert("정보를 제대로 입력해주세요");
			}else if(!agree){
				alert("필수 약관에 동의해주세요");
				e.preventDefault();
			}
			else{
				frm.submit();
			}
	
	});
	
	function goback() {
		history.back();
	};


	//-----------------------------Agree All check--------------------------------------------------
		 $("#result").on("click","#checkAll",function(){
			$(".check01").prop("checked",$(this).prop("checked"));
			if($("#checkAll").prop("checked")){

				$(".checkbox").css({'color':'#ff9999'});
				$(".checkcon").css({'color':'black','font-weight':'bold'});
			} else {
				$(".nocheck").css({'color':'gray','font-weight':'normal'});
			}


		});
		 
		//-----------------------------Select Check------------------------------------------------
		
		$("#result").on("click",".check01",function(){
			var result=true;
			
			var title = $(this).attr("id");
			if($(this).prop("checked")){
				console.log(title);
				$("[title="+title+"_img"+"]").css({'color':'#ff9999'});
				$("[title="+title+"_con"+"]").css({'color':'black','font-weight':'bold'});
			} else{
				console.log(title);
				$("[title="+title+"_img"+"]").css({'color':'gray','font-weight':'normal'});
				$("[title="+title+"_con"+"]").css({'color':'gray','font-weight':'normal'});
			}
			

			
			$(".check01").each(function(){
				
				if(!$(this).prop("checked")){
					result=false;
				} 
					
	
			});
			
			
			$("#checkAll").prop("checked",result);
			
			if($("#checkAll").prop("checked")){
				$("#img").css({'color':'#ff9999'});
				$("#contents1").css({'color':'black','font-weight':'bold'}); 
			} else{
				
				$("#img").css({'color':'gray'});
				$("#contents1").css({'color':'gray','font-weight':'normal'});
			}
			
		
		});
		//--------------------------------Cursor----------------------------------------------
		
		$(".ac").mouseover(function() {
			$(".ac").css({'cursor':'pointer'});
		});
		
		 
			
	
	
	</script>
</body>
</html>