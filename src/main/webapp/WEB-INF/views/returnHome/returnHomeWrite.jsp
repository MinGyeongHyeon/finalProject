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
		background:#ccc;
		width:60px;
		height:60px; 
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
	<c:set var="today" value="<%=new java.util.Date()%>" />
	<c:set var="todayDate"><fmt:formatDate value="${today}" pattern="yyyy.MM.dd" /></c:set>

	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">박찬민원아의 귀가동의서</label>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="returnHomeContents">
			<div class="kinderInfo">
				<table>
					<tr>
						<td rowspan="2"><img src="${ contextPath }/resources/images/woman.png" alt="" /></td>
						<td>원아명</td>
					</tr>
					<tr>
						<td>별님반	</td>
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
								<label for="today" id="dateLabel1">오늘(8월14일)</label>
							</div>
							<div class="selectDateDiv" id="selectDiv2">
								<label for="tomorrow" id="dateLabel2">내일(8월15일)</label>
							</div>
							<input type="radio" name="selectDate" id="today"  class="selectDate" value="today" checked="true" hidden/>
							<input type="radio" name="selectDate" id="tomorrow" class="selectDate" value="tomorrow" hidden/>
						</td>
					</tr>
					<tr>
						<th>귀가요청시간</th>
					</tr>
					<tr>
						<td class="selectTime">
							<select name="noonCheck" id="noonCheck">
								<option value="morning">오전</option>
								<option value="afternoon">오후</option>
							</select>&nbsp;
							<select name="hour" id="hour">
								<option value="1">1시</option>
								<option value="2">2시</option>
								<option value="3">3시</option>
								<option value="4">4시</option>
								<option value="5">5시</option>
								<option value="6">6시</option>
								<option value="7">7시</option>
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
							</select>&nbsp;
							<select name="minute" id="minute">
								<option value="00">00분</option>
								<option value="10">10분</option>
								<option value="20">20분</option>
								<option value="30">30분</option>
								<option value="40">40분</option>
								<option value="50">50분</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>귀가방법</th>
					</tr>
					<tr>
						<td>
							<input type="radio" name="returnWay" class="returnWay" value="walk"/>
							<label for="walk" style="color:#000;">도보</label>
							<input type="radio" name="returnWay" class="returnWay" value="car"/>
							<label for="mycar" style="color:#000;">자가</label>
							<input type="radio" name="returnWay" class="returnWay" value="bus"/>
							<label for="bus" style="color:#000;">통학버스</label>
						</td>
					</tr>
					<tr>
						<th>보호자</th>
					</tr>
					<tr>
						<td>
							<input type="text" name="family1" id="family1" placeholder="원아와 관계"/> &nbsp;
							<input type="text" name="phone1" id="phone1"/>
						</td>
					</tr>
					<tr>
						<th>비상연락망</th>
					</tr>
					<tr>
						<td>
							<input type="text" name="famaily2" id="famaily2" placeholder="원아와 관계"/> &nbsp;
							<input type="text" name="phone2" id="phone2"/>
						</td>
						
					</tr>
				</table>
				<hr />
			</div>
			<table style="width:95%; margin:0 auto;">
				<tr>
					<td style="width:84%; vertical-align: top;">
						<p style="margin-left:2.5%; font-size:0.8em;">영유아의 귀가 시 위 보호자에게 인보하여 주세요. <br />
						위 보호자 이외의 다른 사람에게 인계할 때는 사전에 반드시 연락을 취하겠습니다. <br />
						원에서는 부모가 희망하더라도 영유아를 혼자 귀가시키지 않습니다.</p>
					</td>
					<td>
						<div class="signArea">
							사인
							영역
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;">
						<label for=""><c:out value="${todayDate}" /> 박찬민</label>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="detailBtnArea">
			<button class="checkBtn">수신확인</button>
			<table>
				<tr>
					<td style="text-align:left;"><button>출력</button></td>
					<td style="text-align:right;"><button>목록</button></td>
				</tr>
			</table>
		</div>
	</div>
	
	
	<script>
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
			})
			
			
			
		});
	</script>
</body>
</html>






























