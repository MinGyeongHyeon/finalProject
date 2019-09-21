<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	.drugRequestArea{
		
	}
	
	.pageName table{
		font-weight: bold;
		font-size: 1.5em;
	}
	
	
	.pageName tr td:first-child{
		width:60%;
	}
	
	.pageName img{
		width:30px;
		height:30px;
	}
	
	.pageName button{
		background:#665b55;
		color:#fff;
		border:none;
		border-radius: 5px; 
		padding-top:5px;
		padding-bottom: 5px;
	}
	
	.homeworkDiaryForm{
		background:#fff;
		padding:30px;
		
	}
	
	.homeworkDiaryForm table{
		width:100%;
		
	}
	.homeworkDiaryForm th{
		font-size: 1.5em;
		text-align: left;
		padding-left: 10px;
		height:50px;
		vertical-align: bottom;
	}
	
	.homeworkDiaryForm td{
		font-size: 1.2em;
	} 

	.homeworkDiaryForm tr:nth-child(2) input{
		width:300px;
		height:40px;
	}
	
	.homeworkDiaryForm tr:nth-child(4) input{
		width:20px;
		heigth:20px;
	}
	
	
	.homeworkDiaryForm input{
		border:1px solid #bbb;
	}
	
	.homeworkDiaryForm textarea{
		border:1px solid #bbb;
	}
	
		
	.albumPictureForm{
		background:#fff;
		padding:30px;
		
	}
	
	.albumPictureForm table{
		width:60%;
		
	}
	
	.albumPictureForm td{
		font-size: 1.2em;
	} 

	
	.albumPictureForm input{
		border:1px solid #bbb;
	}
	
	.albumPictureForm textarea{
		border:1px solid #bbb;
	}
	
	.classroom{
		width:35%;
		height:40px;
		vertical-align:middle;
		border-radius:5px;
		display: inline-block;
		padding-top:5px;
		margin-top:20px;
		margin-left: 5%;
		margin-right: 5%;
		background:#f55;
		
	}
	
	.classroom table{
		width:100%;
		text-align: center;
		vertical-align:middle;
		color:#fff;
		
	}
	
.albumImgArea {
	width: 100px;
	height: 70px;
	border: 1px solid #779;
	text-align: center;
	margin-top: 5px;
	margin-right: 3%;
}
	.fileList label{
		background:#fa5448;
		color:white;
		width:70px;
		height:35px;
		border-radius: 5px;
		text-align:center;
		padding-top:5px;
		margin-top:20px;
		margin-left: 5%;
		margin-right: 5%;
	}
	
	.fileList input{
		background:#fff;
		width:40%;
		height:30px;
		color:#000;
		border:1px solid white;
		border-bottom:1px solid #de2c41;
		padding-top:5px;
		margin-top:20px;
		
	}

	.homeworkBtnArea{
		width:100%;
		text-align: center;
	}
	
	.homeworkBtnArea table{
		width:100%;
	}
	
	.homeworkBtnArea td{
		width:50%;
		text-align: center;
	}
	
	.homeworkBtnArea input{
		background:#fa5;
		border:none;
		border-radius: 5px;
		width:200px;
		height:40px;
		color:#fff;
		
	
	}
	
	.className{
		width:100%;
		text-align: center;
		background:#fa5448 ;
		border:#fa5448;
		color:white;
	}
	
	
</style>
<script>
	$(function(){
		$("#selectFile").on('change', function(){
			var text = $(this).val();
			$(".fileName").val(text);
		});
	});
	
	
	
	
	
</script>

