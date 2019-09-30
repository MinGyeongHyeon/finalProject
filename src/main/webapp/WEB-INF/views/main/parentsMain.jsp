<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fu" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/mainCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<style>

.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:10%;
	    padding-left: 3%;
	    padding-right: 3%;
	}

.notice:hover {
	background: #fafafa;
	cursor: pointer;
}

body{
font-family: 'Sunflower', sans-serif;
}
</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	
	<c:if test="${ loginUser.classification eq '선생님' or loginUser.classification eq '체험판선생님'}">
	
	<div class="main-panel">
			<table style="margin:0 suto; width:100%;" >
				<tr class="firstTr">
				
					<td colspan="3">
						<div class="managementTitle">
						
							<table class="mmanagementTable" style="width:100%; background:#ddd">
								<tr>
								<th style="text-align: left; font-size: bold;">원생 관리</th>
								<th style="text-align:right; font-size:bold; color:#aaa;">
								<form action="childrenMe.me?currentPage=1&currentPage2=1" method="post">
								<button type="submit" class="btn btn-default">더보기 ></button>
								<input type="hidden" value="${ teacherKing.kinderNo }" name="userNo"/>
								</form>
								</th>
								</tr>
							</table>
							
							<br />
							<table class="managementContentsTable">
								<tr>
									<td>승인이 완료된 원생</td>
									<td>${ childrenCountN }</td>
								</tr>
								<tr><td><p></p></td></tr>
								<tr>
									<td>승인 대기중인 원생</td>
									<td>${ childrenCount }</td>
								</tr>
							</table>
							<br />
						</div>
					</td>
				</tr>
				<tr>
					<!-- 최근 공지사항 -->
					<td colspan="6" style="text-align: center;">
						<div style="margin:0 auto; width:100%;">
						<br />
							<table style="width:100%;">
								<tr>
									<td style="font-weight: bold;">최근 공지사항</td>
									<td style="text-align:right;">
										<label for="" >더보기 ></label>
									</td>
								</tr>
							</table>
							<br />
							<div class="noticeArea"> 
							<c:forEach var="i" items="${ list }">
								<div class="notice" style="height:189px;">
								<input type="hidden" value="${ i.boardNum }" name="boardNo"/>
									<table>
										<tr>
											<td>${ i.userName }<p></p></td>
										</tr><tr>
										<c:if test="${ fu:length(i.boardTitle) > 5 }">
											<td style=""> 제목  : ${i.boardTitle.substring(0,5) }.... </td>
											</c:if>
											<c:if test="${fu:length(i.boardTitle) < 5 }">
											<td>제목 : ${i.boardTitle }</td>
											</c:if>
										</tr><tr>
											<c:if test="${fu:length(i.boardContent) > 8 }">
											<td>내용 : ${i.boardContent.substring(0,8)}.......</td>
											</c:if>
											<c:if test="${ fu:length(i.boardContent) < 8 }">
											<td>내용 : ${i.boardContent }</td>
											</c:if>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>${ i.boardDate }</td>
										</tr>
									</table>
								</div>
								</c:forEach>
							
							</div>
						</div>
					</td>
				</tr>
	
			</table>
		</div>


</c:if>

