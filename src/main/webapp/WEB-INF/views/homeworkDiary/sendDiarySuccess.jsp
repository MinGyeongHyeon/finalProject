<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background:#eee;
	}
	.topArea {
		width:80%;
		margin:0 auto;
	}
	.topArea table{
		text-align:center;
		width:100%;
		height: 100px;
	}
	.topArea table tr:first-child td:nth-child(2n){
		width:30%;
		padding-left: 10px;
		padding-right: 10px;
	}
	.topArea table tr:first-child td:nth-child(2n-1){
		width:100px;
		height:100px;
		text-align:center;
		vertical-align:middle;
		background:#ccc;
		color:#fff;
		font-size: 2em;
		font-weight: bold;
		border:1px solid black;
		border-radius: 100px;
	}
	.topArea table tr:last-child td{
		width:100px;
		font-size: 1em;
		font-weight: bold;
	}
	
	.diaryMsgArea{
		height:100%;
		align:center;
		text-align:center;
		vertical-align: middle;
		
	}
	
	.diaryMsgArea p{
		margin:0 auto;
		margin-top:200px;
		width:50%;
		height:50px;
		font-weight: bold;
		font-size: 1.8em;
	}
	
	.diaryMsgArea button{
		margin-top:30px;
		width:250px;
		height:50px;
		font-weight: bold;
		font-size: 1.8em;
		color:#fff;
		background:#fa3;
		border:none;
	}
</style>
</head>
<body>
	<div class="topArea">
		<table>
			<tr>
				<td>1</td>
				<td><hr /></td>
				<td>2</td>
				<td><hr /></td>
				<td style="background:#ffcc00">3</td>
			</tr>
			<tr>
				<td>공통내용</td>
				<td></td>
				<td>개별내용</td>
				<td></td>
				<td>완료</td>
			</tr>
		</table>
	</div>
	<hr />
	<div class="diaryMsgArea">
		<p>알림장이 모두 전송되었습니다.</p>
		<button>완료</button>
	</div>
	
	
	
</body>
</html>



