</head>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table style="width:100%;">
				<tr>
  					<td style="vertical-align: middle;">
						<p style="font-weight:bold;">알림장 작성</p>
					</td>
				</tr>
			</table>
		</div>
		<hr />

		<form action="homeWorkWrite.hw" method="post" enctype="multipart/form-data">

			<div class="homeworkDiaryForm">
				<table>
					<tr>
						<th>날짜</th>
					</tr>
					<tr>
						<td><input type="date" name="writeDate"/></td>
					</tr>
					<tr>
						<th>제목</th>
					</tr>
					<tr>
						<td><input type="text" name="boardTitle" class="Title" style="width:50%;  border-radius:10px"/></td>
					</tr>
					
					<tr>
						<th>내용</th>
					</tr>
					<tr>
						<td><textarea name="boardContent" id="contents" rows="7" placeholder="내용을 입력해 주세요" style="width:100%;  border-radius:10px"></textarea></td>
					</tr>
					
					<tr>
						<th>파일첨부</th>
					</tr>
					</table>
			</div>
			<div class="albumPictureForm">		
					<table>
						<tr>
						<td>
							<div id="contentImgArea1" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG" id="contentImg1" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea2" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg2" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea3" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg3" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea4" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg4" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea5" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg5" width="120" height="100">
							</div>
						</td>
						</tr>
						<tr>
						<td>
							<div id="contentImgArea6" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg6" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea7" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg7" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea8" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg8" width="120" height="100">
							</div>
						</td>
		 				<td>
							<div id="contentImgArea9" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG" id="contentImg9" width="120" height="100">
							</div>
						</td>
						<td>
							<div id="contentImgArea10" class="picture">
								<img src ="${contextPath}/resources/images/plus.PNG"  id="contentImg10" width="120" height="100">
							</div>
						</td>
						
					</tr>
					
					<tr>
						<td>
							<div class="fileList" style="width:100%;">
								<label for="selectFile">파일선택</label>
							</div>
							
					<div id="fileArea">
					<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this, 1)">
					<input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this, 2)">
					<input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this, 3)">
					<input type="file" id="thumbnailImg4" name="thumbnailImg4" onchange="loadImg(this, 4)">
					<input type="file" id="thumbnailImg5" name="thumbnailImg5" onchange="loadImg(this, 5)">
					<input type="file" id="thumbnailImg6" name="thumbnailImg6" onchange="loadImg(this, 6)">
					<input type="file" id="thumbnailImg7" name="thumbnailImg7" onchange="loadImg(this, 7)">
					<input type="file" id="thumbnailImg8" name="thumbnailImg8" onchange="loadImg(this, 8)">
					<input type="file" id="thumbnailImg9" name="thumbnailImg9" onchange="loadImg(this, 9)">
					<input type="file" id="thumbnailImg10" name="thumbnailImg10" onchange="loadImg(this, 10)">
					</div>
						</td>
					</tr>
				</table>
			</div>
			<hr />
			<br><br>
			<div class="homeworkBtnArea">
				<table>
					<tr>
						<td>
							<input type="reset" value="취소"/>
						</td>
						<td>
							<input type="submit" value="완료"/>
						</td>
					</tr>
				</table>
						<br><br><br><br><br>
			</div>
		</form>
	</div>
	<script>
			$(function(){
				$("#fileArea").hide();
				
				$("#contentImgArea1").click(function(){
					$("#thumbnailImg1").click();
				});
				$("#contentImgArea2").click(function(){
					$("#thumbnailImg2").click();
				});
				$("#contentImgArea3").click(function(){
					$("#thumbnailImg3").click();
				});
				$("#contentImgArea4").click(function(){
					$("#thumbnailImg4").click();
				});
				$("#contentImgArea5").click(function(){
					$("#thumbnailImg5").click();
				});
				$("#contentImgArea6").click(function(){
					$("#thumbnailImg6").click();
				});
				$("#contentImgArea7").click(function(){
					$("#thumbnailImg7").click();
				});
				$("#contentImgArea8").click(function(){
					$("#thumbnailImg8").click();
				});
				$("#contentImgArea9").click(function(){
					$("#thumbnailImg9").click();
				});
				$("#contentImgArea10").click(function(){
					$("#thumbnailImg10").click();
				});
			});
			
			function loadImg(value, num) {
				if(value.files && value.files[0]) {
					var reader = new FileReader();
					
					reader.onload = function(e) {
						switch(num){
							case 1 : $("#contentImg1").attr("src", e.target.result); break;
							case 2 : $("#contentImg2").attr("src", e.target.result); break;
							case 3 : $("#contentImg3").attr("src", e.target.result); break;
							case 4 : $("#contentImg4").attr("src", e.target.result); break;
							case 5 : $("#contentImg5").attr("src", e.target.result); break;
							case 6 : $("#contentImg6").attr("src", e.target.result); break;
							case 7 : $("#contentImg7").attr("src", e.target.result); break;
							case 8 : $("#contentImg8").attr("src", e.target.result); break;
							case 9 : $("#contentImg9").attr("src", e.target.result); break;
							case 10 : $("#contentImg10").attr("src", e.target.result); break;
						}
					}
					
					reader.readAsDataURL(value.files[0]);
				}
			}
			
			$(document).on('change','img', function() {
				
				console.log("zz");
				
			});
	</script>
</body>
</html>






























	