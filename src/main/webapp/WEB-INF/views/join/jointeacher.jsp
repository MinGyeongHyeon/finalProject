<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<form action="teacherAt.me" method="post">
<input type="hidden" value="${ select.userNo }" name="userNo"/>
	<table align="center">
		<tr><th>선생님 등록</th></tr>
		<tr><td>
		<div id="userImg" style="background-image: url('${ contextPath }/resources/images/woman.png');
												 background-size:100%;"></div></td>
		</tr>
		<tr><td colspan="3">
		<form method="post" enctype="multipart/form-data" action="upload.php"> 
    <input type="file" name="pic" />
    <input type="submit" value="등록하기" />
</form>
		</td></tr>
	</table>

</form>

</div>
</body>
</html>