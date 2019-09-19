<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.mainimage {
	height: 70%;
	width: 50%;
	padding-top:8%;
}

.mainmain {
	height: 800px;
	width:100%;
	padding-top:50px;
}

#explain1,#explain3{
background:#fff;
right-padding:0;
padding:50px;
width:600px;
height:200px;
}

#explain1 td:first-child,#explain3 td:first-child{
vertical-align: top;
font-size: 2em;
width:250px;
height:200px;
}

#explain2 td:nth-child(2){
vertical-align: top;
font-size: 2em;
width:250px;
height:200px;
}


#explain2{
background:#fff;
float:right;
padding:50px;
width:600px;
height:200px;
}
#back{
margin-top:30;
padding-top:100px;
}
p{
padding:30px;
}
#box,#box2{
align:center;
background:orange;
width:20%;
text-align:center;
}
#box{
float:left;
padding:30px;
margin-left:10%;
}
#box2{
float:right;
padding:30px;
margin-right:10%;
}
#startBtn{
width:10%;
height:5%;
margin-left:45%;
background:orange;
font-weight:5px;
border-radius:15px;
color:white;
}
</style>
</head>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
	<jsp:include page="main-include.jsp"/>
	<div class="mainmain" align="center" style="background-image: URL(${ contextPath }/resources/images/anisky.jpg); background-size:100% 100%;">
		<img class="mainimage"src="${ contextPath }/resources/images/mainicon.png" />
	</div>
	<div style="background:#dfa;">
	<br>
	<h1 align="center">이런 기능을 넣었습니다</h1>
	
	<div id="back">
		<div id="introduce1">
		<table id="explain1">
			<tr>
			<td>학부모님을 위해</td>
			<td><p>아이에게 맡기지 않아도 되는 회신용 알림장<br>
			우리 아이를 위한 앨범 사진 모아보기<br>
			간편한 트약 의뢰서 작성<br>
			어떻게 귀가할 것인가 귀가 동의서 작성<br>
			어떠한 행사가 있는지 알 수 있는 일정표<br>
			우리 아이가 먹는 식단표
			</p></td>
			</tr>
			</table>
		</div>
		<br><br><br>
		<div id="introduce2">
		<table id="explain2">
			<tr>
			<td><p>모든 반에 전달 할 수 있는 공지사항<br>
			편리하게 할 수 있는 교사 및 원아 정보 관리<br>
			학부모님께 신뢰를 주기 위한 식단표 작성<br>
			회신용 알림장의 편리한 결과 집계</p>
			</td>
			<td>원장님을 위해</td>
			</tr>
		</table>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div id="introduce3">
		<table id="explain3">
	<tr>		
			<td>선생님을 위해</td>
			<td><p>수기로 작성할 필요 없는 개별 알림장<br>
			쉽게 작성할 수 있는 일지<br>
			편리한 아이들의 출석 관리<br>
			문서 업무 시간 감소를 통해 업무 피로도 감소</p>
			</td>
			</tr>
		</table>
		</div><br>
		</div>
		
		<div id="box">
		<h1>1개월 이용권</h1>
		<p style="background:white;">12,000원<br>(*VAT 별도)<br><br></p>
		</div>
		<div id="box2">
		<h1>6개월 이용권</h1>
		<p style="background:white;">59,400원<br>(*VAT 별도)<br><br></p>
		</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<button onclick="start();" id="startBtn">시작하기</button><br><br><br><br><br><br><br>
		<script>
		function start(){}
		</script>
		</div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>