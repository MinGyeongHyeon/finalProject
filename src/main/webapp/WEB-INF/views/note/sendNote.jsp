<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지 보내기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.main-panel {
	position: relative;
	width: calc(100% - 240px);
	height: 100vh;
	min-height: 100%;
	float: right;
	transition: all .3s;
}
#mainArea {
	height:470px;
	background:white;
}
#text1 {
	font-size: 17px;
}
#nameArea {
	width:69%;
	display:inline;
}
#inputArea {
	margin-left:3%;
}
#selectBtn {
	background:#ff7575;
	font-weight:bold;
	color:white;
}
#textArea {
	width:67%;
	resize:none;
	margin-left:17%;
}
.btns {
	width: 200px;
	height: 50px;
	color: white;
}

#btn1 {
	background: #8f8f8f;
	font-weight: bold;
	border: 0.5px solid #7d7d7d;
}

#btn2 {
	background: #ff7575;
	font-weight: bold;
}
#mTable {
	width:100%;
	text-align:center;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="main-panel">
		<div class="content">
			<div class="page-inner">
				<div class="page-header">
					<i class="far fa-paper-plane" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">쪽지 보내기</h4>
				</div>
				<hr>
				<div class="page-category">
					<div id="mainArea">
						<br>
						<div id="inputArea">
							<span id="text1"><b>받는 사람 : </b></span>&nbsp;
							<input type="text" class="form-control" id="nameArea">
							<button type="button" class="btn" data-toggle="modal" data-target="#myModal" id="selectBtn" onclick="goUserList()">선택하기</button>
						</div>
						<br>
						<div>
							<textarea class="form-control" rows="13" id="textArea"></textarea>
						</div>
						<br>
						<div id="btnArea" align="center">
							<button type="button" class="btn btns" id="btn1">취소</button>
							&nbsp;&nbsp;
							<button type="button" class="btn btns" id="btn2">보내기</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">받는 사람 선택</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <!-- Modal body -->
        <div class="modal-body">
        	<table class="table" id="mTable">
        		<thead>
        			<tr>
        				<th><input type="checkbox" id="checkAll"></th>
        				<th>대표자 이름</th>
        				<th>유치원 이름</th>
        				<th>소재지</th>
        			</tr>
        		</thead>
        		<tbody>
        			<c:forEach var="kinderList" items="${ list }">
        			<tr>
        				<td><input type="checkbox" name="chk"></td>
        				<td>${ kinderList.userName }</td>
        				<td>${ kinderList.kinderName }</td>
        				<td>${ kinderList.kinderAddress }</td>
        			</tr>
        			</c:forEach>
        		</tbody>
        	</table>
        </div>

        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">선택</button>
        </div>

      </div>
    </div>
  </div>

	<script>
		$(function(){
			$("#checkAll").click(function(){
				if($("#checkAll").prop("checked")){
					$("input[name=chk]").prop("checked", true);
				}else {
					$("input[name=chk]").prop("checked", false);
				}
			})
		});

		function goUserList(){
			location.href="userList.nt";
		}
	</script>

</body>
</html>