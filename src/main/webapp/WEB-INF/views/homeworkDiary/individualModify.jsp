<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

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

.realS {
	margin-left: 3%;
	margin-top: 3%;
	}

.textName {
	font-size: 18px;
}
</style>
<style>
body {
	background: #eee;
}

.topArea {
	width: 80%;
	margin: 0 auto;
}

.topArea table {
	text-align: center;
	width: 100%;
	height: 100px;
}

.topArea table tr:first-child td:nth-child(2n) {
	width: 30%;
	padding-left: 10px;
	padding-right: 10px;
}

.topArea table tr:first-child td:nth-child(2n-1) {
	width: 100px;
	height: 100px;
	text-align: center;
	vertical-align: middle;
	background: #ffcc00;
	color: #fff;
	font-size: 2em;
	font-weight: bold;
	border: 1px solid black;
	border-radius: 100px;
}

.topArea table tr:last-child td {
	width: 100px;
	font-size: 1em;
	font-weight: bold;
}

.modifyArea {
	background: #fff;
	padding-bottom: 20px;
	border: 2px solid #000;
	text-align: center;
	margin: 0 auto;
}

.modifyArea img {
	width: 40px;
	heigth: 40px;
	border-radius: 20px;
}

.modifyArea label:first-child {
	font-weight: bold;
	font-size: 1.5em;
}

.modifyContents {
	width: 100%;
	margin: 0 auto;
	border: 1px solid #ccc;
	resize: none;
	font-size: 2em;
	text-align: left;
}

.btnArea {
	width: 100%;
	text-align: right;
}

.btnArea button {
	background: #fa0;
	width: 150px;
	height: 60px;
	margin-top: 10px;
	border: none;
	border-radius: 5px;
	color: #fff;
	font-size:25px;
}

.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
	padding-top: 100px;
	padding-left: 3%;
	padding-right: 3%;
}

.classroom {
	width: 40%;
    height: 53px;
    vertical-align: middle;
    border-radius: 5px;
    display: inline-block;
    padding-top: 10px;
    margin-top: 20px;
    margin-right: 5%;
    background: #f55;
    font-size: 20px;
}

.classroom table {
	width: 100%;
	text-align: center;
	vertical-align: middle;
	color: #fff;
}

#name{
	display:none;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	
	<div class="main-panel">
		<div class="classroom">
		<table>
			<tr>
				<td><button class="className" id="myBtn" type="button" style="background:#f55; color:white;border: 1px #f55; width:120%; height:30px">${className}</button></td>
				<td><lable id="number" style=" font-size:25px">0</lable><label style="color:white; font-size:25px">/${classNum}</label></td>

			</tr>
		</table>
		</div>
		<div class="topArea">
			<div id="myModal" class="modal">
				<div class="modal-content">
					<h2>${className}원아</h2>
					<div class="realS">
						<c:forEach var="l" items="${list}">
							<div class="selectC" style="display: inline;">
								<c:choose>
									<c:when test="${l.fileName ne null}">
										<img src="${contextPath}/resources/uploadFiles/<c:out value="${l.fileName}"/>" style="height: 120px;"/>
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
		<hr />
	

		<div id="ChildernIndiviual">
		
		</div>
		
			<br />
			<div class="btnArea">
				<button class="next">다음</button>
			</div>
	</div>


</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	
	$('#selectModal').click(function(){
	 	modal.style.display = 'none'; 
		var $test = $('#ChildernIndiviual');
		
			$("input[class=checkcheck]:checked").each(function(index) { 
				
				array[index] = $(this).val();
				arrayName[index] = $(this).next().val();
				
				num = $("input:checkbox[class=checkcheck]:checked").length
				var $div = $('<div class="modifyArea" style="text-align: center; border:5px solid #afb8c9">');
				var $table = $('<table style="width: 95%">');
				var $tr1 = $('<tr>');
				var $td1 = $('<td>');
				var $br = $('<br>');
				var $br1 = $('<br>');
				var $tr2 = $('<tr>');
				var $td2 = $('<td>');
				var $textarea = $('<textarea name="contents" class="modifyContents" cols="30" rows="10" placeholder="내용을 입력하세요" style="margin-left: 3%">')
				var $label = $('<label style="color:black; font-size:25px">');
				

				
				$label.text(arrayName[index]);
				$td1.append($label);
				$tr1.append($td1);
				$table.append($tr1);
				$div.append($table);
				
				$td2.append($textarea);
				$tr2.append($td2);
				$table.append($tr2);
				$div.append($table);
				
				
				$test.append($div);
				$test.append($br);
				$test.append($br1);
			
			});	
			var change = $("#number").text(num);	
			var name = array[0]
			
			var changeName = $("#Name").text(name);
			
			
			console.log(array)
			console.log(arrayName)
			
			var content = Array();

			//$("input[class=checkcheck]:checked").each(function(index) { 
			
			$('.next').click(function(){
				
				console.log("qwdwq");
				
				$(".modifyContents").each(function(index){
					content[index] = $(this).val()
			});

				console.log(content);
				console.log(array);
				
			 location.href="homeWorkIndividualWrite.hw?array="+array+"&content="+content;
			});
			
			/* $.ajax({
				url:"IndiviualhomeWorkWrite.hw",
				type:"post",
				data:{array:array},
				success:function(){
					alert("이거 왜 안돼");
	 				modal.style.display = "none"; 
				}, error:function(request,status,error){
			        alert("code:"+status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			       }
			}); */
		//}
	});


</script>
</html>