<c:if test="${ loginUser.classification eq '원장님' or loginUser.classification eq '체험판원장님'}">


	
		<div class="main-panel">
			<table style="margin:0 suto; width:100%;">
				<tr class="firstTr">
					<td colspan="3">
						<div class="managementTitle">
							<table class="mmanagementTable" style="width:100%; background:#ddd;">
								<tr>
								<th style="text-align: left;">교사 관리</th>
								<th style="text-align:right; color:#aaa;">
								<form action="teacheron.me?currentPage=1&currentPage2=1" method="post">
								<button type="submit"  class="btn btn-default ">더보기 ></button>
								<input type="hidden" value="${ loginUser.userNo }" name="userNo"/>
								</form>
								</th>
								</tr>
							</table>
							<br />
							<table class="managementContentsTable">
								<tr>
									<td>승인이 완료된 교사</td>
									<td>${teacherCountN }</td>
								</tr>
								<tr><td><p></p></td></tr>
								<tr>
									<td>승인 대기중인 교사</td>
									<td>${ teacherCount }</td>
								</tr>
							</table>
							<br />
						</div>
						
					</td>
					<td colspan="3">
						<div class="managementTitle">
							<table class="mmanagementTable" style="width:100%; background:#ddd">
								<tr>
								<th style="text-align: left; font-size: bold;">원생 관리</th>
								<th style="text-align:right; font-size:bold; color:#aaa;">
								<form action="childrenMe.me?currentPage=1&currentPage2=1" method="post">
								<button type="submit"  class="btn btn-default">더보기 ></button>
								<input type="hidden" value="${ loginUser.userNo }" name="userNo"/>
								</form>
								</th>
								</tr>
							</table>
							<br />
							<table class="managementContentsTable">
								<tr>
									<td>승인이 완료된 원생</td>
									<td>${ childrenCountN }</td>
								</tr>
								<tr><td><p></p></td></tr>
								<tr>
									<td>승인 대기중인 원생</td>
									<td>${ childrenCount }</td>
								</tr>
							</table>
							<br />
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="6" style="text-align: center;">
						<div style="margin:0 auto; width:100%;">
						<br />
							<table style="width:100%;">
								<tr>
									<td style="font-weight: bold;">최근 공지사항</td>
									<td style="text-align:right;">
										<label for="" >더보기 ></label>
									</td>
								</tr>
							</table>
							<br />
							<div class="noticeArea"> 
						 	<c:forEach var="i" items="${ list }">
								<div class="notice" style="height:189px;">
								<input type="hidden" value="${ i.boardNum }" name="boardNo"/>
									<table>
										<tr>
											<td>${ i.userName }<p></p></td>
										</tr><tr>
											<c:if test="${ fu:length(i.boardTitle) > 3 }">
											<td style=""> 제목  : ${i.boardTitle.substring(0,3) }.... </td>
											</c:if>
											<c:if test="${ fu:length(i.boardTitle) < 3 }">
											<td>제목 : ${i.boardTitle }</td>
											</c:if>
										</tr><tr>
										<c:if test="${ fu:length(i.boardContent) > 7 }">
											<td>내용 : ${i.boardContent.substring(0,6)}.......</td>
											</c:if>
											<c:if test="${ fu:length(i.boardContent)  < 7 }">
											<td>내용 : ${i.boardContent }</td>
											</c:if>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>${ i.boardDate }</td>
										</tr>
									</table>
								</div>
								</c:forEach>
							 
							</div>
						</div>
					</td>
				</tr>
	
			</table>
		</div>


</c:if>

<c:if test="${ loginUser.classification eq '학부모' or loginUser.classification eq '체험판학부모'}">
	
	<div class="main-panel">
			<table style="margin:0 suto; width:100%;">
				<tr class="firstTr">
				
					<td colspan="3">
					
					</td>
				</tr>
				<tr>
						<td colspan="6" style="text-align: center;">
						<div style="margin:0 auto; width:100%;">
						<br />
							<table style="width:100%;">
								<tr>
									<td style="font-weight: bold;">최근 공지사항</td>
									<td style="text-align:right;">
										<label for="" >더보기 ></label>
									</td>
								</tr>
							</table>
							<br />
							<div class="noticeArea"> 
						 	<c:forEach var="i" items="${ list }">
								<div class="notice" style="height:189px;">
								<input type="hidden" value="${ i.boardNum }" name="boardNo"/>
									<table>
										<tr>
											<td>${ i.userName }<p></p></td>
										</tr><tr>
										<c:if test="${ fu:length(i.boardTitle) > 5 }">
											<td style=""> 제목  : ${i.boardTitle.substring(0,5) }.... </td>
											</c:if>
											<c:if test="${ fu:length(i.boardTitle) < 5 }">
											<td>제목 : ${ i.boardTitle }</td>
											</c:if>
											
										</tr><tr>
										<c:if test="${ fu:length(i.boardContent) > 6 }">
											<td>내용 : ${i.boardContent.substring(0,6)}.......</td>
											</c:if>
											<c:if test="${ fu:length(i.boardContent) < 6 }">
											<td>내용 :${u.boardContent }</td>
											</c:if>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>${ i.boardDate }</td>
										</tr>
									</table>
								</div>
								</c:forEach> 
							
							</div>
						</div>
					</td>
				</tr>
				
			</table>
		</div>


</c:if>



<script>

$('.notice').click(function(){
	
	var boardNo = $(this).children().eq(0).val();
	
	location.href="NoticeOne.no?bid="+boardNo;
	
});


$(function(){
	
	if('${msg}' != ""){
		
		alert("${msg}");
		
	}
	
	
})

</script>

	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>



















