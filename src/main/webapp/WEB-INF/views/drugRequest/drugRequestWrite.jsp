<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	.contentsArea{
		margin-top:60px;
		min-height: 660px;
	}
	
	.drugRequestArea{
		width:65%;
		min-height: 560px;
		margin:0 auto;
		background:#fff;
	}
	
	.drugContentsArea table{
		width:90%;
		margin:0 auto;
		background:#fdd;	
	}
	
	.drugContentsArea td, .drugContentsArea th{
		background:#fff;
	}
	
	
</style>
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
			<table>
				<tr>
					<th>투약일</th>
					<td>
						<label for="today">오늘(8월14일)</label>
						<label for="tomorrow">내일(8월15일)</label>
						<input type="radio" name="selectDate" id="today" hidden/>
						<input type="radio" name="selectDate" id="tomorrow" hidden/>
						
					</td>
				</tr>
				<tr>
					<th>증상</th>
					<td><input type="text" placeholder="예)감기, 몸살, 기침"/></td>
				</tr>
			</table>
			<hr style="width:90%;"/>
			<table>
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
						<input type="checkbox" />
					</td>
				</tr>
				<tr>
					<th>투약 횟수</th>
					<td>
						<select name="" id="">
							<option value="">
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>투약 시간</th>
					<td><input type="text" /></td>
				</tr>
				<tr>
					<th>보관 방법</th>
					<td>
						<label for="room">실온</label>
						<label for="refrigeration">냉장</label>
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
			</form>
		</div>
	</div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>






































