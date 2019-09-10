<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보낸 쪽지함</title>

<style>
.main-panel {
    position: relative;
    width: calc(100% - 240px);
    height: 100vh;
    min-height: 100%;
    float: right;
    transition: all .3s;
}
#table1 {
	text-align:center;
}
#btnArea {
	float:right;
	margin-right:4%;
}
#btn1 {
	background: #ff7575;
	font-weight: bold;
	color:white;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="fas fa-envelope-open-text" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">보낸 쪽지함</h4>
				</div>
				<hr>
				<hr>
				<div class="page-category">
					<table class="table table-hover" id="table1">
						<thead>
							<tr>
								<th><input type="checkbox" id="checkAll"></th>
								<th>제목</th>
								<th>받은 사람</th>
								<th>보낸 날짜</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="nList" items="${ nList }">
							<tr>
								<td><input type="checkbox" name="chk"></td>
								<td><c:out value="${ nList.noteTitle }"/></td>
								<td><c:out value="${ nList.users.userName }"/></td>
								<td><c:out value="${ nList.noteDate }"/></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>

					<div id="btnArea">
						<button type="button" class="btn" id="btn1">삭제하기</button>
					</div>
					<br>

				</div>
			</div>
		</div>
	</div>

	<script>
	$(function(){
		$("#checkAll").click(function(){
			if($("#checkAll").prop("checked")){
				$("input[name=chk]").prop("checked", true);
			}else {
				$("input[name=chk]").prop("checked", false);
			}
		})
	});
	</script>

</body>
</html>