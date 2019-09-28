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
								<b hidden id="delete">${HList[0].boardNum}</b>
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
						<div id="replyA">
		<table id="replySelectTable" class="commentTables"  >
			<tr>
				<th colspan="7" style = "width:800px">댓글 리스트</th>
			</tr>
		</table>

		<br>

		<br>

		<!-- <table id="replySelectTable" class="commentTables" align="center">
			<tbody>
			<tr>
			<td colspan="2" class="tWriter"><span></span></td>
				<td colspan="3" class="tContent"></td>
				<td class="tDate"></td>
			</tr>
			</tbody>
			<tfoot>

			</tfoot>
		</table>
 -->		</div>	

						<div class="commentArea"> 
							<input type="text" class="writeComment" id="replyContent"/>
							<button class="registerComment" onclick="report();">등록하기</button>
							
						</div>	
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		
		function goDrugMainView(){
			location.href="homeworklist.hw";
		}
		function print(){
			$(this).window.print();
		}
		
		/* $("#btn2").click(function(){
			var bid = $("#delete").val();
			
			console.log(bid);
			
			//location.href="updateHomework.hw?bid="+bid;
			
		}); */
		
		function report(){
			 var content = $("#replyContent").val();
			 var bid = $("#delete").text();
			 
			  	console.log(bid);
				console.log("zz");
			   
			   $.ajax({
			      url : "homeworkApply.hw",
			      type : "get",
			      data:{"content":content,"bid":bid},
			      success : function(data){
			    	  history.go(0);
			      },error:function(request,status,error){
			    	  history.go(0); 
			      }
			   });  
		}			
		
		 $(function(){
			 var bid = $("#delete").text();
			$(document).ready(function(){
				$.ajax({
					url:"homeworkApplyStart.hw",
					data:{bid:bid},
					type:"post",
					success:function(data){
						console.log(data.length);
						var $replySelectTable = $(".commentTables");
						$replySelectTable.html("");
							for(var key in data){
								var $div = $("<div class='commentArea'>");
								var $tr = $("<tr>");
								var $tr2  = $("<tr>");
								var $hr = $("<hr>");
								var $writer = $("<td>").text("작성자 : ").css({'width':'60px','font-weight':'bold'});
			 					var $writeTd = $("<td colspan='2'>").text(data[key].commtentName).css("width", "100px");
								var $contentTd = $("<td colspan='2'>").text(data[key].commentContent).css("width","400px");
								//var $dateTd = $("<td>").text(data[key].commentDate).css({'width':'200px','color':'lightgray','font-size':'10xpx'});

							$tr2.append($writer);
							$tr2.append($writeTd);
							$tr2.append($contentTd);


							$replySelectTable.append($hr);
							$replySelectTable.append($tr2);
						}
					},
					error:function(){
					}

				});
			});

		});
 
	</script>
	
</body>
</html>




