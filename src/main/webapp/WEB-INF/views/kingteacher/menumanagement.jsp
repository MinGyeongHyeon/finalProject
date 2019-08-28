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
p{
color:blue;
margin-left:5%;
}
h1{
margin-left:5%;
}
#saveBtn{
margin-left:38%;
width:25%;
height:7%;
background:orange;
color:white;
border-radius:15px;
}
.radioArea{
background:lightgray;
border-radius:10px;
padding:5px;
width:90%;
margin:0 auto;
}

h3{
margin-left:5%;
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
	<div>
	<h1>메뉴 관리</h1><hr>
	<p>홈페이지에서 사용할 기능을 on/off해주세요.</p>
	</div>
	<h3>알림장</h3>
	<div class="radioArea">
	켜기<input type="radio" name="alrimjang">
	끄기<input type="radio" name="alrimjang">
	</div>
	<h3>식단표</h3>
	<div class="radioArea">
	점심&간식<input type="radio" name="meal">
	점심만보여주기<input type="radio" name="meal">
	끄기<input type="radio" name="meal">
	</div>
	<h3>투약의뢰서</h3>
	<div class="radioArea">
	켜기<input type="radio" name="drug">
	끄기<input type="radio" name="drug">
	</div>
	<h3>귀가동의서</h3>
	<div class="radioArea">
	켜기<input type="radio" name="gohome">
	끄기<input type="radio" name="gohome">
	</div>
	<br><br>
	<button id="saveBtn">저장</button><br><br><br>
	</div>
</body>
</html>