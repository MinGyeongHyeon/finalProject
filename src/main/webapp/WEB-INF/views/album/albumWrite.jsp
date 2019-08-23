<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<style>
	.contentsArea{
		margin-top:100px;
		height:100%;
	}
	
	.albumWriteArea{
		margin:0 auto;
		width:65%;
	}
	
	.albumWriteTitle{
		width:100%;
		height:40px;
		background:#fff;
		border-top-left-radius: 10px;
		border-top-right-radius: 10px;
		box-shadow: 0px 0px 5px 2px #f77;
		padding-top:10px;
		padding-bottom: 0px;
		align:center;
		text-align: center;
	}
	
	.albumWriteTitle label{
		font-weight: bold;
	}
	
	#writeDelete button{
		border-radius: 5px;
		border:1px solid #f40;
		background:#f40;
		color:#fff;
		height:30px;
	}
	
	.albumWriteForm{
		width:100%;
		background:#fff;
		border-bottom-left-radius: 10px;
		border-bottom-right-radius: 10px;
		box-shadow: 0px 0px 5px 2px #f77;
		padding-top:10px;
		padding-bottom: 20px;
		margin-top:10px;
		
		
	}
	
	.albumWriteTable{
		width:90%;
		margin:0 auto;
		border:1px solid #bbb;
		background:#fcc;
	}
	
	.albumWriteTable th, .albumWriteTable td{
		border:1px solid #bbb;		
		background:white;
	}
	
</style>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<jsp:include page="../common/teacherHeader.jsp"/>
	
	<!-- 학부모일경우, 학부모가 아닐경우에 따라 사이드 메뉴 종류 변경 -->
	<c:if test="${ loginUserJob != 0 }">
	<jsp:include page="../common/teacherSideMenu.jsp"/>
	</c:if>
	<c:if test="${ loginUserJob == 3 }">
	<jsp:include page="../common/parentsSideMenu.jsp"/>
	</c:if>
	
	<div class="contentsArea">
	<div class="albumWriteArea">
		<div class="pageName">
			<table width=100%;>
				<tr><td>
						<label style="font-weight:bold;">앨범</label>
				</td></tr>
			</table>
		</div>
		<hr style="border:1px solid #f00;"/>
		<div class="albumWriteDiv">
			<div class="albumWriteTitle">
						<label>엘범 작성하기</label>
			</div>
			<div class="albumWriteForm">
				<form action="">
					<table class="albumWriteTable">
						<tr>
							<th>제목</th>
							<td><input type="text" name="albumTitle" style="border:0px solid #fff; width:100%;"/></td>
						</tr>
						<tr>
							<th>파일첨부</th>
							<td>
								<input type="file" />
							</td>
						</tr>
						<tr>
						</tr>
					</table>
				</form>
			</div>
		</div>
		
	</div>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
