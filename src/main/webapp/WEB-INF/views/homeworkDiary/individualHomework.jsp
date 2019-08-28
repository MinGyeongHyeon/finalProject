<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="topArea">
		<table>
			<tr>
				<td>1</td>
				<td><hr /></td>
				<td>2</td>
				<td><hr /></td>
				<td>3</td>
			</tr>
			<tr>
				<td>공통내용</td>
				<td></td>
				<td>개별내용</td>
				<td></td>
				<td>완료</td>
			</tr>
		</table>
	</div>
	<hr />
	<form action="">
	<div class="kidsSelectArea">
		<label for=""><img src="" alt="" />원아선택</label>
		
		<input type="checkbox" name="selectAll"/>
		<div class="classroom">
			<table>
				<tr>
					<td>별님반</td>
					<td>0/15</td>
				</tr>
			</table>
		</div>
		<div class="classroom">
			<table>
				<tr>
					<td>달님반</td>
					<td>0/17</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="homeworkContents">
		<label for="">내용작성</label>
		<textarea rows="8" cols="" style="width:100%;" placeholder="내용을 입력해주세요"></textarea>
	</div>
	<div class="btnArea">
		<button>다음</button>
	</div>
	</form>
	
			
</body>
</html>