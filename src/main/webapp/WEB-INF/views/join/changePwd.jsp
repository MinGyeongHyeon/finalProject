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
		<tr><th>비밀번호 재설정</th></tr>
		<tr>
		<td colspan="2">
		비밀번호를 재설정 해주세요.
		</td>
		</tr>
		<tr><td>
		새 비밀번호 입력 : <br><input type="password" placeholder="4~6자 영문+숫자 조함">
		</td></tr>
		<tr><td>
		비밀번호 확인 : <br><input type="password" placeholder="4~6자 영문+숫자 조함">
		</td></tr>
		<tr>
		<td colspan="2">
		<button type="submit">확인</button>
		</td>
		</tr>
		</table>
	
</div>

</body>
</html>