<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background:white;
}
</style>
</head>
<body>
<h1>유치원 등록</h1>
<hr>
<h2>1. 원 정보</h2>
<h3>원 이름</h3>
<input type="text" placeholder="원 이름을 입력해 주세요"><br>
<h3>원 전화번호</h3>
<input type="text"><br>
<h3>원장님 이름</h3>
<input type="text">
<br><br>
<h2>원 위치</h2>
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
		<input type="text" placeholder="상세주소">
<h2>반 정보</h2>
<input type="text" placeholder="반 이름을 입력해주세요"><br><br>
<input type="text" placeholder="반 이름을 입력해주세요"><br><br><br>
<button type="submit" align="center">등록</button>
</body>
</html>