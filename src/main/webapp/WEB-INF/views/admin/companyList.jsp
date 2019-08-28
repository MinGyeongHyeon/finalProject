<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#content{
text-align:center;
}
img{
height:100%;
width:100%;
}
body{
margin-left:2%;
margin-right:2%;
}
table{
width:70%;
}
table th{
background:white;
padding:15px;
}
table td{
text-align:center;
}
h1{
margin-left:15%;
}
#searchArea{
	height:40px;
	width:400px;
	border:1px solid green;
	background:white;
	float:right;
	margin-right:15%;
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
</style>
</head>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
	<jsp:include page="../main/main-include.jsp"/>
	<form><br>
	<h1>제휴업체 목록</h1>
	<div id="searchArea">
		<input type="text" placeholder="검색어를 입력하세요">
		<button id="searchBtn">검색</button>
	</div><br><br><br>
	
	<table id="companyList" align="center">
	<tr>
	<th>업체명</th>
	<th>결제일</th>
	<th>누적 결제 횟수</th>
	<th>서비스 시작일</th>
	<th>이용 횟수</th>
	</tr>
	<tr>
	<td>d</td>
	<td>d</td>
	<td>d</td>
	<td>d</td>
	<td>d</td>
	</tr>
	</table>
	<br><br><br>
	</form>
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>