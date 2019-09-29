<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String file_name = "excel_download";
	String ExcelName = new String(file_name.getBytes(), "UTF-8") + ".xls";
	response.setContentType("application/vnd.ms-excel");
	response.setHeader("Content-Disposition", "attachment; filename=" + ExcelName);
	response.setHeader("Content-Description", "JSP Generated Data");
	response.setHeader("Pragma", "no-cache");

	String table = request.getParameter("excel_table");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#table1 {
	text-align: center;
	margin: 0 auto;
	width: 70%;
	font-size: 16px;
}

#table1 td {
	border: 1px solid black;
}

#signImg {
	width: 70px;
	height: 70px;
}
</style>

</head>
<body>
	<div id="titleGroup">
		<h2 align="center">2019년 9월 투약의뢰서</h2>
	</div>
	<br>
	<div id="tableGroup">
		<table id="table1" class="table table-bordered" border=1>
			<thead style="background: #dcdfe0">
				<tr>
					<td rowspan="2" style="padding-top: 35px;">날짜</td>
					<td rowspan="2" style="padding-top: 35px;">이름</td>
					<td rowspan="2" style="padding-top: 35px;">증상</td>
					<td colspan="5">투약내용</td>
					<td rowspan="2" style="padding-top: 35px;">의뢰자</td>
					<td rowspan="2" style="padding-top: 35px;">싸인</td>
				</tr>
				<tr>
					<td>약의 종류</td>
					<td>투약 용량</td>
					<td>투약 횟수</td>
					<td>투약 시간</td>
					<td>보관 방법</td>
				</tr>
			</thead>
			<c:forEach var="l" items="${ dList }">
				<tr style="height: 100px;">
					<td style="padding-top: 35px;"><c:out
							value="${ l.dosageDate }" /></td>
					<td style="padding-top: 35px;"><c:out
							value="${ l.childrenName }" /></td>
					<td style="padding-top: 35px;"><c:out value="${ l.symptom }" /></td>
					<td style="padding-top: 35px;"><c:out value="${ l.kinds }" /></td>
					<td style="padding-top: 35px;"><c:out value="${ l.dosageMl }" /></td>
					<td style="padding-top: 35px;"><c:out
							value="${ l.dosageCount }" /></td>
					<td style="padding-top: 35px;"><c:out
							value="${ l.dosageTime }" /></td>
					<td style="padding-top: 35px;"><c:out
							value="${ l.dosageKeep }" /></td>
					<td style="padding-top: 35px;"><c:out value="${ l.userName }" /></td>
					<td><img src="<c:out value="${ l.signUrl}" />" id="signImg" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<form name="excel_form" id="excel_form" action="excel_download.jsp"
		method="post" target="_blank">
		<input type="hidden" name="excel_table" id="excel_table" /> <input
			type="hidden" name="file_name" id="file_name" />
	</form>

	<script>
		$(function() {
			$("#excel_table").val($("#table1").html());
			$("#excel_form").submit();
		});
	</script>

</body>
</html>