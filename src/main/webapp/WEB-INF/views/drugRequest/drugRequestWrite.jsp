<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서 작성</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#profileArea {
	margin-left: 20px;
}
#profileImg {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}
#contentsArea {
	height: 900px;
	background: white;
}
#table1 {
	font-size:14px;
	width:96%;
}
#btn1, #btn2 {
	width:100%;
	border-radius:0px;
	border:0.5px solid #c7c7c7;
}
#secondArea, #thirdArea {
	margin-left:20px;
}
#addBtn {
	float:right;
	margin-right:4%;
}
#table2 {
	width:96%;
	height:350px;
	border: 0.5px solid #d4d4d4;
	margin-top:20px;
}
#table2 th {
	padding-left:20px;
}
#input1, #input2, #input3, #input4{
	width:98%;
}
#sel1 {
	width:30%
}

</style>

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
							<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
							 &nbsp;&nbsp;<span><b>하뽀송</b></span>
						</div>
						<hr width="98%">
						<div id="secondArea">
							<table id="table1">
								<tr>
									<th style="width:15%;">투약일</th>
									<!-- <td style="width:28%"><button type="button" class="btn btn-light btns" id="btn1">오늘</button></td> -->
									<!-- <td style="width:28%"><button type="button" class="btn btn-light btns" id="btn2">내일</button></td> -->
								</tr>
								<tr>
									<th>증상</th>
									<td colspan="2"><input type="text" class="form-control" placeholder="예) 감기, 몸살" style="margin-top:10px;"></td>
								</tr>
							</table>
						</div>
						<hr width="98%">
						<div id="thirdArea">					
							<h5><b>투약 내용</b></h5>
							<table id="table2">
								<tr style="background:#fafafa;">
									<th>약의 종류</th>
									<td colspan="2"><input type="text" id="input1" class="form-control" placeholder="예) 물약, 가루약"></td>
								</tr>
								<tr>
									<th>투약 용량</th>
									<td style="padding-right:15px;"><input type="text" class="form-control" placeholder="1회분 입력"></td>
									<td><input type="checkbox"> cc/ml</td>
								</tr>
								<tr>
									<th>투약 횟수</th>
									<td colspan="2">
										<select class="form-control" id="sel1">
											<option>1 회</option>
											<option>2 회</option>
											<option>3 회</option>
											<option>4 회</option>
											<option>5 회</option>
										</select>
									</td>
								</tr>
								<tr>
									<th>투약 시간</th>
									<td colspan="2"><input type="text" id="input2" class="form-control" placeholder="예) 오전간식 후/ 점심 후 / 오후간식 후"></td>
								</tr>
								<tr>
									<th>보관 방법</th>
									<td><button type="button" class="btn btn-light btns" id="btn3">실온</td>
									<td><button type="button" class="btn btn-light btns" id="btn4">냉장</td>
								</tr>
								<tr>
									<th>특이사항</th>
									<td colspan="2"><input type="text" id="input3" class="form-control" placeholder="특이사항"></td>
								</tr>
							</table>
							<br>
							<button type="button" class="btn btn-primary" id="addBtn"><i class="fas fa-plus"></i> &nbsp;약 추가하기</button>
							<br><br>
						</div>
						<hr>
						
						<div style="width: 200px;">
    <div class="radio-items">
        <div class="col-6">
            <input id="a1" class="only-sr checked" type="radio" name="temp1" value="1" checked>
            <label for="a1">1</label>
        </div>
        <div class="col-6">
            <input id="a2" class="only-sr" type="radio" name="temp1" value="2">
            <label for="a2">2</label>
        </div>
    </div>
</div>
						
						
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>