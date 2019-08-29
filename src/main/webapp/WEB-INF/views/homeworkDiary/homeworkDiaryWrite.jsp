<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	.contentsArea{
		margin-top:60px;
		min-height: 660px;
	}
	
	.drugRequestArea{
		width:65%;
		min-height: 560px;
		margin:0 auto;
	}
	
	.pageName table{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	.pageName tr td:first-child{
		width:70%;
	}
	
	.pageName img{
		width:30px;
		height:30px;
	}
	
	.pageName button{
		background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
	}
</style>

</head>
<body>
	<div class="contentsArea">
	<div class="homeworkDiaryWriteArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">알림장 작성</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모일  경우 작성하기버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite">작성하기</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="homeworkDiaryForm">
			<form action="">
				<table>
					<tr>
						<th>날짜</th>
					</tr>
					<tr>
						<td><input type="date" /></td>
					</tr>
					<tr>
						<th>원아 선택</th>
					</tr>
					<tr>
						<td><input type="checkbox" id="selectAll"/><label for="selectAll">전체선택</label></td>
					</tr>
					<tr>
						<td><button>별님반</button></td>
						<td><button>달님반</button></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="contents" id="contents" cols="" rows="7" placeholder="내용을 입력해 주세요" style="width:100%;"></textarea></td>
					</tr>
					<tr>
						<th>파일첨부</th>
						
					</tr>
				</table>
			</form>
		</div>
	</div>
	</div>	
</body>
</html>






























