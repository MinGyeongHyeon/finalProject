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
#area1, #area2, #area4 {
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
	width:20%;
}
#table2 td {
	width:30%;
}
#input1, #input2, #input3, #input4{
	width:98%;
}
#sel1 {
	width:30%
}
input[type=radio] {
    display:none; 
    margin:10px;
}
input[type=radio] + label {
    display:inline-block;
    margin:-2px;
    padding: 4px 12px;
    background-color: white;
    width: 100%;
    height: 40px;
    text-align: center;
    border:0.5px solid #ebebeb;
}
input[type=radio]:checked + label { 
   background-image: none;
    background-color:#ff9191;
    color:white;
}
#area3 {
	margin-left:250px;
	display:inline;
}
#signArea {
	width:150px;
	height:150px;
	border:1px solid black;
	float:right;
	display:inline;
	margin-right:40px;
}
#area4 {
	margin-left:380px;
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
						<div id="area1">
							<table id="table1">
								<tr>
									<th style="width:15%;">투약일</th>
									<td>
										<input type="radio" id="radio1" name="radios1" value="today" checked>
       									<label for="radio1">오늘</label>
       								</td>
       								<td>
       									<input type="radio" id="radio2" name="radios1"value="tomorrow">
       									<label for="radio2">내일</label> 
       								</td>
								</tr>
								<tr>
									<th>증상</th>
									<td colspan="2"><input type="text" class="form-control" placeholder="예) 감기, 몸살" style="margin-top:10px;"></td>
								</tr>
							</table>
						</div>
						<hr width="98%">
						<div id="area2">					
							<h5><b>투약 내용</b></h5>
							<table id="table2">
								<tr>
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
									<td>
										<input type="radio" id="radio3" name="radios2" value="roomTemper" checked="true">
       									<label for="radio3">실온</label>
									</td>
									<td>
										<input type="radio" id="radio4" name="radios2"value="refTemper">
       									<label for="radio4" style="width:96%;">냉장</label> 
									</td>
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
						<hr width="98%">
						<div id="area3">
							<span>금일 자녀의 투약을 선생님께 의뢰합니다.</span>
						</div>
						<div id="signArea">
							싸인
						</div>
						<div id="area4">
							<span><b>2019.09.02</b></span><span>하민희</span>
						</div>
						

						
						
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>