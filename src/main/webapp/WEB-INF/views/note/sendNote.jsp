<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>

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
					<i class="far fa-paper-plane" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">쪽지 보내기</h4>
				</div>
				<div class="page-category">Starter Description</div>
			</div>
		</div>
	</div>

</body>
</html>