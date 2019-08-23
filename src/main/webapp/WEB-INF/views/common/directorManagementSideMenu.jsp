<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	li{
		list-style: none;
	}
</style>
</head>
<body>
	<div class="managementSideMenu">
		<div class="sideMenuList">
			<table class="managementSideTable">
				<tr>
					<th>멤버관리</th>
				</tr>
				<tr>
					<td>
						<button class="sideMenuBtn">관리자 관리</button><br />
						<button class="sideMenuBtn">교사 관리</button><br />
						<button class="sideMenuBtn">원생 관리</button><br />
						<p></p>
					</td>
				</tr>
				<tr>
					<th>원 관리</th>
				</tr>
				<tr>
					<td>
						<button class="sideMenuBtn">원 기본정보 설정</button><br />
						<button class="sideMenuBtn">메뉴 관리</button><br />
						<button class="sideMenuBtn">반 정보 설정</button><br />
					</td>
				</tr>
			</table>
			<p></p>
		</div>
	</div>
	
</body>
</html>