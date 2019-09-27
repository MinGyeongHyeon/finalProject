<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    transition: all .3s;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	.returnHomeContents{
		background:#fff;
		margin:0 auto;
	}
	.returnHomeContents hr{
		width:95%;
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
	
	.returnHomeDetail th{
		width:30%;
	}
	
	.signArea{
		margin-right:10px;
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
	
	.message{
		width:100%;
		height:40px;
		color:#fff;
		background:#58f;
		border:none;
		border-radius: 5px;
		text-align:center;
		font-weight:bold;
		vertical-align: middle;
		padding-top:10px;
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
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;"><c:out value="${rhList.childrenName}" />원아의 귀가동의서</label>
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
						<td><c:out value="${rhList.childrenName}" /></td>
					</tr>
					<tr>
						<td><p></p></td>
					</tr>
				</table>
			</div>
			<hr />
			<div class="returnHomeDetail">
				<table>
					<tr>
						<th>귀가요청일</th>
						<td><c:out value="${rhList.homeDate}" /></td>
					</tr>
					<tr>
						<th>귀가요청시간</th>
						<td><c:out value="${rhList.homeTime}" /></td>
					</tr>
					<tr>
						<th>귀가방법</th>
						<td><c:out value="${rhList.homeWay}" /></td>
					</tr>
					<tr>
						<th>보호자</th>
						<td><c:out value="${rhList.parentsName}" /> (<c:out value="${rhList.parentsPhone}" />)</td>
					</tr>
					<tr>
						<th>비상연락망</th>
						<td><c:out value="${rhList.emergencyName}" /> (<c:out value="${rhList.emergencyPhone}" />)</td>
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
							<img src="<c:out value="${rhList.dataURL}" />" alt="" />
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: right;">
						<label for="" style="margin-right: 10px;"><c:out value="${rhList.writeDate}" /><p></p></label>
					</td>
				</tr>
			</table>
		</div>
		<br />
		<div class="detailBtnArea">
			<c:if test="${ loginUser.classification eq '학부모' }">
				<c:if test="${ rhList.reading eq 'N' }">
					<div class="message">미확인</div>
	            </c:if>
	            <c:if test="${ rhList.reading eq 'Y' }">
					<div class="message">확인</div>
	            </c:if>
			</c:if>
			<table>
				<tr>
					<td style="text-align:left;"><button>출력</button></td>
					<td style="text-align:right;"><button>목록</button></td>
				</tr>
			</table>
		</div>
		
		
	</div>
</body>
</html>






























