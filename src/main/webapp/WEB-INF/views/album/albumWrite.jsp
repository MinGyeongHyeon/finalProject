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
	
	
.topArea {
	width: 80%;
	margin: 0 auto;
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
	
	/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	padding-left: 17%;
	padding-right: 5%;
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	display: inline-block;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
img {
	width: 120px;
	width: 120px;
	border-radius: 50%;
}	

.selectC {
	width: 15%;
	height: 15%;
	display: inline-block;
	float: left;
	margin: 0;
	padding: 0;
	text-align: center;
}
.selectA{
	width: 15%;
	height: 15%;
	display: inline-block;
	float: left;
	margin: 0;
	padding: 0;
	text-align: center;


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
						<p style="font-weight:bold; font-size:30px;"><i class="far fa-images"></i>앨범 작성</p>
					</td>
				</tr>
			</table>
		</div>
		<hr />

		<form action="albumWrite.ab" method="post" enctype="multipart/form-data">

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
						<td><input type="text" name="albumTitle" class="Title" style="width:50%;  border-radius:10px"/></td>
					</tr>
					
					<tr>
						<th>내용</th>
					</tr>
					<tr>
						<td><textarea name="albumContent" id="contents" rows="7" placeholder="내용을 입력해 주세요" style="width:100%;  border-radius:10px"></textarea></td>
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
							</div>
							
					<div id="fileArea">
					<input type="file"  multiple="multiple" id="thumbnailImg1"  name="file" onchange="loadImg(this, 1)">
					<input type="file"  multiple="multiple" id="thumbnailImg2" name="file" onchange="loadImg(this, 2)">
					<input type="file"  multiple="multiple" id="thumbnailImg3" name="file" onchange="loadImg(this, 3)">
					<input type="file"  multiple="multiple" id="thumbnailImg4" name="file" onchange="loadImg(this, 4)">
					<input type="file"  multiple="multiple" id="thumbnailImg5" name="file" onchange="loadImg(this, 5)">
					<input type="file"  multiple="multiple" id="thumbnailImg6" name="file" onchange="loadImg(this, 6)">
					<input type="file"  multiple="multiple" id="thumbnailImg7" name="file" onchange="loadImg(this, 7)">
					<input type="file"  multiple="multiple" id="thumbnailImg8" name="file" onchange="loadImg(this, 8)">
					<input type="file"  multiple="multiple" id="thumbnailImg9" name="file" onchange="loadImg(this, 9)">
					<input type="file"  multiple="multiple" id="thumbnailImg10" name="file" onchange="loadImg(this, 10)">
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
							<input type="button" onclick="finalhh();" value="완료"/>
						</td>
					</tr>
				</table>
						<br><br><br><br><br>
			</div>
			<input type="hidden" id="hiddenhidden" name="hv"/>
		</form> 
		</div>
	<div class="topArea">
		<div id="myModal" class="modal">
				<div class="modal-content">
					<h2>${className}원아</h2>
					<div class="realS">
						<div class="selectA" style="display: inline;">
								<img src="${contextPath}/resources/images/dog.jpg" alt="" />
								<p><input type="checkbox" name="check" class="checkcheck"  value='999'/>&nbsp;전체&nbsp;
								<input type="hidden" name="check" class="checkcheck" value="0"/>&nbsp;</p>
							</div>	
						<c:forEach var="l" items="${list}">
							<div class="selectC" style="display: inline;" onclick="selectCheck();">
								<c:choose>
									<c:when test="${l.fileName ne null}">
										<img
											src="${contextPath}/uploadFiles/images/<c:out value="${fileName}"/>.jpg"
											alt="" />
									</c:when>
									<c:when test="${l.fileName eq null}">
										<img src="${contextPath}/resources/images/dog.jpg" alt="" />
									</c:when>
								</c:choose>
								<p class="textName">
									<input type="checkbox" name="check" class="checkcheck"  value="<c:out value="${l.childrenNo}"/>">&nbsp;
									<input type="hidden" name="check" class="checkcheck" value="<c:out value="${l.childrenName}"/>">&nbsp;
									<c:out value="${l.childrenName}" />	
								</p>
							</div>
						</c:forEach>
					</div>
					<div class="modal-footer">
						<span class="close">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="selectModal" style="width:150px; height:20%;">선택</button>
						</span>
					</div>
				</div>
			</div>
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
			};
			
			$(".picture").click(function(){
				if($(this).change()){
				
				var srcc = $(this).find("img").attr("src");
				console.log(srcc);
				
				if($(this).children().eq(0).attr("src") == "/fp/resources/images/plus.PNG"){
					
				$(this).parent().append("<input type='button' class='className myBtn'  value='클릭'/>");

				var btn = document.getElementsByClassName('className');
				
				$(".myBtn").click(function(){
					event.preventDefault('submit');
					modal.style.display = "block";
				
				});
				}
				
				
				}
				
			});
			
			
			
	// Get the modal
	var modal = document.getElementById("myModal");

	// Get the button that opens the modal
	//var btn = document.getElementById("myBtn");
	// Get the <span> element that closes the modal


	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	};
	 
	var array = Array();
	var num = null;
	var arrayName = Array();
	
	$('.checkcheck').change(function(){
		if($(this).prop('checked')){
	 		
			$(this).next().attr("checked",true);
			
		}else{
			
			$(this).next().attr("checked",false);
			
		}
		
	});
	
	
	a =0;
	sumarr = Array();
$('#selectModal').click(function(){
 	modal.style.display = 'none'; 
	var array = Array();
	var num = null;
	var arrayName = Array();
		$("input[class=checkcheck]:checked").each(function(index) { 
			
			array [index] = $(this).val();
			$(this).prop("checked", false);
					
		});
		
			sumarr[a] = array+"&";
			a=a+1;
		
			var change = $("#number").text(num);	
			var name = array[0]
			
			var changeName = $("#Name").text(name);
			
			
			console.log(array)
			console.log(arrayName)
			console.log(sumarr)
			
			var content = Array();

			//$("input[class=checkcheck]:checked").each(function(index) { 
			
			$('.next').click(function(){
				
				$(".modifyContents").each(function(index){
					content[index] = $(this).val()
			});

				console.log(content);
				console.log(array);
				
			 //location.href="homeWorkIndividualWrite.hw?array="+array+"&content="+content;
			});
			
	});
	function finalhh(){
	$('#hiddenhidden').val(sumarr)
	$('form').submit();	
	}
	
	
			
	</script>
</body>
</html>






























	