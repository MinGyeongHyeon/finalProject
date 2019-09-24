<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<h4 class="page-title">일지 작성하기</h4>
				</div>
				<hr>
				<div class="page-category">
					<table class="table" border="1px solid black" width="100%">
						<tr>
							<td width="30%">ㅇㅇㅇㅇ년 ㅇㅇ월 ㅇㅇ일 목요일</td>
							<td>기록자</td>
							<td colspan="2"><c:out value="${ loginUser.userName }"/></td>
						</tr>
						<tr>
							<td>주제</td>
							<td colspan="3"><input type="text" class="form-control"/></td>
						</tr>
						<tr>
							<td>소주제</td>
							<td colspan="3"><input type="text" class="form-control"/></td>
						</tr>
						<tr>
							<td>시간</td>
							<td colspan="3">활동내용</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="3"><input type="text" /></td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;~ <input type="time"></td>
							<td colspan="2"><input type="text" /></td>
						</tr>
					</table>
					<br>
					<table border="1px solid black;">
						<tr>
							<td>총평 / 특이사항</td>
							<td><input type="text" class="form-control"/></td>
						</tr>
						<tr>
							<td>비고</td>
							<td><input type="text" class="form-control"/></td>
						</tr>
					</table>

					<div>
						<button type="reset">취소</button>
						<button type="submit">작성완료</button>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>