<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서 작성</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 싸인 패드 -->
<script src="${ contextPath }/resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${ contextPath }/resources/js/signature_pad.min.js" type="text/javascript"></script>
<%-- <link rel="stylesheet" href="${ contextPath }/resources/css/drugRequest/drugRequestWriteCss.css"> --%>

<style>
.m-signature-pad {
	font-size: 10px;
	width: 200px;
	height: 200px;
	background-color: #fff;
	border: 1px solid #bababa;
}

.m-signature-pad--body canvas {
	width: 200px;
	height: 200px;
}

@media screen and (max-height: 320px) {
	.m-signature-pad--body {
		left: 0;
		right: 0;
		top: 0;
		bottom: 32px;
	}
}

.m-signature-pad--footer {
	float: right;
	margin-right: 3%;
}

.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}

#profileImg {
	width: 70px;
	height: 70px;
	border-radius: 50%;
}

#contentsArea {
	height: 1100px;
	background: white;
}

#table1 {
	font-size: 16px;
	width: 96%;
	height:130px;
	font-size:1.5em;
}
input {
	height:50px;
	font-size:20px;
}
#btn1, #btn2 {
	width: 100%;
	border-radius: 0px;
	border: 0.5px solid #c7c7c7;
}

#profileArea, #area1, #area2, #area4 {
	margin-left: 30px;
}

#addBtn {
	float: right;
	margin-right: 4%;
}

#table2 {
	width: 96%;
	height: 400px;
	border: 0.5px solid #d4d4d4;
	margin-top: 20px;
	font-size:1.5em;
}

#table2 th {
	padding-left: 20px;
	width: 20%;
}

#table2 td {
	width: 30%;
}

#input1, #input2, #input3, #input4 {
	width: 98%;
}

#sel1 {
	width: 30%;
	height:50px;
	font-size:15px;
}

input[type=radio] {
	display: none;
	margin: 10px;
}

input[type=radio]+label {
	display: inline-block;
	margin: -2px;
	padding: 4px 12px;
	background-color: white;
	width: 100%;
	height: 50px;
	text-align: center;
	border: 0.5px solid #ebebeb;
	font-size:18px;
}

input[type=radio]:checked+label {
	background-image: none;
	background-color: #ff9191;
	color: white;
}
#area2 p {
	font-size:20px;
}
#area3 {
	margin-left: 670px;
    font-size: 18px;
	display: inline;
}

#area4 {
	margin-left: 835px;
	font-size: 18px;
	margin-top:15px;
}

#signArea {
	width: 200px;
	height: 200px;
	float: right;
	display: inline;
	margin-right: 4%;
}


.btns {
	width: 200px;
	height: 50px;
	color: white;
}

#sendBtn {
	background: #ff737a;
	font-weight: bold;
	font-size: 20px;
	height:50px;
}

#resetBtn {
	background: #919191;
	font-weight: bold;
	font-size: 20px;
	height:50px;
}

#check {
	height: 225px;
}

#clearBtn {
	background: #ffffff;
	font-size:15px;
}

#clearBtn:hover {
	text-decoration: underline;
}

#saveBtn1 {
	background: white;
	padding: 3px 10px;
}

#saveBtn1:hover {
	text-decoration: underline;
}
::placeholder {
  font-size: 1.2em;
}
#Bsign {
	font-size:15px;
}
</style>


