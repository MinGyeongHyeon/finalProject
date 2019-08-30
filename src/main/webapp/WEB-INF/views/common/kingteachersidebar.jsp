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
						<div id="userImg" style="background-image: url('${ contextPath }/resources/images/woman.png');
												 background-size:100%;"></div> <!-- 프로필이미지 영역 -->
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
			<button class="sideMenuBtn">멤버관리</button><br />
			<button class="sideMenuBtn">관리자 관리</button><br />
			<button class="sideMenuBtn">교사 관리</button><br />
			<button class="sideMenuBtn">원생 관리</button><br />
			<button class="sideMenuBtn">원 관리</button><br />
			<button class="sideMenuBtn">원 기본 정보 설정</button><br />
			<button class="sideMenuBtn">메뉴 관리</button><br />
			<button class="sideMenuBtn">반 정보 설정</button><br />
			<p></p> 
		</div>
	</div>
	
</body>
</html>