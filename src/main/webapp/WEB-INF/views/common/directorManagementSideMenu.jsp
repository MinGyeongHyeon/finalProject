<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	li{
		list-style: none;
	}
#followquick { position:absolute; top:180px; right:50%; margin-right:350px; }
body{
font-family: 'Sunflower', sans-serif;
}
</style>
</head>
<body >
<div id="followquick">
	<div class="managementSideMenu">
		<div class="sideMenuList">
			<table class="managementSideTable">
				<tr>
					<th>멤버관리</th>
					
				</tr>
				<tr><td><p></p></td></tr>
				<tr>
					<td>
						<button type="button" class="btn btn-info" style="width:100%">관리자 관리</button><br />
						<p></p>
					</td>
					<tr>
					<td>
					<c:if test="${ loginUser.classification eq '원장님' }">
						<form action="teacheron.me?currentPage=1&currentPage2=1" method="post">
						<button class="btn btn-info" style="width:100%">교사 관리</button><br />
						<c:if test="${ loginUser.classification eq '원장님' }">
						<input type="hidden" value="${ loginUser.userNo }" name="userNo"/>
						</c:if>
						</form>
					</c:if>	
					<p></p>
					</td>
					</tr>
					<tr>
					<td>
						<form action="childrenMe.me?currentPage=1&currentPage2=1" method="post">
						<button class="btn btn-info" style="width:100%">원생 관리</button><br />
						<c:if test="${ loginUser.classification eq '선생님'}">
						<input type="hidden" value="${ teacherKing.kinderNo }" name="userNo"/>
						</c:if>
						<c:if test="${ loginUser.classification eq '원장님' }">
						<input type="hidden" value="${ loginUser.userNo }" name="userNo"/>
						</c:if>
						</form>
						<p></p>
					</td>
					</tr>
				<tr>
					<th>원 관리</th>
				</tr>
				<tr><td><p></p></td></tr>
				<tr>
					<td>
						<form action="kinderchange.kl">
						<button class="btn btn-info" style="width:100%">원 기본설정</button><br />
						<input type="hidden" value="${ of.kinderNo }" name="kinderNo"/>
						</form>
							<p></p>
					</td>
				</tr>
				<tr>
					<td>
						<form action="kindermenu.kl">
						<button class="btn btn-info" style="width:100%">메뉴 관리</button><br />
						<input type="hidden" value="${ of.kinderNo }" name="kinderNo" />
						</form>
						<p></p>
					</td>
				</tr>
				<tr>
					<td>
						<form action="kinderchange.kl">
						<button class="btn btn-info" style="width:100%">반 정보 설정</button><br />
						<input type="hidden" value="${ of.kinderNo }" name="kinderNo"/>
						</form>	
							<p></p>					
					</td>
				</tr>
			</table>
			<p></p>
		</div>
	</div>
	
</div>	
	<script>
	$(window).scroll(function(){
		var scrollTop = $(document).scrollTop();
		if (scrollTop < 180) {
		 scrollTop = 180;
		}
		$("#followquick").stop();
		$("#followquick").animate( { "top" : scrollTop });
		});
	</script>
</body>
</html>