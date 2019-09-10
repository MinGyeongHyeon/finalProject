<%@page import="com.kh.fp.note.model.vo.noteKindergarden"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8;" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <% ArrayList<noteKindergarden> list = (ArrayList<noteKindergarden>) request.getAttribute("userList");%> --%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>받는 사람 선택</title>

<style>
#header {
	padding-left:15px;
	padding-top:15px;
}
#mTable {
	width:100%;
	text-align:center;
	font-size:13px;
}
#btnArea {
	float:right;
	margin-right:4%;
}
</style>

</head>
<body>

	<div id="header">
		<h6><b>받는 사람 선택</b></h6>
	</div>
	<hr>

	<table class="table table-hover" id="mTable">
		<thead>
			<tr>
				<th><input type="checkbox" id="checkAll"></th>
				<th width="20%">대표자 이름</th>
				<th>유치원 이름</th>
				<th>소재지</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${ kArr }">
				<tr>
					<td><input type="checkbox" name="chk" value="${ list.kinderNo }"></td>
					<td><c:out value="${ list.users.userName}"/></td>
					<td><c:out value="${ list.kinderName }"/></td>
					<td><c:out value="${ list.kinderAddress }"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<form action="sendList.nt" method="post">
	<div id="btnArea">
		<button type="button" class="btn btn-danger">선택</button>
	</div>
</form>
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

/* 	$(function(){
		var cArr = [];

		$("input[name=chk]:checked").each(function(i){
			cArr.push($(this).value);
			console.log(cArr);
		})
	}); */
	</script>

</body>
</html>