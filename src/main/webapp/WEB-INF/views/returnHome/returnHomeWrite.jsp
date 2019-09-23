<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="${contextPath }/resources/css/signature/jquery.signaturepad.css" rel="stylesheet">
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
		background:#fff;
		width:30px;
		height:30px; 
		border-radius: 30px;
	}
	
	.kinderInfo tr:first-child {
	 font-weight: bold;
	
	}
	.returnHomeDetail{
		width:100%;
	}
	.returnHomeDetail table{
		width:95%;
		margin:0 auto;
	}
	.returnHomeDetail td, .returnHomeDetail th{
		background:#fff;
		
	}

	.returnHomeDetail td{
		padding-left: 50px;
		padding-right: 50px;
	}

	.returnHomeDetail th{
		text-align:left;
		padding-left: 30px;
		padding-right: 30px;
		font-size: 1.4em;
	}
	.selectDateDiv{
		width:40%;
		height:90%;
		color:#fff;
		border-radius:5px;	
		vertical-align: middle;
		text-align:center;
		display: inline-block;
		padding-top:13px;
		padding-bottom: 13px;
	}
	.selectDateDiv label{
		color:#fff;
	}
	.selectDateDiv:first-child{
		background:#59f;
	}
	
	.selectDateDiv:nth-child(2){
		background:#554a44;
	}
	
	.selectDate{
		vertical-align: middle;
	}
	
	.selectTime select{
		width:70px;
		height:40px;
		font-size: 1.1em;
	}
	
	.signArea{
		width:100px;
		height:100px;
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
	
	.detailBtnArea table button{
		width:80px;
		height:40px;
		color:#fff;
		background:#554a44;
		border:none;
		border-radius: 5px;
	}
	
	.returnWay label{
		color:#000;
	}
</style>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
	<c:set var="today" value="<%=new java.util.Date()%>" />
	<c:set var="todayDate1"><fmt:formatDate value="${today}" pattern="MM월dd일" /></c:set>
	<c:set var="todayDate2"><fmt:formatDate value="${today}" pattern="yyyy년 MM월 dd일" /></c:set>
	<c:set var="tomorrowDate" value="<%=new Date(new Date().getTime() + 60*60*24*1000)%>"/>
	<c:set var="tomorrow"><fmt:formatDate value="${tomorrowDate}" pattern="MM월dd일"/></c:set>
	
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">귀가동의서</label>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<form action="insertReturnHome.rh" method="post">
			<div class="returnHomeContents">
				<div class="kinderInfo">
					<table>
						<tr>
							<td><img src="${ contextPath }/resources/images/baby.png" alt="" />원아선택</td>
						</tr>
						<tr>
							<td>
								<c:forEach var="childrenList" items="${list}" varStatus="status">
									<input type="checkbox" name="selectChild" value="${childrenList.childrenNo }" id="selectChild"/><label for="selectChild" style="color:#000; font-size: 1.4em;"><c:out value="${childrenList.childrenName}" escapeXml="false"/></label>
								</c:forEach>
							</td>
						</tr>
					</table>
				</div>
				<hr />
				<div class="returnHomeDetail">
					<table>
						<tr>
							<th>귀가요청일</th>
						</tr>
						<tr>
							<td>
								<div class="selectDateDiv" id="selectDiv1">
									<label for="today" id="dateLabel1">오늘(<c:out value="${todayDate1}" />)</label>
								</div>
								<div class="selectDateDiv" id="selectDiv2">
									<label for="tomorrow" id="dateLabel2">내일(<c:out value="${tomorrow}" />)</label>
								</div>
								<input type="radio" name="homeDate" id="today"  class="selectDate" value="<c:out value='${todayDate1}' />" checked="true" hidden/>
								<input type="radio" name="homeDate" id="tomorrow" class="selectDate" value="<c:out value='${tomorrow}' />" hidden/>
							</td>
						</tr>
						<tr>
							<th>귀가요청시간</th>
						</tr>
						<tr>
							<td class="selectTime">
								<select name="homeTime" id="noonCheck">
									<option value="오전">오전</option>
									<option value="오후">오후</option>
								</select>&nbsp;
								<select name="homeTime" id="hour">
									<option value="1시">1시</option>
									<option value="2시">2시</option>
									<option value="3시">3시</option>
									<option value="4시">4시</option>
									<option value="5시">5시</option>
									<option value="6시">6시</option>
									<option value="7시">7시</option>
									<option value="8시">8시</option>
									<option value="9시">9시</option>
									<option value="10시">10시</option>
									<option value="11시">11시</option>
									<option value="12시">12시</option>
								</select>&nbsp;
								<select name="homeTime" id="minute">
									<option value="00분">00분</option>
									<option value="10분">10분</option>
									<option value="20분">20분</option>
									<option value="30분">30분</option>
									<option value="40분">40분</option>
									<option value="50분">50분</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>귀가방법</th>
						</tr>
						<tr>
							<td>
								<input type="radio" name="homeWay" class="returnWay" value="도보"/>
								<label for="walk" style="color:#000;">도보</label>
								<input type="radio" name="homeWay" class="returnWay" value="자가"/>
								<label for="mycar" style="color:#000;">자가</label>
								<input type="radio" name="homeWay" class="returnWay" value="통학버스"/>
								<label for="bus" style="color:#000;">통학버스</label>
							</td>
						</tr>
						<tr>
							<th>보호자</th>
						</tr>
						<tr>
							<td>
								<input type="text" name="parentsName" id="family1" placeholder="보호자 성함" style="width:80px;"/> &nbsp;
								<input type="text" name="parentsPhone" id="phone1" placeholder='"-"를 제외하고 입력'/>
							</td>
						</tr>
						<tr>
							<th>비상연락망</th>
						</tr>
						<tr>
							<td>
								<input type="text" name="emergencyName" id="famaily2" placeholder="보호자 성함" style="width:80px;"/> &nbsp;
								<input type="text" name="emergencyPhone" id="phone2" placeholder='"-"를 제외하고 입력'/>
							</td>
							
						</tr>
					</table>
					<hr />
				</div>
				<table style="width:95%; margin:0 auto;">
					<tr>
						<td style="width:84%; vertical-align: top;">
							<p style="margin-left:2.5%; font-size:0.8em;">영유아의 귀가 시 위 보호자에게 인계하여 주세요. <br />
							위 보호자 이외의 다른 사람에게 인계할 때는 사전에 반드시 연락을 취하겠습니다. <br />
							원에서는 부모가 희망하더라도 영유아를 혼자 귀가시키지 않습니다.</p>
						</td>
						<td>
							<div class="sigPad">
								<ul class="sigNav">
							      <li class="clearButton"><a href="#clear">Clear</a></li>
							    </ul>
							    <div class="sig sigWrapper">
							      <div class="typed"></div>
							      <canvas class="pad" id="canvas" width="198" height="98px"></canvas>
									<img id="myImage">
							      <input type="hidden" name="dataURL" id="urlInput"/>
							      <!-- <input type="hidden" name="output" class="output" id="outout"> -->
							    </div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: right;">
							<input type="text" name="writeDate" value="<c:out value='${todayDate2}' />"
										style="border:none; text-align: right;" readonly/>
										<c:out value="${loginUser.userName }"/>
						</td>
					</tr>
				</table>
			</div>
			<br />
			
			<c:if test="${ loginUser.classification eq '선생님' }">
				<div class="detailBtnArea">
					<button class="checkBtn">수신확인</button>
					<table>
						<tr>
							<td style="text-align:left;"><button>출력</button></td>
							<td style="text-align:right;"><button>목록</button></td>
						</tr>
					</table>
				</div>
			</c:if>
			<c:if test="${ loginUser.classification eq '학부모' }">
				<div class="detailBtnArea">
					<table>
						<tr>
							<td style="text-align:left;"><button onclick="">취소</button></td>
							<td style="text-align:right;"><button type="submit">작성완료</button></td>
						</tr>
					</table>
				</div>
			</c:if>
		</form>
		<br />
	<%-- <jsp:include page="require-drawn-signature.jsp"/> --%>
	</div>
	
  <!-- <script src="../jquery.signaturepad.js"></script> -->
  <script src="${contextPath }/resources/js/signature/jquery.signaturepad.js"></script>
  <script src="${contextPath }/resources/js/signature/jquery.signaturepad.js"></script>
  <script src="${contextPath }/resources/js/signature/jquery.signaturepad.js"></script>
  <script>
    $(document).ready(function() {
      $('.sigPad').signaturePad({drawOnly:true});
    });
    
    $(function(){
		var selectDiv1 = document.getElementById('selectDiv1');
		var selectDiv2 = document.getElementById('selectDiv2');
		$(".selectDateDiv").click(function(){
			var label = $(this.children[0].id);
			
			if(this.children[0].id == "dateLabel1"){
				$(this).css("background", "#59f");
				$("#selectDiv2").css("background", "#554a44");
				selectDiv1.children[0].click();
			}else{
				$(this).css("background", "#59f");
				$("#selectDiv1").css("background", "#554a44");
				selectDiv2.children[0].click();
			}
		});
		
		
		var canvas = document.getElementById('canvas');
		var padpad = $("#canvas");
    	
    	padpad.mouseout(function(){
    		var dataURL = canvas.toDataURL();
			var urlInput = document.getElementById('urlInput');
			console.log(urlInput);
    		console.log(dataURL);
    		urlInput.value = dataURL;
			
    	});
    });
    
  </script>
	
</body>
</html>






























