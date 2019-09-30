<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>귀가동의서 상세</title>

<!-- 프린트를 위해 따로 나눠준 자바스크립트 파일 -->
<style>
.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	.returnHomeContents{
		background:#fff;
		margin:0 auto;
	}
	.returnHomeContents hr{
		width:95%;
	}
	
	.kinderInfo table{
		margin-left: 3%;
	}
	
	.kinderInfo img{
		width:60px;
		height:60px; 
	}
	
	.kinderInfo tr:first-child {
	 font-weight: bold;
	
	}
	.returnHomeDetail{
		width:100%;
		background:#fff;
	}
	.returnHomeDetail table{
		width:95%;
		margin:0 auto;
	}
	.returnHomeDetail tr{
		border-bottom: 1px solid #999;
		
	}
	
	.returnHomeDetail td, .returnHomeDetail tr{
		background:#fff;
		height:55px;
	}
	
	.returnHomeDetail th{
		width:30%;
	}
	
	.signArea{
		margin-right:10px;
		background:#aaa;
		
	}
	.detailBtnArea>button:first-child{
		width:100%;
		height:40px;
		color:#fff;
		background:#58f;
		border:none;
		border-radius: 5px;
	}
	.detailBtnArea table{
		width:100%;
	}
	
	.message{
		width:100%;
		height:40px;
		color:#fff;
		background:#58f;
		border:none;
		border-radius: 5px;
		text-align:center;
		font-weight:bold;
		vertical-align: middle;
		padding-top:10px;
	}
	
	.detailBtnArea table button{
		width:80px;
		height:40px;
		color:#fff;
		background:#554a44;
		border:none;
		border-radius: 5px;
		
	}
</style>


