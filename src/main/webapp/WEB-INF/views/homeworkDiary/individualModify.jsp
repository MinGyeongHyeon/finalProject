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
		background:#ffcc00;
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
	
	
	.modifyArea{
		background:#fff;
		padding-bottom: 20px;
		border: 2px solid #000;
		text-align: center;
		margin:0 auto;
		
	}
	.modifyArea img{
		width:40px;
		heigth:40px;
		border-radius: 20px;
	}
	.modifyArea label:first-child{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	.modifyContents{
		width:100%;
		margin:0 auto;
		border: 1px solid #ccc;
		resize: none;
		font-size: 1.2em;
		text-align: left;
	}
	
	.btnArea{
		width:100%;
		text-align: right;
		
	}
	.btnArea button{
		background:#fa0;
		width:90px;
		height:40px;
		margin-top: 10px;
		border:none;
		border-radius: 5px;
		color:#fff;
	}
	
	
</style>
</head>
<body>
	<div class="topArea">
		<table>
			<tr>
				<td>1</td>
				<td><hr /></td>
				<td style="background:#ffcc00">2</td>
				<td><hr /></td>
				<td>3</td>
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
	<form action="">
	<%int num = 3;
	for(int i = 0; i < num; i++){%>
	<div class="modifyArea" style="text-align: center;">
	<table style="width:95%">
		<tr><td>
		<img src="${contextPath }/resources/images/woman.png" alt="" /><label for="">원아명</label><br />
		<br />
		</td></tr>
		<tr><td>
		<textarea name="modifyContents" class="modifyContents" cols="30" rows="10" style="text-align:left;">
공통내용
--------------------------
개별내용
		</textarea>
		</td></tr>
	</table>
		<br />
	</div>
	<br />
	<%} %>
	<div class="btnArea">
		<button>다음</button>
	</div>
	</form>
	
			
</body>
</html>