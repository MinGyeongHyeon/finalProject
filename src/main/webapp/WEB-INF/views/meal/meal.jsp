<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
table{
width:100%;
margin:0 auto;
background:white;
text-align:center;
}
table th{
padding:10px;
background:orange;
}

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
	#choiceDate{
	float:right;
	background:lightblue;
	color:white;
	border-radius:5px;
	
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
<button id="choiceDate">날짜 선택</button>
<br><br>
<table>
<tr><th colspan="3"> 
<button>&lt;</button>
 2019년 8월
 <button>&gt;</button>
 </th></tr>
<tr>
<td>오전간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
<td>점심간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
<td>오후간식<br>
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
</td>
</tr>
<tr>
<td>오전밥</td>
<td>점심간식</td>
<td>오후밥</td>
</tr>
</table>
</div>
</body>
</html>