<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>알림장</title>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}

#titleArea {
	background: #f5f5f5;
	height: 15%;
	
}

#title {
	padding: 15px;
}

#profileArea {
	margin-left: 20px;
}

#contentsArea {
	height: 75%;
	background: white;
}

#profileImg {
	width: 50px;
	height: 50px;
	border-radius: 50%;
}



#tableArea {
	border: 0.5px solid #d6d6d6;
	width: 95%;
	height: 300px;
}

#btnA1 {
	display:inline;
}
#btnA2 {
	float:right;
}


 td {
	text-align:center;
}

.title{
	height:10%;
	width:10%;

}

.commentArea{
	height: 300px;
	background: #f5f5f5;
	padding-top:2%;
}

.writeComment{
	margin-left: 10%;
	height:20%;
	width:65%;
}

.registerComment{
	height:15%;
	width:10%;
	border-radius:10px;
	color:white;
	background-color:#8981f7;
	
}

.noticeNum{
	visibility: hidden;

}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-paper-plane" style="font-size: 20px;">&nbsp;</i>
					<h4 class="page-title">공지사항</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<div id="titleArea">
							<h2 id="title">
								<c:out value="${SelectNotice.boardTitle}"/>
							</h2>
							<p hidden><c:out value="${SelectNotice.boardNum}"/></p>
						</div>
						<div>
							<h5 style="text-align:right"><c:out value="${SelectNotice.boardDate}"/></h5>
							</div>
						<div id="contentsArea">
							<br>
								<table id="tableArea" style="margin:0 auto; board:1px solid white ">
									<tr>
										<td colspan="2" class="title"></td>
									</tr>
									<tr>
										<td colspan="2"><c:out value="${SelectNotice.boardContent}"/></td>
									</tr>
								</table>	
							<br>
					</div>
					<div id="titleArea">
							<h5 id="title" style="text-align:right">
								<c:out value="${SelectNotice.className}"/>교사
								<br><br>
 							</h5>
						</div>
					<br><br>
						<div id="btnA1">
							<button type="button" class="btn" id="btn0" onclick="print()">
								<i class="fas fa-print"></i>&nbsp; 출력
							</button>
						</div>
						
						<div id="btnA2">
						<c:if test="${loginUser.userNo eq SelectNotice.writer}">					 
						<button type="button" class="btn btn-light" id="btn1">
								<i class="fas fa-cog"></i>&nbsp; 수정
							</button>&nbsp;&nbsp;
					
							<button type="button" class="btn btn-light" id="btn2" >
								<i class="far fa-trash-alt"></i>&nbsp; 삭제
							</button>&nbsp;&nbsp;
						</c:if>		
							<button type="button" class="btn btn-light" id="btn3" onclick="goDrugMainView()">
								<i class="fas fa-list"></i>&nbsp; 목록
							</button>
						</div>
							<br><br><br>
						<h4 class="page-title"><i class="fas fa-comments" 	style="font-size: 30px;"></i>댓글</h4	>
						<div class="commentArea"> 
							<input type="text" class="writeComment">
							<button class="registerComment">등록하기</button>
							
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		function print(){
			$(this).window.print();
		}
		
		$("#btn2").click(function(){
			var bid = $("#titleArea").children().siblings().eq(1).html();
			
			location.href="delectNotice.no?bid="+bid;
			
		});
	</script>
	
</body>
</html>






































