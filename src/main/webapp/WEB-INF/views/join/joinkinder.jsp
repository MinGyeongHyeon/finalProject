<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
  
<style>
#topbar{
background:white;
text-align:center;
}
#loginBtn{
float:right;
margin-right:2%;
}
table td{
text-align:center;
padding:20px;
font-weight:5px;
}

table {
background:white;
}
#userImg{
margin:0 auto;
}


</style>
</head>
<body>
<div id="topbar">
키즈랜드
<button onclick="#" id="loginBtn">로그인</button>
</div>
<br><br><br>

<div id="content">

<form method="post" enctype="multipart/form-data" action="joinkinder.me">

<input type="hidden" value="${ kg.kinderNo }" name="userNo"/>

	<table align="center">
		<tr>
		<th id="magin">원장님  프로필 등록</th>
		</tr>
		
		<tr>
		
		<td>
		
		<div class="container" style="width:100%">
          
  		<img class="img-circle" width="200" height="150" id="titleImg" style="border:1px solid; align:center"/> 
  		
		</div>
		
			<div id="imghide">

			<input type="file" value="추가" id="selectFile" class="selectFile" onchange="loadImg(this, 1)" name="photo" >
			
			</div>

		</td>
		
		</tr>
		<tr><td colspan="3">

    <button  class="ui grey basic button" type="submit">등록하기</button>
    
    
		</td></tr>
	</table>


</form>


</div>


<script>

$(function(){
	
	$('#imghide').hide();
	
	$('.container').click(function(){
		$('#selectFile').click();
		
	});
	
	
});

function loadImg(value, num) {
	if(value.files && value.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			switch(num){
				case 1 : $("#titleImg").attr("src", e.target.result); break;
			}
		}

		reader.readAsDataURL(value.files[0]);
	}
}


</script>
</body>
</html>