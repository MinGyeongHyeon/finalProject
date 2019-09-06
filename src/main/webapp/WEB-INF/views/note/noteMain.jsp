<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지함</title>

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
	<jsp:include page="../common/menubar.jsp"/>

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-envelope-open-text" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">받은쪽지함</h4>
				</div>
				<hr>
				<div class="page-category">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>전체선택 &nbsp;<input type="checkbox" id="selectAll"></th>
								<th>내용</th>
								<th>보낸사람</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>

					<button type="button" class="btn btn-light">삭제하기</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>