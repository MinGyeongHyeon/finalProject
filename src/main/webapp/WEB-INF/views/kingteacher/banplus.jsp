<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<c:forEach var="i" items="${list2}">
	<td class="labelban">
	<label for="" class="labelban" >${ i.className } / ${ i.count } / ${ i.classMax }  </label>
	</td>
	</c:forEach>
	
	</tr>
	

</table>
<hr>
<h2>반 이름</h2>
<form action="classAdd.kl" method="post">
<input type="hidden" name="kinderNo" value="${ of.kinderNo }"/>
<div class="option">
<table id="classAddTable">
	<tr>
		<td>
			<input type="text" placeholder="반 이름 " class="form-control " name="className2" /><br>
		</td>
		<td>
			<input type="text" placeholder="최대 인원(숫자로입력)" class="form-control number" name="className3" /><br>
		</td>		
	</tr>
</table>
<br />
</div>
<button onclick="plus()" class="btn btn-default" type="button">반 추가</button>
<hr>
<br />
<div id="btnArea">
<button class="btn btn-default">저장</button>
</div>
</form>

<h2>반 삭제</h2>

</div>

<script>
function plus(){
	
	var $table = $('#classAddTable');
	var $tr = $('<tr>');
	var $td1 = $('<td>');
	var $td2 = $('<td>');
	var $input = $("<input type='text' placeholder='반 이름 ' class='form-control' name='className2'><br>");
	var $input2 = $('<input type="text" placeholder="최대 인원(숫자로입력)" class="form-control number" name="className3"><br>' );
	
	$td1.append($input);
	$td2.append($input2);
	$tr.append($td1);
	$tr.append($td2);
	$table.append($tr);
	
	$('.number').keyup(function(){
		
		var loc = $(this);
		
	if(/[^0123456789]/g.test($(this).val() )) {
		
	    loc.val("");
	    loc.focus();
	 }

	});
	
	
//	$("<input type='text' placeholder='반 이름 입력' class='form-control'name='className2'><br>'").clone(false).appendTo($('.option'));
	
 }
 

$('.number').keyup(function(){
	
	var loc = $(this);
	
if(/[^0123456789]/g.test($(this).val() )) {
	
    loc.val("");
    loc.focus();
 }

});


</script>
</body>
</html>