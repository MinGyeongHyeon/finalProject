<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
body{
margin:5px auto;
padding-left:10px;
width:80%;
}
/* button{
width:5%;
height:3%;
border-radius:5px;
background:lightblue;
margin:0 auto;
align:center;
} */
input{
width:80%;

}
#btnArea{
margin:0 auto;
align:center;
}
#sidebar{
float:left;
margin-left:20%;
margin-top:5%;
}
#content{
float:right;
margin-right:8%;
margin-top:6%;
background:white;
width:50%;
}
.labelban{
padding-left: 5%;
}

</style>
</head>

<body>
 <jsp:include page="../common/teacherHeader.jsp"/>


 	<jsp:include page="../common/directorManagementSideMenu.jsp"/> 
	
	<div id="content">
	<table>
	<tr>
	<td>
<h1>반 추가</h1>
	</td>
	
	<c:forEach var="i" items="${list}">
	<td class="labelban">
	<label for="" class="labelban">${ i.className }</label>
	</td>
	</c:forEach>
	
	</tr>

</table>
<hr>
<h2>반 이름</h2>
<div class="option">
<input type="text" placeholder="반 이름 입력" class="form-control"/>
<br />
</div>
<hr>
<button onclick="plus()" class="btn btn-default" type="button">반 추가</button>
<br />
<hr />
<div id="btnArea">
<button class="btn btn-default">저장</button>
</div>

</div>

<script>
function plus(){
	$("<input type='text' placeholder='반 이름 입력' class='form-control'><br>'").clone(false).appendTo($('.option'));
 }
</script>
</body>
</html>