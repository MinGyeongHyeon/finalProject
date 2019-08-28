<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>

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

#saveBtn{
margin-left:38%;
width:25%;
height:7%;
background:orange;
color:white;
border-radius:15px;
}
.change{
margin-left:5%;
width:90%;
margin:0 auto;
align:center;
}
.change > input{
width:100%;
height:3%;
border-radius:5px;
shadow:none;
}
h3{
margin-left:5%;
}
#address{
width:60%;
}
select{
height:3%;
width:15%;
}
</style>
</head>
<header>
<jsp:include page="../common/teacherHeader.jsp"/>
</header>
<body>
	<div id="sidebar">
	<jsp:include page="../common/directorManagementSideMenu.jsp"/>
	</div>
	<div id="content">
	<div class="change">
	<h1>원 정보 변경</h1><hr>
	</div>
	<h3>원 이름</h3>
	<div class="change"><input type="text" placeholder="킨더유치원"></div>	
	<h3>원 전화번호</h3>
	<div class="change"><input type="text" placeholder="전화번호 입력하세요"></div>
	<h3>원장님 이름</h3>
	<div class="change"><input type="text"></div>
	<h3>위치</h3>
	<div class="change">
	<select>
		<option>시/도 선택</option>
	</select>
	<select>
		<option>시/군/구 선택</option>
	</select>
	<input id="address" type="text" placeholder="상세주소">
	</div>
	<br><br>
	<button id="saveBtn">저장</button><br><br><br>
	</div>
</body>
</html>