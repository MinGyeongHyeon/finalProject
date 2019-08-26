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
input{
padding:5px;
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
	<table align="center">
		<tr><th>비밀번호 찾기</th></tr>
		<tr>
		<td colspan="2">
		키즈랜드에 가입한 아이디를 입력해 주세요.
		</td>
		</tr>
		<tr>
		<td>
		<input type="text" placeholder="아이디">
		</td>
		</tr>
		<tr>
		<td>
		아이디가 기억나지 않는다면?<br>
		<a href="#">아이디 찾기</a>
		</td>
		</tr>
		<tr>
		<td colspan="2">
		<button type="submit">확인</button>
		</td>
		</tr>
		</table>
	
</div>

</body>
</html>