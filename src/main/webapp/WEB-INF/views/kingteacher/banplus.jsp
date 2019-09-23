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
<div id="btnArea">
<button class="btn btn-default">저장</button>
</div>
</form>
<br /><br /><br />

<h2>반 삭제</h2>
 <h5>*반 삭제시 남아있는 인원이 없어야합니다*</h5>
 
 <table style="width:100%">
 <tr>
 	<th>반 이름</th>
 	<th>현재 인원</th>
 	<th>최대 인원</th>
 </tr>
	
	<c:forEach var="i" items="${list2}">
	<tr>
	<td>
	<label for="">${ i.className } </label>
	</td>
		<td>
			<label for="">${ i.count } 명</label>
		</td>
		<td>
			<label for="">${ i.classMax } 명</label>
		</td>
		<td><button class="btn btn-default del" >삭제</button></td>
	<td><input type="hidden" value="${ i.kinderNo }"/></td>
	<td><input type="hidden" value="${ i.className }" /></td>
	</tr>
	</c:forEach>
 	 
 </table>
 
 <hr />


 
<br />
<br />
<br />
<br />
<br />
<br />
 

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

$('.del').click(function(){
	
	var kinderNo = $(this).parent().next().children().val();
	var className = $(this).parent().next().next().children().val();
	
	console.log(kinderNo);
	console.log(className);
	
	var tufa = confirm("정말 삭제 하시겠습니까?");
	
	if(tufa){
		
	
	$.ajax({
		
		url:'classDelete.kl',
		data:{kinderNo:kinderNo,className:className},
		type:"post",
		success:function(data){
			
			console.log(data);
			
			if(data.result == 1){
				
				alert("성공적으로 삭제 되었습니다.");
				
				location.href="kinderbanplus.kl?kinderNo="+kinderNo;
				
			}else{
				
				alert("해당 반에 인원이 남아있습니다. \n다른반으로 옮긴후 삭제해주세요");
				
				window.open("classchange.kl?kinderNo="+kinderNo + "&className="+className,"PopupWin","width=600,height=600","resizable=no");
				
			}
			
		}
		
	});
		
	}
	
	
});


</script>


</body>
</html>