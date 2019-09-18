<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
	padding-top: 100px;
	padding-left: 3%;
	z padding-right: 3%;
}

.drugRequestArea {
	
}

.pageName table {
	font-weight: bold;
	font-size: 1.5em;
}

.pageName tr td:first-child {
	width: 60%;
}

.pageName img {
	width: 30px;
	height: 30px;
}

.pageName button {
	background: #665b55;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding-top: 5px;
	padding-bottom: 5px;
}

.homeworkDiaryForm {
	background: #fff;
	padding: 30px;
}

.homeworkDiaryForm table {
	width: 100%;
}

.homeworkDiaryForm th {
	font-size: 1.5em;
	text-align: left;
	padding-left: 10px;
	height: 50px;
	vertical-align: bottom;
}

.homeworkDiaryForm td {
	font-size: 1.2em;
}

.homeworkDiaryForm tr:nth-child(2) input {
	width: 300px;
	height: 40px;
}

.homeworkDiaryForm tr:nth-child(4) input {
	width: 20px;
	heigth: 20px;
}

.homeworkDiaryForm input {
	border: 1px solid #bbb;
}

.homeworkDiaryForm textarea {
	border: 1px solid #bbb;
}

.classroom {
	width: 35%;
	height: 40px;
	vertical-align: middle;
	border-radius: 5px;
	display: inline-block;
	padding-top: 5px;
	margin-top: 20px;
	margin-left: 5%;
	margin-right: 5%;
	background: #f55;
}

.classroom table {
	width: 100%;
	text-align: center;
	vertical-align: middle;
	color: #fff;
}

.albumImgArea {
	width: 100px;
	height: 70px;
	border: 1px solid #779;
	text-align: center;
	margin-top: 5px;
	margin-right: 3%;
}

.fileList label {
	background: #fa5448;
	color: white;
	width: 70px;
	height: 35px;
	border-radius: 5px;
	text-align: center;
	padding-top: 5px;
	margin-top: 20px;
	margin-left: 5%;
	margin-right: 5%;
}

.fileList input {
	background: #fff;
	width: 40%;
	height: 30px;
	color: #000;
	border: 1px solid white;
	border-bottom: 1px solid #de2c41;
	padding-top: 5px;
	margin-top: 20px;
}

.homeworkBtnArea {
	width: 100%;
	text-align: center;
}

.homeworkBtnArea table {
	width: 100%;
}

.homeworkBtnArea td {
	width: 50%;
	text-align: center;
}

.homeworkBtnArea input {
	background: #fa5;
	border: none;
	border-radius: 5px;
	width: 200px;
	height: 40px;
	color: #fff;
}

.className {
	width: 100%;
	text-align: center;
	background: #fa5448;
	border: #fa5448;
	color: white;
}

.Title {
	width: 600px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	padding-left:17%;
	padding-right:5%;	
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
	display:inline-block;
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

img{
	width:120px;
	width:120px;
	border-radius: 50%;
}

.selectC{
	width:15%;
	height:15%;
	display:inline-block;
	float:left;
	margin:0;
	padding:0;
	text-align:center;
	}
	
.realS{
	margin-left:3%;
	margin-top:3%;

}

.textName{
	font-size:18px;

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

	<jsp:include page="../common/menubar.jsp" />
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table style="width: 100%;">
				<tr>
					<td style="vertical-align: middle;">
						<p style="font-weight: bold;">알림장 작성</p>
					</td>
					<td id="writeDelete" style="text-align: right;">
						<!-- 로그인한 사람이 학부모일  경우 작성하기버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) --> <c:if
							test="${ loginUserJob != 1 }">
							<button id="contentsWrite">작성하기</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<hr />

		<form action="homeWorkWrite.hw" method="post"
			enctype="multipart/form-data">

			<div class="homeworkDiaryForm">
				<table>
					<tr>
						<th>날짜</th>
					</tr>
					<tr>
						<td><input type="date" name="writeDate" /></td>
					</tr>
					<tr>
						<th>제목</th>
					</tr>
					<tr>
						<td><input type="text" name="boardTitle" class="Title"
							style="width: 50%; border-radius: 10px" /></td>
					</tr>
					<tr>
						<th>원아 선택</th>
					</tr>
					<tr>
						<td><input type="checkbox" id="selectAll" /><label
							for="selectAll">전체선택</label></td>
					</tr>
					<tr>
						<td>
							<div class="classroom">
								<table>
									<tr>
										<td><button class="className" id="myBtn" type="button">별님반</button></td>
										<td><lable>0/${classNum}</lable></td>

									</tr>
									
								</table>
								<div id="myModal" class="modal">
									<div class="modal-content">
										<span class="close">&times;</span>
										<div class = "realS">
							 <c:forEach var="l" items="${list}">
									<div class="selectC" style="display:inline;">
										<c:choose>
										<c:when test="${l.fileName ne null}">
										<img src="${contextPath}/uploadFiles/images/<c:out value="${fileName}"/>.jpg" alt="" />
										</c:when>
										<c:when test="${l.fileName eq null}">
										<img src="${contextPath}/resources/images/dog.jpg" alt="" />
										</c:when>
										</c:choose>
										<p hidden><c:out value="${l.childrenNo}"/></p>
										<p class="textName"><c:out value="${l.childrenName}"/></p>
									</div>
									</c:forEach> 
							</div>
										
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th>내용</th>
					</tr>
					<tr>
						<td><textarea name="boardContent" id="contents" rows="7"
								placeholder="내용을 입력해 주세요"
								style="width: 100%; border-radius: 10px;"></textarea></td>
					</tr>
					<tr>
						<th>파일첨부</th>
					</tr>
					<tr>
						<td>
							<div class="fileList" style="width: 100%;">
								<label for="selectFile">파일선택</label> <input type="text"
									name="fileName" class="fileName"> <input type="file"
									value="추가" name="attachfile" id="selectFile" class="selectFile"
									multiple hidden />
							</div>


						</td>
					</tr>
				</table>
			</div>
			<hr />
			<br> <br>
			<div class="homeworkBtnArea">
				<table>
					<tr>
						<td><input type="reset" value="취소" /></td>
						<td><input type="submit" value="다음" /></td>
					</tr>
				</table>
				<br> <br> <br> <br> <br>
			</div>
			<input type="text" id="userNo2" value="${ loginUser.userNo }" hidden>
		</form>
	</div>


</body>

<script>
	
	
	

	// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
	
</script>
</html>






