</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<input type="hidden" name="childrenName" value="">

	<c:set var="today" value="<%=new Date()%>" />
	<c:set var="tomorrow" value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000)%>" />

	<fmt:formatDate var="todayToString" pattern="yyyy/MM/dd" value="${ today }" />
	<fmt:formatDate var="tomorrowToString" pattern="yyyy/MM/dd" value="${ tomorrow }" />

	<form method="post" action="insertDosageRequest.ds" onsubmit="return check()">
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<i class="fas fa-notes-medical" style="font-size: 20px;"></i>&nbsp;&nbsp;
						<h4 class="page-title">투약의뢰서 작성</h4>
					</div>
					<hr>
					<div class="page-category">
						<div id="contentsArea">
							<br>
							<div id="profileArea">
								<c:choose>
									<c:when test="${ empty at.changeName }">
										<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
									</c:when>
									<c:when test="${ not empty at.changeName }">
										<i><img src="${ contextPath }/resources/uploadFiles/${at.changeName}" id="profileImg" class="avatar-img rounded"></i>
									</c:when>
								</c:choose>
								&nbsp;&nbsp;
								<span style="font-size:1.6em;"><b><c:out value="${ childrenKing.childrenName }"/>의 투약의뢰서</b></span>
							</div>
							<hr width="98%">
							<div id="area1">

								<table id="table1">
									<tr>
										<th style="width: 15%;">투약일</th>
										<td>
											<input type="radio" id="radio1" name="dosageDate" value="${ todayToString }" checked>
											<label for="radio1">오늘 ( <fmt:formatDate type="date" value="${today}" pattern="MM월 dd일" /> )</label>
										</td>
										<td>
											<input type="radio" id="radio2" name="dosageDate" value="${ tomorrowToString }">
											<label for="radio2">내일 ( <fmt:formatDate type="date" value="${tomorrow}" pattern="MM월 dd일" /> )</label>
										</td>
									</tr>
									<tr>
										<th>증상</th>
										<td colspan="2"><input type="text" class="form-control" name="symptom" placeholder="예) 감기, 몸살" style="margin-top: 10px;"></td>
									</tr>
								</table>
							</div>
							<hr width="98%">
							<div id="area2">
								<p><b>투약 내용</b></p>
								<div id="appendArea">
								<table id="table2">
									<tr>
										<th width="10%">약의 종류</th>
										<td colspan="2">
											<input type="text" id="input1" class="form-control" placeholder="예) 물약, 가루약" name="kinds">
										</td>
									</tr>
									<tr>
										<th>투약 용량</th>
										<td style="padding-right: 15px;" colspan="2">
											<input type="text" class="form-control" placeholder="1회분 입력" name="dosageMl">
										</td>
									</tr>
									<tr>
										<th>투약 횟수</th>
										<td colspan="2">
											<select class="form-control" id="sel1" name="dosageCount">
												<option value="1">1 회</option>
												<option value="2">2 회</option>
												<option value="3">3 회</option>
												<option value="4">4 회</option>
												<option value="5">5 회</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>투약 시간</th>
										<td colspan="2">
											<input type="text" id="input2" class="form-control" name="dosageTime" placeholder="예) 오전간식 후/ 점심 후 / 오후간식 후">
										</td>
									</tr>
									<tr>
										<th>보관 방법</th>
										<td>
											<input type="radio" id="radio3" name="dosageKeep" value="roomTemper" checked="true">
											<label for="radio3">실온</label>
										</td>
										<td>
											<input type="radio" id="radio4" name="dosageKeep" value="refTemper">
											<label for="radio4" style="width: 96%;">냉장</label>
										</td>
									</tr>
									<tr>
										<th>특이사항</th>
										<td colspan="2">
											<input type="text" id="input3" class="form-control" name="dosageProblem" placeholder="특이사항">
										</td>
									</tr>
								</table>
								</div>
								<!--
								<br>
								<button type="button" class="btn btn-primary" id="addBtn">
									<i class="fas fa-plus"></i> &nbsp;약 추가하기
								</button>
								<br> <br>
								 -->
								 <br>
							</div>
							<hr width="98%">
							<div id="check">
								<div style="float: right; margin-right: 4%; font-size:20px;">
									<span><b id="Bsign">서명</b></span>
								</div>
								<br><br>
								<div id="area3">
									<span>금일 자녀의 투약을 선생님께 의뢰합니다.</span>
								</div>
								<div id="signArea">
									<div id="signature-pad" class="m-signature-pad">
										<div class="m-signature-pad--body">
											<canvas id="aaa"></canvas>
										</div>
									</div>
								</div>
								<div id="area4">
									<span><b><fmt:formatDate type="date" value="${today}" pattern="yyyy.MM.dd"/></b></span>
									&nbsp;<span><c:out value="${ loginUser.userName }"/></span>
								</div>
							</div>
							<br>
							<div class="m-signature-pad--footer">
								<button type="button" class="button clear btn btn-xs" data-action="clear" id="clearBtn">
									<i class="fas fa-redo-alt"></i>&nbsp;다시쓰기
								</button>
								<!--
								<button type="button" class="button save btn btn-xs" data-action="save" id="saveBtn1">저장</button>
								 -->
							</div>
						</div>
						<br>
						<div id="btnArea" align="center">
							<button type="reset" class="btn btns" id="resetBtn" onclick="goDrugMainView()">취소</button>
							<button type="submit" class="btn btns" id="sendBtn">보내기</button>
						</div>

						<input type="hidden" id="url" name="signUrl">

					</div>
				</div>
			</div>
		</div>
	</form>

	<script>
		function goDrugMainView() {
			location.href = "dosageList.ds";
		}

		/* 싸인패드 */
		var canvas = $("#signature-pad canvas")[0];
		var sign = new SignaturePad(canvas, {
			minWidth : 2,
			maxWidth : 2,
			penColor : "#000000"
		});

		$("[data-action]").on("click", function() {
			if($(this).data("action") == "clear"){
				sign.clear();
			}
		});

		function resizeCanvas() {
			var canvas = $("#signature-pad canvas")[0];

			var ratio = Math.max(window.devicePixelRatio || 1, 1);
			canvas.width = canvas.offsetWidth * ratio;
			canvas.height = canvas.offsetHeight * ratio;
			canvas.getContext("2d").scale(ratio, ratio);
		}

		$(window).on("resize", function() {
			resizeCanvas();
		});

		resizeCanvas();

		function check(){
			if (sign.isEmpty()) {
				alert("싸인을 해주세요!");
				return false;
			}
			else{
				var url = canvas.toDataURL();

				$("#url").attr('value', url);

				var value = $("#url").val();

				console.log(value);

				location.href="insertDosageRequest.ds";
			}
		}

/* 		$(function(){

			$("input[name=dosageDate]").change(function() {
				var value = $(this).val();
				var checked = $(this).prop('checked');
				console.log(value);
			});

			$("input[name=dosageKeep]").change(function() {
				var value2 = $(this).val();
				var checked2 = $(this).prop('checked');
				console.log(value2);
			});


		}); */

		function getUrlParams() {
    		var params = {};
   			window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
    		return params;
		}

		$(function() {

			oParams = getUrlParams();

			if(oParams.insert == 'Y'){
				alert("투약의뢰서가 작성되었습니다.");
			}
		});

	</script>


</body>
</html>