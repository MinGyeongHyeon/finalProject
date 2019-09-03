<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지 관리</title>

<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="far fa-clipboard" style="font-size: 20px;"></i>&nbsp;&nbsp;
					<h4 class="page-title">일지관리</h4>
				</div>
				<hr>
				<div class="page-category">Starter Description</div>
			</div>
		</div>
	</div>

</body>
</html>