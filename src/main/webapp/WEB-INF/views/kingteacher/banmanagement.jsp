<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#banmanagement{
background:white;
width:60%;
text-align:center;
border:1px solid black;
}
#content{
float:right;
margin-right:20%;
margin-top:5%;
background:white;
width:50%;
}
#sidebar{
float:left;
margin-left:20%;
margin-top:5%;
}
p{
color:blue;
margin-left:5%;

}
table{
width:100%;
margin:0 auto;
}
table th{
background:lightgray;
color:white;
padding:10px;
font-weight:bold;
}
#saveBtn{
margin-left:42%;
width:15%;
height:4%;
background:orange;
color:white;
border-radius:15px;
}
h1{
margin-left:5%;

}
</style>
</head>
<header>
<jsp:include page="../common/teacherHeader.jsp"/>
</header>
<body>
	<jsp:include page="../common/kingteachersidebar.jsp"/>
	<div id="sidebar">
	
	</div>
	<div id="content">
	<div>
	<h1>반 정보 관리</h1><hr>
	<p>* 반에 원아나 교사가 있을 경우 반 삭제를 할 수 없습니다.<br>
  반 삭제를 원하시는 경우 원아나 교사를 다른 반으로 옮긴 후 삭제해 주세요.</p>
	</div>
	<table id="banmanagement">
	<tr>
	<th>반 이름</th>
	<th>원생 수</th>
	<th>삭제</th>
	</tr>
	<tr>
	<td>dfefe</td>
	<td>dfefe</td>
	<td>dfefe</td>
	</tr>
	<tbody></tbody>
	<tr>
	<td colspan="3"><button id="plusBtn" onclick="plus();">+</button></td>
	</tr>
	</table>
	<br><br>
	<button id="saveBtn">저장</button><br><br><br>
	</div>
	<script>
	function plus(){
		/* $("#banmanagement >tbody:last").append("<tr><td></td><td></td><td></td></tr>"); */
		$("<tr></tr>").clone(false).appendTo($('#banmanagement > tbody'));
	}
	</script>
</body>
</html>