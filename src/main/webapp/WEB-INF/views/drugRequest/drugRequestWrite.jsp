<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서 작성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 싸인 패드 -->
<script src="${ contextPath }/resources/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${ contextPath }/resources/js/signature_pad.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="${ contextPath }/resources/css/drugRequest/drugRequestWriteCss.css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-notes-medical" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">투약의뢰서 작성</h4>
				</div>
				<div class="page-category">
					<div id="contentsArea">
						<br>
						<div id="profileArea">
							<i><img src="${ contextPath }/resources/images/woman.png"
								id="profileImg"></i> &nbsp;&nbsp;<span><b>하뽀송</b></span>
						</div>
						<hr width="98%">
						<div id="area1">
							<table id="table1">
								<tr>
									<th style="width: 15%;">투약일</th>
									<td><input type="radio" id="radio1" name="radios1"
										value="today" checked> <label for="radio1">오늘</label>
									</td>
									<td><input type="radio" id="radio2" name="radios1"
										value="tomorrow"> <label for="radio2">내일</label></td>
								</tr>
								<tr>
									<th>증상</th>
									<td colspan="2"><input type="text" class="form-control"
										placeholder="예) 감기, 몸살" style="margin-top: 10px;"></td>
								</tr>
							</table>
						</div>
						<hr width="98%">
						<div id="area2">
							<h5>
								<b>투약 내용</b>
							</h5>
							<table id="table2">
								<tr>
									<th>약의 종류</th>
									<td colspan="2"><input type="text" id="input1"
										class="form-control" placeholder="예) 물약, 가루약"></td>
								</tr>
								<tr>
									<th>투약 용량</th>
									<td style="padding-right: 15px;"><input type="text"
										class="form-control" placeholder="1회분 입력"></td>
									<td><input type="checkbox"> cc/ml</td>
								</tr>
								<tr>
									<th>투약 횟수</th>
									<td colspan="2"><select class="form-control" id="sel1">
											<option>1 회</option>
											<option>2 회</option>
											<option>3 회</option>
											<option>4 회</option>
											<option>5 회</option>
									</select></td>
								</tr>
								<tr>
									<th>투약 시간</th>
									<td colspan="2"><input type="text" id="input2"
										class="form-control" placeholder="예) 오전간식 후/ 점심 후 / 오후간식 후"></td>
								</tr>
								<tr>
									<th>보관 방법</th>
									<td><input type="radio" id="radio3" name="radios2"
										value="roomTemper" checked="true"> <label for="radio3">실온</label>
									</td>
									<td><input type="radio" id="radio4" name="radios2"
										value="refTemper"> <label for="radio4"
										style="width: 96%;">냉장</label></td>
								</tr>
								<tr>
									<th>특이사항</th>
									<td colspan="2"><input type="text" id="input3"
										class="form-control" placeholder="특이사항"></td>
								</tr>
							</table>
							<br>
							<button type="button" class="btn btn-primary" id="addBtn">
								<i class="fas fa-plus"></i> &nbsp;약 추가하기
							</button>
							<br> <br>
						</div>
						<hr width="98%">
						<div id="check">
							<div style="float: right; margin-right: 4%;">
								<span><b>서명</b></span>
							</div>
							<br>
							<div id="area3">
								<span>금일 자녀의 투약을 선생님께 의뢰합니다.</span>
							</div>
							<div id="signArea">
								<div id="signature-pad" class="m-signature-pad">
									<div class="m-signature-pad--body">
										<canvas></canvas>
									</div>
								</div>
							</div>
							<div id="area4">
								<span><b>2019.09.02</b></span>&nbsp;<span>하민희</span>
							</div>
						</div>
						<div class="m-signature-pad--footer">
							<!-- <button type="button" class="button save" data-action="save" id="saveBtn">저장</button> -->
							<button type="button" class="button clear btn btn-xs"
								data-action="clear" id="clearBtn">
								<i class="fas fa-redo-alt"></i>&nbsp;다시쓰기
							</button>
						</div>
					</div>
					<br>
					<div id="btnArea" align="center">
						<button type="button" class="btn btns" id="resetBtn"
							onclick="goDrugMainView()">취소</button>
						<button type="button" class="btn btns" id="sendBtn">보내기</button>
					</div>



				</div>
			</div>
		</div>
	</div>

	<script>
		function goDrugMainView() {
			location.href = "drugMainView.pl";
		}
	</script>

	<!-- 싸인 패드 -->
	<script>
		var canvas = $("#signature-pad canvas")[0];
		var sign = new SignaturePad(canvas, {
			minWidth : 2,
			maxWidth : 2,
			penColor : "#000000"
		});

		$("[data-action]").on("click", function() {
			if ($(this).data("action") == "clear") {
				sign.clear();
			} else if ($(this).data("action") == "save") {
				if (sign.isEmpty()) {
					alert("사인해 주세요!!");
				} else {
					$.ajax({
						url : "save.jsp",
						method : "post",
						dataType : "json",
						data : {
							sign : sign.toDataURL()
						},
						success : function(r) {
							alert("저장완료 : " + r.filename);
							sign.clear();
						},
						error : function(res) {
							console.log(res);
						}
					});
				}
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
	</script>

</body>
</html>