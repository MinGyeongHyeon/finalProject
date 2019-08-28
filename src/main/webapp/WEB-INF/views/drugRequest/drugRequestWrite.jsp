<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/drugRequestCss.css">
</head>
<body>
	<jsp:include page="../common/teacherHeader.jsp"/>
	<jsp:include page="../common/parentsSideMenu.jsp"/>
	
	<div class="contentsArea">
	<div class="drugRequestArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">투약의뢰서</label>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="drugContentsArea">
			<form action="">
			<h2>원아명</h2>
			<hr />
			<table class="mainDrugContents">
				<tr>
					<th width=24%;>투약일</th>
					<td style="text-align:center;">
						<div class="selectDateDiv">
						<label for="today">오늘(8월14일)</label>
						</div>
						<div class="selectDateDiv">
						<label for="tomorrow">내일(8월15일)</label>
						</div>
						<input type="radio" name="selectDate" id="today"  class="selectDate" hidden/>
						<input type="radio" name="selectDate" id="tomorrow" class="selectDate" hidden/>
						
					</td>
				</tr>
				<tr>
					<th>증상</th>
					<td><input type="text" placeholder="예)감기, 몸살, 기침"/></td>
				</tr>
			</table>
			<hr style="width:90%;"/>
			<table class="subDrugContents">
				<tr>
					<th colspan="2">투약내용</th>
				</tr>
				<tr>
					<th>약의 종류</th>
					<td><input type="text" /></td>
				</tr>
				<tr>
					<th>투약 용량</th>
					<td>
						<input type="text" />
						<input type="checkbox" id="ccml" /><label for="ccml">cc/ml</label>
					</td>
				</tr>
				<tr>
					<th>투약 횟수</th>
					<td>
						<select name="drugCount" id="drugCount">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							
						</select>
					</td>
				</tr>
				<tr>
					<th>투약 시간</th>
					<td><input type="text" placeholder="예)오전간식 후/점심 후/오후간식 후" /></td>
				</tr>
				<tr>
					<th>보관 방법</th>
					<td style="text-align:center;">
					<div class="temperatureDiv">
						<label for="room">실온</label>
					</div>
					<div class="temperatureDiv">
						<label for="refrigeration">냉장</label>
					</div>
						<input type="radio" name="temperature" id="room" hidden/>
						<input type="radio" name="temperature" id="refrigeration" hidden/>
					</td>
				</tr>
				<tr>
					<th>특이사항</th>
					<td>
						<textarea rows="5" cols="" style="width:100%;" placeholder="특이사항을 입력해 주세요."></textarea>
					</td>
				</tr>
			</table>
			<div class="warningMsg" style="padding-left:25%;">
					<table style="margin-right: 0px;">
						<tr>
							<td style="vertical-align: top">
								<label>투약으로 인한 책임은 의뢰자에게 있습니다.</label><br />
								<label>2019.8.16 </label>
							</td>
							<td>
								<div style="background:purple; width:100px; height:100px;">
									사인
								</div>
							</td>
						</tr>
					</table>
				<br />
				</div>
			<div class="btnArea">
				<input type="reset" value="취소"/>
				<input type="submit" value="보내기"/>
			</div>
			</form>
		</div>
	</div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>






































