<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<input type="text" id="userNo2" value="${ loginUser.userNo }" hidden>
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<img src="${ contextPath }/resources/images/homework.png" alt="" />
						<label style="font-weight:bold;">알림장</label>
					</td>
					<c:if test="${loginUser.classification eq '선생님'}">
					<td style="text-align:right">
						<button class="btn btn-warning" onclick="goSomeoneWrite()">여러명 보내기</button>
						<button class="btn btn-warning" onclick="goAnnouncementWrite()">작성하기</button>
					</td>
					</c:if>
				</tr>
			</table>
		</div>
		<hr />
		<div class="searchArea">
	
		</div>
		<div class="homeworkDiarySummary">
			<!-- <div class="summaryDiv"> -->
			<c:forEach var="l" items="${nList}">
			<div class="summaryDiv">
				<div class="card">
			
			</div>	
			</div>
		</c:forEach>
			<!-- </div> -->
		</div>
		
	</div>
		<script>
		function goAnnouncementWrite(){
			location.href="WriteAnnounce.pl";
		}
		
		function showHomeWorkDetail(){
			location.href = "DetailHomeWork.pl";
		}
		
		function goSomeoneWrite(){
			
			location.href = "WriteIndi.pl";
		}
		
		function goWhoAreYou(){

			location.href="WriteAnnounce.pl";
		}
		$(".card").click(function(){
			 var bid = $(this).children().children().eq(0).children().children("td").eq(0).text();
			console.log(bid);
			location.href="homeworkDetail.hw?bid="+bid;
		});
	
	</script>
</body>
</html>






































