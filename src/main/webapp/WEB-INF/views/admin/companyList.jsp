<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<style>
#content{
text-align:center;
}
form{
font-family: 'Poor Story', cursive;
background:#CEECF5;

}

body{
margin-left:2%;

margin-right:2%;
}
#companyList{
width:90%;
height:90%;
}
#companytable  th{
background:lightblue;
padding:15px;
text-align:center;
}
table td{
text-align:center;
}
h3{
margin-left:15%;
width:30%;
}
#searchArea{
	height:40px;
	width:400px;
	border:1px solid green;
	float:right;
	margin-right:15%;
	
}
#textArea{
height:38px;
}
input{
font-size:16px;
width:325px;
padding:10px;
border:0px;
outline:none;
float:left;
}
#searchBtn{
width:50px;
height:100%;
border:0px;
background:#1b5ac2;
outline:none;
float:right;
color:#ffffff
}
#companytable{
height:70%;
}
</style>
</head>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
	<jsp:include page="../main/main-include2.jsp"/>
	<form><br>
	<div class="mainmain" align="center" style="background-image: URL(${ contextPath }/resources/images/anisky.jpg); background-size:60% 60%;">
	<img class="mainimage"src="${ contextPath }/resources/images/mainicon.png" />
		</div><br>
	<h3>제휴업체 목록</h3>
	<div id="searchArea">
		<input type="text" placeholder="검색어를 입력하세요" id="textArea">
		<button id="searchBtn">검색</button>
	</div><br><br><br><br>
	<div id="companytable">
	<table id="companyList" align="center">
	<tr>
	<th>업체명</th>
	<th>결제일</th>
	<th>누적 결제 횟수</th>
	<th>서비스 시작일</th>
	<th>이용 횟수</th>
	</tr>
	<c:forEach var="l" items="${ list }">
	<tr>
	<td><c:out value="${ l.kinderName }"/></td>
	<td><c:out value="${ l.payDateDay }"/></td>
	<td><c:out value="${ l.payDateCount }"/></td>
	<td><c:out value="${ l.payDate }"/></td>
	<td><c:out value="${ l.seasonName }"/></td>
	</tr>
	</c:forEach>
	</table>
	</div>
	<br><br><br>
	</form>
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>