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
						<i class="fas fa-book" style="size:25px"></i>
						<label style="font-weight:bold; font-size:20px; color:black">공지사항</label>
					</td>
					<td>
						<button class="btn btn-warning" onclick="goNoticeWrite()" style="margin-left:50%">작성하기</button>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		
		<div class="homeworkDiarySummary" onclick="showDetailNotice()">
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
		<br>
		<div class="searchArea">
			<div style="margin-left:75%">
			<input type="text" style="width:80%; border: 1px solid #dadada; border-radius:10px" placeholder=" 제목 검색">	
			<button style=" background-color:#f5d442; border: 1px solid #fac852; border-radius:4px"><i class="fas fa-search" style="size:15px;"></i></button>
			</div>
		</div>
		<div>
			페이징
		</div>
		
		
	</div>
		<script>
		function goNoticeWrite(){
			location.href="NoticeWrite.pl";
		}
		
		function showDetailNotice(){
			location.href = "DetailNotice.pl";
		}
		
	
	</script>
</body>
</html>






































