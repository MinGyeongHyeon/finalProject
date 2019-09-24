<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지 작성하기</title>

<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#table1, #table2, #table3 {
	border:2px solid black;
	width:100%;
	text-align:center;
}
#table1 th, #table1 td, #table2 td, #table2 th, #table3 th, #table3 td{
	border:1px solid black;
}
.form-control {
	border-radius:none !important;
}
#table1 {
	height:80px;
	font-size:16px;
	background:#e0dada;
}
.changeC {
	background:#e0dada;
}
.changeB {
	background:#f7f5f5;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<c:set var="today" value="<%=new Date()%>" />
	<fmt:formatDate var="todayToString" pattern="yyyy월 MM월 dd일" value="${ today }" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<h4 class="page-title">일지 작성하기</h4>
				</div>
				<hr>
				<div class="page-category">
					<table id="table1">
						<tr>
							<th rowspan="2" width="20%"><c:out value="${ kga.kinderName }"/></th>
							<th rowspan="2"><c:out value="${ todayToString }"/></th>
							<th class="changeC" width="20%">작성자</th>
						</tr>
						<tr>
							<td><c:out value="${ loginUser.userName }"/> <c:out value="${ loginUser.classification }"/></td>
						</tr>
					</table>

					<table id="table2">
						<tr>
							<th width="20%" class="changeB">주제</th>
							<td colspan="3"><input type="text" class="form-control"/></td>
						</tr>
						<tr>
							<th class="changeB">소주제</th>
							<td colspan="3"><input type="text" class="form-control"/></td>
						</tr>
						<tr height="50px;">
							<th class="changeC">시간</th>
							<th colspan="3" class="changeC">활동내용</th>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" class="form-control"></td>
						</tr>
					</table>
					<table id="table3">
						<tr>
							<th width="30%" class="changeB">총평 / 특이사항</th>
							<td><input type="text" class="form-control"/></td>
						</tr>
						<tr>
							<th class="changeB">비고</th>
							<td><input type="text" class="form-control"/></td>
						</tr>
					</table>
					<br>
					<div>
						<button type="reset">취소<	/button>
						<button type="submit">작성완료</button>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>