</head>
<body>

 <jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
					<img src="${contextPath }/resources/images/house.png" alt="" />
						<label style="font-size: 25px; font-weight:bold; color:#000;"><c:out value="${rhList.childrenName}" />원아의 귀가동의서</label>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="returnHomeContents">
			<div class="kinderInfo">
				<table>
					<tr style="font-size: 25px; font-weight: bold;">
						<td>원아명  : </td>
						<td><c:out value="${rhList.childrenName}" /></td>
					</tr>
				</table>
			</div>
			<hr />
	</div>
	<div id="printPop">
	
	<!-- 프린트 하기위한 영역 -->
		<div class="returnHomeDetail">
				<table style="font-size: 20px; font-weight: bold; ">
					<tr>
						<th>귀가요청일</th>
						<td><c:out value="${rhList.homeDate}" /></td>
					</tr>
					<tr>
						<th>귀가요청시간</th>
						<td><c:out value="${rhList.homeTime}" /></td>
					</tr>
					<tr>
						<th>귀가방법</th>
						<td><c:out value="${rhList.homeWay}" /></td>
					</tr>
					<tr>
						<th>보호자(연락처)</th>
						<td><c:out value="${rhList.parentsName}" /> (<c:out value="${rhList.parentsPhone}" />)</td>
					</tr>
					<tr>
						<th>비상연락망(연락처)</th>
						<td><c:out value="${rhList.emergencyName}" /> (<c:out value="${rhList.emergencyPhone}" />)</td>
					</tr>
				</table>
				<hr />
			</div>
			<table>
				<tr>
					<td style="width:84%; vertical-align: top;">
						<p style="margin-left:2.5%; font-size:0.8em;">영유아의 귀가 시 위 보호자에게 인보하여 주세요. <br />
						위 보호자 이외의 다른 사람에게 인계할 때는 사전에 반드시 연락을 취하겠습니다. <br />
						원에서는 부모가 희망하더라도 영유아를 혼자 귀가시키지 않습니다.</p>
					</td>
					<td>
						<div class="signArea">
							<img src="<c:out value="${rhList.dataURL}" />" alt="" />
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;">
						<label for="" style="margin-right: 10px;"><c:out value="${rhList.writeDate}" /><p></p></label>
					</td>
				</tr>
			</table>
		</div>
		<br />
		<div class="detailBtnArea">
			<c:if test="${ loginUser.classification eq '학부모' }">
				<c:if test="${ rhList.reading eq 'N' }">
					<div class="message">미확인</div>
	            </c:if>
	            <c:if test="${ rhList.reading eq 'Y' }">
					<div class="message">확인</div>
	            </c:if>
			</c:if>
			<table>
				<tr>
					<td style="text-align:left;"><button onclick="printTest()">출력</button></td>
					<td style="text-align:right;"><button onclick="location.href='returnHomeMain.rh'">목록</button></td>
				</tr>
			</table>
		</div>
	</div>
	<script>
	function printTest(){
	    const completeParam = makeHtml();
	    reportPrint(completeParam);
	}
	
	function makeHtml(){
	    const obj = {html : ''};
	    let html = '<div class="printPop">';
	    html += '<div class="returnHomeDetail">';
	    html += '	<table>';
	    html += '		<tr>';
	    html += '			<th>귀가요청일</th>';
	    html += '			<td><c:out value="${rhList.homeDate}" /></td>';
	    html += '		</tr>';
	    html += '		<tr>';
	    html += '			<th>귀가요청시간</th>';
	    html += '			<td><c:out value="${rhList.homeTime}" /></td>';
	    html += '		</tr>';
	    html += '		<tr>';
	    html += '			<th>귀가방법</th>';
	    html += '			<td><c:out value="${rhList.homeWay}" /></td>';
	    html += '		</tr>';
	    html += '		<tr>';
	    html += '			<th>보호자</th>';
	    html += '			<td><c:out value="${rhList.parentsName}" /> (<c:out value="${rhList.parentsPhone}" />)</td>';
	    html += '		</tr>';
	    html += '		<tr>';
	    html += '			<th>비상연락망</th>';
	    html += '			<td><c:out value="${rhList.emergencyName}" /> (<c:out value="${rhList.emergencyPhone}" />)</td>';
	    html += '</tr>';
	    html += '</table>';
	    html += '<hr />';
	    html += '</div>';
	    html += '<table>';
	    html += '<tr>';
	    html += '<td style="width:84%; vertical-align: top;">';
	    html += '<p style="margin-left:2.5%; font-size:0.8em;">영유아의 귀가 시 위 보호자에게 인보하여 주세요. <br /> 위 보호자 이외의 다른 사람에게 인계할 때는 사전에 반드시 연락을 취하겠습니다. <br /> 원에서는 부모가 희망하더라도 영유아를 혼자 귀가시키지 않습니다.</p>';
		html +=	'</td>';
		html += '<td>';
		html += '<div class="signArea">';
		html += '<img src="<c:out value="${rhList.dataURL}" />" alt="" />';
			html += '</div>';
			html += '</td>';
			html += '</tr>';
			html += '<tr>';
			html += '<td colspan="2" style="text-align: right;">';
			html += '<label for="" style="margin-right: 10px;"><c:out value="${rhList.writeDate}" /><p></p></label>';
			html += '</td>';
			html += '</tr>';
			html += '</table>';
	    html += '</div>';    
	    obj.html = html;
	    return obj;
	}

	function reportPrint(param){
	    const setting = "width=890, height=841";
	    const objWin = window.open('', 'print', setting);
	    objWin.document.open();
	    objWin.document.write('<html><meta charset="UTF-8"><head>');
	    objWin.document.write('<link rel="stylesheet" href="${contextPath}/resources/css/returnHome/returnHomeDetail.css" />');
	    
	    objWin.document.write('<title>귀가동의서 </title></head><body>');
	    objWin.document.write(param.html);
	    objWin.document.write('</body></html>');
	    objWin.focus(); 
	    objWin.document.close();
	 
		/*objWin.print();
	    objWin.close(); */
	    
	    setTimeout(function(){objWin.print();objWin.close();}, 1000);

	}

		
		/* var printtest = function(){
			//document.body.innerHTML = printArea.innerHTML;
			
			window.open().print();
			//opener.document.body.innerHTML = printArea.innerHTML
			
		} */

	</script>
</body>
</html>





























