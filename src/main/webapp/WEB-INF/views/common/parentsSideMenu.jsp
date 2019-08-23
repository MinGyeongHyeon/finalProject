<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<div class="sideMenu">
		<div class="loginUserInfo">
			<table class="loginUserInfoTable">
				<tr>
					<td style="text-align:right; font-size:0.8em;"><a href="#" style="color:black;">설정</a></td>
				</tr>
				<tr>
					<td>
						<div id="userImg"></div> <!-- 프로필이미지 영역 -->
					</td>
				</tr>
				<tr>
					<td id="loginUserName">홍길동</td>
				</tr>
				<tr>
					<td id="kindergardenName">킨더유치원</td>
				</tr>
				<tr>
					<td id="className" style="text-align:left; font-size:0.8em;">킨더반</td>
				</tr>
			</table>
		</div>
		<div class="sideMenuList">
			<button class="sideMenuBtn">홈</button><br />
			<button class="sideMenuBtn">알림장</button><br />
			<button class="sideMenuBtn">공지사항</button><br />
			<button class="sideMenuBtn">앨범</button><br />
			<button class="sideMenuBtn">일정표</button><br />
			<button class="sideMenuBtn">식단표</button><br />
			<button class="sideMenuBtn">투약의뢰서</button><br />
			<button class="sideMenuBtn">귀가동의서</button><br />
			<button class="sideMenuBtn">출석부</button><br />
			<button class="sideMenuBtn">마이페이지</button><br />
			<p></p>
		</div> 
	</div>
	<div class="chatMenuP">
		<div class="sideMenuList">
			<button class="sideMenuBtn">채팅방열기</button><br />
			<p></p>
		</div>
	</div>
	
</body>
</html>