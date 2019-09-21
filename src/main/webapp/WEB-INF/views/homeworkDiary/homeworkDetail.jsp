<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
	height: 55px;
	
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

.img{
	width:40%;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-envelope-open-text" style="font-size: 20px;">&nbsp;</i>
					<h4 class="page-title">알림장</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<div id="titleArea">
							<h2 id="title">
								<b>2019-09-03 알림장</b>
							</h2>
						</div>
						<div id="contentsArea">
							<br>
							<div id="profileArea">
								<i><img src="${ contextPath }/resources/images/woman.png"
									id="profileImg"></i> &nbsp;&nbsp;<b>원아 이름</b>
							</div>
							<br>
								<table id="tableArea" style="margin:0 auto;">
									<tr style="background: #f57373; border-radius: 5px">
										<td colspan="2" class="title" style="color:white; border-radius:10px">공통 알림장 :&nbsp;&nbsp;&nbsp;
										<c:out value="${HList[0].boardTitle}"/>
										<p hidden id="delete"><c:out value="${SelectNotice.boardNum}"/></p>
										</td>
									</tr>
									<c:choose>
									<c:when test="${HList[0].attachName ne null}">
										<tr><td>
										<img src="${contextPath}/resources/uploadFiles/<c:out value="${HList[0].attachName}"/>.PNG" alt="" />
										</td></tr>
									</c:when>
										<c:when test="${l.fileName eq null}">
										<tr><td>			</td></tr>
									</c:when>
			
									</c:choose>
									
									<tr>
										<td colspan="2"><c:out value="${HList[0].boardContent}"/></td>
									</tr>
								</table>	
								
				<c:forEach var="l" items="${HList}">
					<c:choose>
						<c:when test="${l.childrenNo eq sessionScope.childrenKing.childrenNo or l.writer eq sessionScope.loginUser.userNo}"> 
							<div style="padding-top:10%">
								<table id="tableArea" style="margin:0 auto;">
									<tr>
										<td><c:out value=""/></td>
									</tr>
									<tr style="background: #3682f5;">
										<td colspan="2" class="title" style="color:white; border-radius: 10px;"/>개별 알림장</td>
									</tr>
									<tr>
										<td colspan="2" style="border-top:white; font-color:black">
											<c:out value="${l.individualContent}"/>
										</td>
									</tr>	 	
								</table>
							</div>
						</c:when>
					</c:choose>
						</c:forEach>	
							<br>
					</div>
					<br><br>
						<div id="btnA1">
							<button type="button" class="btn" id="btn1" onclick="print()">
								<i class="fas fa-print"></i>&nbsp; 출력
							</button>
						</div>
						<div id="btnA2">
							<button type="button" class="btn btn-light" id="btn2">
								<i class="far fa-trash-alt"></i>&nbsp; 삭제
							</button>&nbsp;&nbsp;
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
		
		function goDrugMainView(){
			location.href="homeworklist.hw";
		}
		function print(){
			$(this).window.print();
		}
		
		$("#btn2").click(function(){
			var bid = $("#delete").val();
			
			console.log(bid);
			
			//location.href="updateHomework.hw?bid="+bid;
			
		});
	</script>
	
</body>
</html>




