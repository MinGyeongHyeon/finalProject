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
	<h1>�� ���� ����</h1><hr>
	<p>* �ݿ� ���Ƴ� ���簡 ���� ��� �� ������ �� �� �����ϴ�.<br>
  �� ������ ���Ͻô� ��� ���Ƴ� ���縦 �ٸ� ������ �ű� �� ������ �ּ���.</p>
	</div>
	<table id="banmanagement">
	<tr>
	<th>�� �̸�</th>
	<th>���� ��</th>
	<th>����</th>
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
	<button id="saveBtn">����</button><br><br><br>
	</div>
	<script>
	function plus(){
		/* $("#banmanagement >tbody:last").append("<tr><td></td><td></td><td></td></tr>"); */
		$("<tr></tr>").clone(false).appendTo($('#banmanagement > tbody'));
	}
	</script>
</body>
</html>