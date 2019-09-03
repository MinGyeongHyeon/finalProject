<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	function addFile(){
		$("<div class='albumImgArea' style='display: inline-block;'><img class='albumImg'/><input type='file' name='imageList' class='imageList' hidden/>").clone(true).appendTo($('.fileList:first-child'));
		
	}
	function delFile(){
		var divList = $(".albumImgArea").parent();
		/* $("divList:last").remove(); */
		console.log(divList[div]);
	}
</script>

	<script>
		$(function(){
			$(".albumImgArea").click(function(){
				$(this).children('input').click();
			});
		});
	</script>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/albumCss.css">
</head>
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
</style>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
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
						<label>앨범 작성하기</label>
			</div>
			<div class="albumWriteForm">
				<form action="">
					<table class="albumWriteTable">
						<tr>
							<th style="width:15%;">제목</th>
							<td><input type="text" name="albumTitle" style="border:0px solid #fff; width:100%;" placeholder="제목을 입력해 주세요."/></td>
						</tr>
						<tr> 
							<th style="vertical-align: top; padding-top:5px;">파일첨부</th>
							<td>
								<div class="fileList" style="width:100%;">
									<input type="button" value="추가" onclick="addFile()" />
									<input type="button" value="삭제" onclick="delFile()" /><br />
									
								</div>
							</td>
						</tr>
						<tr>
							<th colspan="2" style="text-align:left; padding-left: 30px; width:100%;">내용</th>
						</tr>
						<tr>
							<td colspan="2">
								<textarea rows="5" cols="100" placeholder="내용을 입력해 주세요." style="resize:none; width:100%;"></textarea>
							</td>
						</tr>
					</table>
					<div id="formBtn">
						<input type="reset" value="취소" onclick=""/>
						<input type="submit" value="작성하기" onclick=""/>
					</div>
				</form>
			</div>
		</div>
		
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
	
	
	
	
	
</body>
</html>
