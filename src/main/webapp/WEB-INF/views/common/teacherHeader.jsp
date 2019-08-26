<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	
	
	.headerArea{
		background:#fa0;
		width:100%;
		height:40px;
		
	}
	
	.headerTable{
		margin:0 auto;
		width:90%;
	}
	.headerTable td{
		width:33%;
		
	}
	#gardenName{
		font-weight: bold;
		font-size: 1.5em;
		padding-top:10%;
	}
	#gardenSetLabel{
		border-radius: 5px;
		border:1px solid #f00;
		color:#f00;
		
	}
	#companyMainLabel{
		font-weight: bold;
		font-size: 1.3em;
	}
	
	#logoutLabel{
		cursor: pointer;
		text-align: right;
	}
	
</style>
<body>
	<div class="headerArea">
		<table class="headerTable">
			<tr>
				<td valign="middle">
					<label for="" id="gardenName" >킨더유치원</label>
					<label for="gardenSet" id="gardenSetLabel">원 설정</label>
					<button id="gardenSet" onclick="" hidden></button>
				</td>
				<td  valign="middle" style="text-align:center;">
					<label for="companyMainBtn" id="companyMainLabel">킨더랜드</label>
					<button type="button" id="companyMainBtn" onclick="" hidden></button>
				</td>
				<td  valign="middle" style="text-align:right;">
					<label for="logoutBtn" id="logoutLabel">한송이 선생님</label>
					<button id="logoutBtn" onclick="logout();" hidden></button>
				</td>
			</tr>
		</table>
	</div>
	
	<script>
		function logout(){
			
			
		}
	</script>
	
</body>
</html>





















