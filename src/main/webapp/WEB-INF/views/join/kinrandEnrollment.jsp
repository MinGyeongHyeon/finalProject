<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background:white;
font-family: 'Poor Story', cursive;
margin:0 auto;
}

html{
	width:80%;
	margin:0 auto;
}
.register{
	padding-left:60px;

}
input,select{
  	width: 80%;
  	padding: 12px 20px;
 	margin: 10px auto;
 	display: inline-block;
  	border: 1px solid #ccc;
  	border-radius: 4px;
 	box-sizing: border-box;
	
}

.name{
	padding-left:150px;
	padding-right:150px;
	margin:0 auto;	
	border-radius: 5px;
	background-color:#ffdb4d;
	text-align:center;	
}
h3, h2{
	text-align:left;
}
</style>

<script>
function plus(){
	$("<input type='text' placeholder='반 이름을 입력'><br><br>").clone(false).appendTo($('.option'));
 }
</script>

</head>
<body>
<c:set var="contextPath"
			value="${ pageContext.servletContext.contextPath }"
			scope="application" />
<h1 align="center">
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center">
유치원 등록
<img src="${ contextPath }/resources/images/kindergartenicon.png" width="80px" align="center"></h1>
<hr>
<div class="name">
<h3>원 이름
<img src="${ contextPath }/resources/images/baby.png" width="60px" align="center">
</h3>
<input type="text" placeholder="원 이름을 입력해 주세요"><br>
<h3>원 전화번호 
<img src="${ contextPath }/resources/images/phone.png" width="50px" align="center">
</h3>
<input type="text"><br>
<h3>원장님 이름
<img src="${ contextPath }/resources/images/card.png" width="50px" align="center">
</h3>
<input type="text">
<br><br>
<h2>원 위치
<img src="${ contextPath }/resources/images/location.png" width="50px" align="center">
</h2>
<select>
			<option>시/도 선택</option>
			<option>서울시</option>
			<option>인천광역시</option>
		</select>
		<select>
			<option>시/군/구 선택</option>
			<option>강남구</option>
			<option>부평구</option>
		</select>
		<br>
		<input type="text" placeholder="상세주소">
<h2>반 정보
<img src="${ contextPath }/resources/images/happy.png" width="50px" align="center">
</h2>

<div class="option">
<input type="text" placeholder="반 이름을 입력해주세요"><br><br>
</div>
<button onclick="plus()" class="btn btn-primary">추가하기</button>
<button type="submit" align="center" class="btn btn-primary">등록</button>
<br><br><br><br>
</div>
<br><br><br><br><br><br><br><br><br><br><br>
</body>

</html>