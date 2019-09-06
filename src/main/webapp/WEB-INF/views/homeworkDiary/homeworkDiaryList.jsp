<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
	.pageName table{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	.pageName tr td:first-child{
		width:60%;
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
		color:#fff;
/* 		font-weight: bold;
		border-radius: 5px;
		border: none;
		width:80px;
		padding-top: 5px;
		padding-bottom: 5px; */
	}
	
	.summaryDiv:hover {
	background:#fafafa;
	cursor:pointer;
}
	
</style>

<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<img src="${ contextPath }/resources/images/homework.png" alt="" />
						<label style="font-weight:bold;">알림장</label>
					</td>
					<td>
						<button class="btn btn-warning" onclick="goSomeoneWrite()">여러명 보내기</button>
						<button class="btn btn-warning" onclick="goAnnouncementWrite()">작성하기</button>
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
		<div class="homeworkDiarySummary" onclick="showHomeWorkDetail()">
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
		<button class="btn btn-light"><i class="fas fa-print"></i>&nbsp;&nbsp;출력 및 다운로드</button>
		
	</div>
		<script>
		function goAnnouncementWrite(){
			location.href="WriteAnnounce.pl";
		}
		
		function showHomeWorkDetail(){
			location.href = "DetailHomeWork.pl";
		}
		
		function goSomeoneWrite(){
			location.href = "howmanypeopleinClass.ih";
		}
	</script>
</body>
</html>






































