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
	<h1>�� ���� ����</h1><hr>
	</div>
	<h3>�� �̸�</h3>
	<div class="change"><input type="text" placeholder="Ų����ġ��"></div>	
	<h3>�� ��ȭ��ȣ</h3>
	<div class="change"><input type="text" placeholder="��ȭ��ȣ �Է��ϼ���"></div>
	<h3>����� �̸�</h3>
	<div class="change"><input type="text"></div>
	<h3>��ġ</h3>
	<div class="change">
	<select>
		<option>��/�� ����</option>
	</select>
	<select>
		<option>��/��/�� ����</option>
	</select>
	<input id="address" type="text" placeholder="���ּ�">
	</div>
	<br><br>
	<button id="saveBtn">����</button><br><br><br>
	</div>
</body>
</html>