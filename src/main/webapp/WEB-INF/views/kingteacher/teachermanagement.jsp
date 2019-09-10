<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.teacher{
width:90%;
margin:0 auto;
text-align:center;
}
table th{
background:lightgray;
padding:3px;
color:white;
}
.btn{
width:30%;
margin:0 auto;
background:lightblue;
border-radius:5px;
color:white;
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
	<h1>���� ����</h1><hr>
	</div>
	<h3>�̽��� ����</h3>
	<div>
	<table id="miteacher" class="teacher">
	<tr>
	<th>���� �̸�</th>
	<th>��� ��</th>
	<th>���� ����</th>
	</tr>
	<tr>
	<td></td>
	<td></td>
	<td><button class="btn">����</button>&nbsp;&nbsp;<button class="btn">����</button></td>
	</tr>
	</table>
	</div>	
	<h3>������ �Ϸ�� ����</h3>
	<div>
	<table id="realteacher" class="teacher">
	<tr>
	<th>���� �̸�</th>
	<th>��� ��</th>
	<th>����ó</th>
	
	<c:forEach var="name" items="${ listMe }" varStatus="test">
		<tr>
		<td>${ name.userName }</td>
		<td>${ name.className }</td>
		</tr>
	</c:forEach>
	
	</tr>
	
	</table>
	</div>

	<br><br>
	<button id="saveBtn">����</button><br><br><br>
	</div>
</body>
</html>