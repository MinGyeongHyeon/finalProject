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
	<h1>�޴� ����</h1><hr>
	<p>Ȩ���������� ����� ����� on/off���ּ���.</p>
	</div>
	<h3>�˸���</h3>
	<div class="radioArea">
	�ѱ�<input type="radio" name="alrimjang">
	����<input type="radio" name="alrimjang">
	</div>
	<h3>�Ĵ�ǥ</h3>
	<div class="radioArea">
	����&����<input type="radio" name="meal">
	���ɸ������ֱ�<input type="radio" name="meal">
	����<input type="radio" name="meal">
	</div>
	<h3>�����Ƿڼ�</h3>
	<div class="radioArea">
	�ѱ�<input type="radio" name="drug">
	����<input type="radio" name="drug">
	</div>
	<h3>�Ͱ����Ǽ�</h3>
	<div class="radioArea">
	�ѱ�<input type="radio" name="gohome">
	����<input type="radio" name="gohome">
	</div>
	<br><br>
	<button id="saveBtn">����</button><br><br><br>
	</div>
</body>
</html>