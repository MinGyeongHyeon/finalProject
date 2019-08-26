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
		<h4>인증수단 선택</h4>
		비밀번호 재설정을 위해 인증수단을 선택한 후, 연락처 전체를 입력해 주세요.<br>
개인정보 보호를 위해 연락처 일부가 *로 표기됩니다.
		</td>
		</tr>
		<tr>
		<td colspan="2">
		<input type="radio" name="howfind">이메일로 찾기<br>
		<input type="text" placeholder="가입시 등록한 이메일"><br>
		<input type="text" placeholder="인증번호를 입력하세요">
		</td>
		</tr>
		<tr>
		<td colspan="2">
		<input type="radio" name="howfind">휴대전화로 찾기<br>
		<input type="text" placeholder="가입시 등록한 휴대번호"><br>
		<input type="text" placeholder="인증번호를 입력하세요">
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