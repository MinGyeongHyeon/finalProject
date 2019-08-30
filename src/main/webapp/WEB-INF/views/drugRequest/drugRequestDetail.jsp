<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투약의뢰서</title>
<style>
.main-panel {
    position: relative;
    width: calc(100% - 240px);
    height: 100vh;
    min-height: 100%;
    float: right;
    transition: all .3s;
}
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	<div class="main-panel">
         <div class="content">
            <div class="page-inner">
               <div class="page-header">
               		<i class="fas fa-notes-medical" style="font-size:20px;"></i>&nbsp;&nbsp;<h4 class="page-title">투약의뢰서</h4>
               </div>
               <hr>
               <div class="page-category">
               		<div id="mainArea">
               			<div></div>
               		</div>
               
               
               </div>
            </div>
         </div>
      </div>
	
	<div class="contentsArea">
	<div class="drugRequestArea">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">ooo의 투약의뢰서</label>
					</td>
				</tr>
			</table>
		</div>
		<hr />
		<div class="drugContentsArea">
			<div class="kinderInfo">
				<table>
					<tr>
						<td rowspan="2">
							<img src="${ contextPath }/resources/images/woman.png" alt="userImg" />
						</td>
						<td style="font-weight: bold;">박찬민</td>
					</tr>
					<tr>
						<td>별님반</td>
					</tr>
				</table>
				<br />
				<label name="tag">금일 자녀의 투약을 선생님께 의뢰함</label>
			</div>
			<div class="drugContents">
				<hr style="color:#999; border-style: dotted;"/>
				<label class="sickName">증상 : </label>
				<label>몸살감기</label>
				<hr/>
				<h3>투약 내용</h3>
				<table class="contentsTable">
					<tr>
						<th>약의 종류</th>
						<td>아스피린</td>
					</tr>
					<tr>
						<th>투약 용량</th>
						<td>1알</td>
					</tr>
					<tr>
						<th>투약 횟수</th>
						<td>1회</td>
					</tr>
					<tr>
						<th>투약 시간</th>
						<td>식후 30분 이내</td>
					</tr>
					<tr>
						<th>보관 방법</th>
						<td>실온</td>
					</tr>
					<tr>
						<th>특이사항</th>
						<td>특이사항이 없습니다.</td>
					</tr>
				</table>
				<div class="warningMsg">
					<table style="margin-right: 0px;">
						<tr>
							<td>
								<label>투약으로 인한 책임은 의뢰자에게 있습니다.</label><br />
								<label>2019.8.16 </label>
							</td>
							<td>
								<div style="background:purple; width:50px; height:50px;">
									사인
								</div>
							</td>
						</tr>
					</table>
				<br />
				</div>
			</div>
		</div>	
		<button class="drugResponseWriteBtn">투약의뢰서 작성</button><br />
		<!-- 위 버튼 클릭 시 아래 div영역의 visibility css값 변경 기능 구현 시 기본상태 : visibility:hidden상태 -->
		<div class="drugResponseContents" style="visibility: visible;">
			<p>금일 본 원의 (원아명) 원아에 대한 의뢰하신 내용대로 투약하였음을 보고합니다.<br />
			2019.8.14 (교사명)</p>
			
			<label>투약보고서는 실제 투약 후 작성될 수 있으니 참고해 주세요</label>
			<hr style=" width: 100%;background:#fff; border:1px solid #fff;"/>
			<lable>특이사항 </lable>
			<div style="margin:0 auto; width:100%; text-align:center">
				<form action="">
					<textarea name="specialNote" rows="4" cols="30" style="width:100%; resize: none;"></textarea><br />
					<button>취소</button> &nbsp;
					<button>보내기</button>
				</form>
			</div>
		</div>
		<div class="etcBtnArea">
			<button>출력</button> &nbsp;
			<button>목록</button>
		</div>
	</div>
	</div>
	
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>






































