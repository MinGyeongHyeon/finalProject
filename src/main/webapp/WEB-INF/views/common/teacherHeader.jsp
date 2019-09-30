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
	<div class="headerArea" style="width:1600px; height:49px;">
		<table class="headerTable">
			<tr>
				<td valign="middle">
					<label for="" id="gardenName" >${ kga.kinderName } 유치원</label>
					<label for="gardenSet" id="gardenSetLabel">원 설정</label>
				</td>
				<td  valign="middle" style="text-align:center;" id="test">
					<label for="companyMainBtn" id="companyMainLabel">키즈 랜드</label>
				</td>
				<td  valign="middle" style="text-align:right;">
					<button id="logoutBtn" onclick="logout();" hidden></button>
				</td>
			</tr>
		</table>
	</div>
	
	<script>
		function logout(){
			
			
		}
		
		$('#gardenName').click(function(){
			
			location.href="main.pl";
			
			
		});
		
	</script>
	
</body>
</html>





















