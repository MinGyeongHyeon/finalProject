<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
	.pageName label{
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
	
	.calendarArea{
		margin:0 auto;
		text-align: center;
		align:center;
		height:500px;
		background:#555;
		color:#fff;
	}
	
	.writeForm{
		width:100%;
		margin:0 auto;
	}
	.writeForm table{
		width:90%;
		margin:0 auto;
		margin-bottom: 10px;
	}
	
	.writeForm th{
		font-weight: border;
		padding-left: 10px;
		font-size: 20px;
		
	}
	
	.writeForm td{
		padding-bottom: 30px;
		
	}
	
	.writeForm input{
		border:1px solid #999;
	}
	
	.writeForm input[type=checkbox]{
		width:20px;
		height:20px;
		
	}
	.scheduleBtnArea {
		width:100%;
	}
	.scheduleBtnArea table{
		width:60%;
		margin:0 auto;
	}
	
	.scheduleBtnArea table button{
		width:100px;
		height:40px;
		color:#fff;
		background:#554a44;
		border:none;
		border-radius: 5px;
	}
</style>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="main-panel" id="firstContentArea">
		<div class="pageName">
			<table width=100%>
				<tr>
					<td>
						<img src="${contextPath }/resources/images/schedule.png" alt="" /><label style="font-weight:bold; font-size: 20px!important;">일정표</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모일  경우 작성하기버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite" onclick="writeSchedule();">일정추가</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<form action="">
		<div class="writeForm">
			<table>
				<tr>
					<th>날짜 선택</th>
				</tr>
				<tr>
					<td><input type="date" name="date"/></td>
				</tr>
				<tr>
					<th>제목</th>
				</tr>
				<tr>
					<td><input type="text" name="title"/></td>
				</tr>
				<tr>
					<th>반 선택</th>
				</tr>
				<tr>
					<td>
					<input type="checkbox" name="classroom" id="selectAll"/><label for="" style="font-size: 20px!important;">전체 반</label>
					<br />
					<%int num = 5;
					for(int i = 0; i < num; i++){%>
					<input type="checkbox" name="classroom" class="selectClassroom"/><label for="" style="font-size: 20px!important; margin-right:10%!important;">OO 반</label>
					
					<%if((i+1) % 4 == 0){ %>
						<br />
					<%} } %>
					</td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td>
						<textarea rows="8" cols="" style="width:100%; resize: none;" placeholder="내용을 입력해주세요"></textarea>
					</td>
				</tr>
			</table>
		</div>
		<div class="scheduleBtnArea">
			<table>
				<tr>
					<td style="text-align:left;"><button>취소</button></td>
					<td style="text-align:right;"><button>작성하기</button></td>
				</tr>
			</table>
		</div>
		</form>
	</div>
	<br /><br /><br />
	<script>
		function writeSchedule(){
			location.href="writeSchedule.pl";
		}
		
		$("#selectAll").change(function(){
			console.log(.selectClassroom);
			/* if($("#selectAll").is(":checked")){
				(".selectClassroom").prop("checked",true);
			}else{
				(".selectClassroom").prop("checked",false);
			} */
			
		});
	</script>
</body>
</html>
























