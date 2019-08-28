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
	
	.homeworkDiaryArea{
		width:65%;
		min-height: 560px;
		margin:0 auto;
		align:right;
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
	.summaryDiv{
		display: inline-block;
		background:#fff;
		width:30%;
		height:180px;
		margin-left: 1%;
		margin-right: 1%;
		margin-top: 3%;
	}
	.summaryDiv table{
		width:100%;
		
	}
	
	.summaryDiv img{
		width:40px;
		height:40px;
		border-radius: 20px;
	}
	
	.summaryDiv tr:first-child {
		text-align: right;
	}
	
	.summaryDiv tr:nth-child(2) {
		font-weight: bold;
		font-size: 1.2em;
	}
	
	.summaryDiv tr:last-child{
		height:70px;
		font-size: 0.8em;
		vertical-align: bottom;
		
	}
	
	.printBtn{
		background:#F95;
		font-weight: bold;
		border-radius: 5px;
		border: none;
		color:#fff;
		width:80px;
		padding-top: 5px;
		padding-bottom: 5px;
	}
	
	
	
</style>

<body>
	<jsp:include page="../common/teacherHeader.jsp"/>
	<jsp:include page="../common/teacherSideMenu.jsp"/>
	<div class="contentsArea">
	<div class="homeworkDiaryArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<img src="${ contextPath }/resources/images/homework.png" alt="" />
						<label style="font-weight:bold;">알림장</label>
					</td>
					<td>
						<button>여러명 보내기</button>
					</td>
					<td>
						<button>작성하기</button>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="searchArea">
			<select name="Classroom" class="searchclassroom">
				<option value="00">전체반 보기</option>
				<option value="01">별님반</option>
				<option value="02">햇님반</option>
				<option value="03">킨더반</option>
				<option value="04">천진반</option>
			</select>
			&nbsp;
			<select name="kinderName" class="searchKinderName">
				<option value="00">전체 원아 보기</option>
				<option value="01">김영지</option>
				<option value="02">민경현</option>
				<option value="03">박찬민</option>
				<option value="04">하민희</option>
				<option value="05">한송이</option>
			</select>
			&nbsp;
			<input type="date" name="searchDate" class="searchDate"/>
		</div>
		<div class="homeworkDiarySummary">
			<% int num = 5;
			for(int i = 0; i < num; i++){%>
			<div class="summaryDiv">
				<table>
					<tr>
						<td>WriterNAme</td>
						<td width="30px;"><img src="${ contextPath }/resources/images/woman.png" alt="" /></td>
					</tr>
					<tr>
						<td>제목 영역</td>
					</tr>
					<tr>
						<td>내용입력란</td>
					</tr>
					<tr>
						<td>작성날짜</td>
					</tr>
				</table>
			</div>
			<%} %>
		</div>
		<div>
			페이징
		</div>
		<button class="printBtn">출력하기</button>
		
	</div>
	</div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>






































