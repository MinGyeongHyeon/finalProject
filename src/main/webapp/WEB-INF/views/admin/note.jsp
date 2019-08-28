<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<!-- fontawesome -->
<link href="/happyPlaystage/css/common/all.min.css" rel="stylesheet">
<script src="/happyPlaystage/js/common/all.min.js"></script>
<title>home</title>

<style>
body {
	background-color: lightgray;
}

.mainArea {
	background: white;
	width: 80%;
	height: 500px;
	margin: 0 auto;
}

#title {
	margin-left: 25px;
	padding-top: 20px;
	width: 50%;
	font-weight: bold;
	display: inline;
}

#writeBtn {
	float: right;
	margin-right: 20px;
}
.tArea {
	width:93%;
}
</style>

</head>

<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">

<body>
	<br>
	<br>
	<div class="mainArea">
		<br>
		<h2 id="title">쪽지함</h2>
		<button id="writeBtn" class="ui orange button">쪽지쓰기</button>
		<hr style="width: 97%">

		<div class="container tArea">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>보낸사람</th>
						<th>내용</th>
						<th>상세보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>John</td>
						<td>john@example.com</td>
						<td><button class="ui primary button">쪽지보기</button></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
