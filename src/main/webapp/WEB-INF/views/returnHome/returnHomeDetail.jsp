<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.contentsArea{
		margin-top:60px;
		min-height: 660px;
	}
	.returnHomeContents{
		background:#fff;
		margin:0 auto;
	}
	.returnHomeContents hr{
		width:95%;
	}
	
	.returnHomeArea{
		width:65%;
		min-height: 560px;
		margin:0 auto;
		align:right;
	}
	.kinderInfo table{
		margin-left: 3%;
	}
	
	.kinderInfo img{
		width:60px;
		height:60px; 
	}
	
	.kinderInfo tr:first-child {
	 font-weight: bold;
	
	}
	.returnHomeDetail{
		width:100%;
	}
	.returnHomeDetail table{
		width:95%;
		margin:0 auto;
		background:#f55;
	}
	.returnHomeDetail td, .returnHomeDetail tr{
		background:#fff;
		height:55px;
	}
	
	.signArea{
		width:100px;
		height:100px;
		background:#aaa;
		
	}
	.detailBtnArea>button:first-child{
		width:100%;
		height:40px;
		color:#fff;
		background:#58f;
		border:none;
		border-radius: 5px;
	}
	.detailBtnArea table{
		width:100%;
	}
	
	.detailBtnArea table button{
		width:80px;
		height:40px;
		color:#fff;
		background:#554a44;
		border:none;
		border-radius: 5px;
		
	}
</style>
</head>
<body>
	<jsp:include page="../common/teacherHeader.jsp"/>
	<jsp:include page="../common/teacherSideMenu.jsp"/>
	<div class="contentsArea">
	<div class="returnHomeArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">박찬민원아의 귀가동의서</label>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="returnHomeContents">
			<div class="kinderInfo">
				<table>
					<tr>
						<td rowspan="2"><img src="${ contextPath }/resources/images/woman.png" alt="" /></td>
						<td>원아명</td>
					</tr>
					<tr>
						<td>별님반	</td>
					</tr>
				</table>
			</div>
			<hr />
			<div class="returnHomeDetail">
				<table>
					<tr>
						<th>귀가요청일</th>
						<td>2019.08.14</td>
					</tr>
					<tr>
						<th>귀가요청시간</th>
						<td>오후 6:30</td>
					</tr>
					<tr>
						<th>귀가방법</th>
						<td>도보</td>
					</tr>
					<tr>
						<th>보호자</th>
						<td>아빠 010-1234-5678</td>
					</tr>
					<tr>
						<th>비상연락망</th>
						<td>엄마 010-1234-5678</td>
					</tr>
				</table>
				<hr />
			</div>
			<table>
				<tr>
					<td style="width:84%; vertical-align: top;">
						<p style="margin-left:2.5%; font-size:0.8em;">영유아의 귀가 시 위 보호자에게 인보하여 주세요. <br />
						위 보호자 이외의 다른 사람에게 인계할 때는 사전에 반드시 연락을 취하겠습니다. <br />
						원에서는 부모가 희망하더라도 영유아를 혼자 귀가시키지 않습니다.</p>
					</td>
					<td>
						<div class="signArea">
							사인
							영역
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;">
						<label for="">2019.8.14 박찬민</label>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="DetailBtnArea">
			<button class="checkBtn">수신확인</button>
			<table>
				<tr>
					<td style="text-align:left;"><button>출력</button></td>
					<td style="text-align:right;"><button>목록</button></td>
				</tr>
			</table>
		</div>
		
		
	</div>
	</div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>






























