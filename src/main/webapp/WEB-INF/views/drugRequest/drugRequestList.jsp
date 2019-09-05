<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/drugRequest/drugRequestListCss.css">

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script>
$(function(){
	$("#datepicker").datepicker({
		changeMonth: true, 
        changeYear: true,
        nextText: '다음 달',
        prevText: '이전 달' 
	});
});
</script>

</head>
<body>	
 	<jsp:include page="../common/menubar.jsp"></jsp:include>
 	
	<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<i class="fas fa-notes-medical" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">투약의뢰서</h4>
						<c:if test="${ loginUser.classification eq '학부모'}">
						<button type="button" class="btn" id="writeBtn" onclick="goDrugRequestWrite()"><i class="fas fa-pen"></i>&nbsp;작성하기</button>
						</c:if>
					</div>
					<hr>
					<div class="page-category">
						<div class="inputArea">
							<c:if test="${ !loginUser.classification eq '학부모' }">
							<select class="form-control" id="sel1">
						        <option>전체반</option>
						        <option>별님반</option>
						        <option>티비반</option>
      						</select>
      						&nbsp;&nbsp;&nbsp;
      						<select class="form-control" id="sel2">
						        <option>전체 원아보기</option>
						        <option>김영지</option>
						        <option>한송이</option>
      						</select>
      						</c:if>
      						<div id="dateA">
							<input type="button" class="btn btn-default" id="datepicker" value="날짜 선택">
							</div>
						</div>
						<br><br><br>
						<div id="listArea">
						
							<div id="list1" onclick="showDrugDetail()">
								<br>
								<div id="profileArea">								
									<b>하뽀송</b>&nbsp;&nbsp;
									<i><img src="${ contextPath }/resources/images/woman.png" id="profileImg"></i>
								</div><br><br><br>
								<div id="contentArea">								
									<h3><b>2019년 8월 30일</b></h3>
									<i class="fas fa-briefcase-medical"></i>&nbsp;&nbsp;<span>증상</span>&nbsp;&nbsp;<span>감기</span><br>
									<i class="far fa-clock"></i>&nbsp;&nbsp;<span>투약 시간</span>&nbsp;&nbsp;<span>점심 후</span><br>
									<i class="far fa-user"></i>&nbsp;&nbsp;<span>의뢰자</span>&nbsp;&nbsp;<span>하민희</span><br>
								</div>
								<br>
								<p id="className">별님반</p>
							</div>
							
						</div>
						
						<br>
						<c:if test="${ !loginUser.classification eq '학부모' }">
						<button type="button" class="btn btn-light" id="btn2">
							<i class="fas fa-print"></i>&nbsp; 출력 및 다운로드
						</button>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	
	<script>
		function showDrugDetail(){
			location.href="drugDetailList.pl";
		}
		function goDrugRequestWrite(){
			location.href="drugRequestWrite.pl";
		}
		
	</script>
	
	<script>
    	$(function(){
    		$('.input-group.date').datepicker({
    			calendarWeeks: false,
    			todayHighlight: true,
    			autoclose: true,
    			format: "yyyy/mm/dd",
    			language: "kr"
        	});
    	});
    </script>
</body>
</html>



































