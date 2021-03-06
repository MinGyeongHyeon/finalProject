<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/mainCss.css">
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
	<jsp:include page="../common/menubar.jsp"/>
	<%-- <c:if test="${name eq 1}"> --%>
		<div class="main-panel">
			<table style="margin:0 suto; width:100%;">
				<tr class="firstTr">
					<td colspan="3">
						<div class="managementTitle">
							<table class="mmanagementTable" style="width:100%; background:#ddd;">
								<tr>
								<th style="text-align: left;">교사 관리</th>
								<th style="text-align:right; color:#aaa;">
								<label for="">더보기 ></label>
								</th>
								</tr>
							</table>
							<br />
							<table class="managementContentsTable">
								<tr>
									<td>승인이 완료된 교사</td>
									<td>0명</td>
								</tr>
								<tr><td><p></p></td></tr>
								<tr>
									<td>승인 대기중인 교사</td>
									<td>0명</td>
								</tr>
							</table>
							<br />
						</div>
					</td>
					<td colspan="3">
						<div class="managementTitle">
							<table class="mmanagementTable" style="width:100%; background:#ddd">
								<tr>
								<th style="text-align: left; font-size: bold;">교사 관리</th>
								<th style="text-align:right; font-size:bold; color:#aaa;">
								<label for="">더보기 ></label>
								</th>
								</tr>
							</table>
							<br />
							<table class="managementContentsTable">
								<tr>
									<td>승인이 완료된 원생</td>
									<td>0명</td>
								</tr>
								<tr><td><p></p></td></tr>
								<tr>
									<td>승인 대기중인 원생</td>
									<td>0명</td>
								</tr>
							</table>
							<br />
						</div>
					</td>
				</tr>
				<tr>
					<!-- 최근 공지사항 -->
					<td colspan="6" style="text-align: center;">
						<div style="margin:0 auto; width:100%;">
						<br />
							<table style="width:100%;">
								<tr>
									<td style="font-weight: bold;">최근 공지사항</td>
									<td style="text-align:right;">
										<label for="" >더보기 ></label>
									</td>
								</tr>
							</table>
							<br />
							<div class="noticeArea"> 
								<div class="notice">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td style=""> 3rd 공지사항</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>2019.08.16</td>
										</tr>
									</table>
								</div>
								<div class="notice" style="margin-left: 3%; margin-right: 3%;">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td> 3rd 공지사항</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>2019.08.16</td>
										</tr>
									</table>
								</div>
								<div class="notice">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td> 3rd 공지사항</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>2019.08.16</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="6" style="text-align: center;">
						<div class="underBtnArea">
							<div>공지사항</div>
							<div style="margin-left:3%; margin-right: 3%;">자주 묻는 질문</div>
							<div>관리자 문의</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	<%-- </c:if> --%>
	<c:if test="${name eq '홍길동'}">
		<div class="main-panel">
			<table style="margin:0 suto; width:100%;">
				<tr class="">
					<td colspan="3">
						<div class="diaryTitle">
						<br />
							<table style="width:100%;">
								<tr>
									<td style="font-weight: bold;">최근 알림장</td>
									<td style="text-align:right;">
										<label for="" >더보기 ></label>
									</td>
								</tr>
							</table>
							<br />
							<div class="diaryArea"> 
								<div class="diary">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td style="">08.19</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td>킨더반</td>
										</tr>
									</table>
								</div>
								<div class="diary" style="margin-left: 3%; margin-right: 3%;">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td>08.18</td>
										</tr><tr>
											<td>알림장 내용입니다.</td>
										</tr><tr>
											<td>킨더반</td>
										</tr>
									</table>
								</div>
								<div class="diary">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td>08.17</td>
										</tr><tr>
											<td>알림장 내용입니다.</td>
										</tr><tr>
											<td>킨더반</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<!-- 최근 공지사항 -->
					<td colspan="3" style="text-align: center;">
						<div style="margin:0 auto; width:100%;">
						<br />
							<table style="width:100%;">
								<tr>
									<td style="font-weight: bold;">최근 공지사항</td>
									<td style="text-align:right;">
										<label for="" >더보기 ></label>
									</td>
								</tr>
							</table>
							<br />
							<div class="noticeArea"> 
								<div class="notice">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td style=""> 3rd 공지사항</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>2019.08.16</td>
										</tr>
									</table>
								</div>
								<div class="notice" style="margin-left: 3%; margin-right: 3%;">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td> 2ed 공지사항</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>2019.08.16</td>
										</tr>
									</table>
								</div>
								<div class="notice">
									<table>
										<tr>
											<td>꽈뚜룹 선생님<p></p></td>
										</tr><tr>
											<td> 1st 공지사항</td>
										</tr><tr>
											<td>공지사항 내용입니다.</td>
										</tr><tr>
											<td> </td>
										</tr><tr>	
											<td>2019.08.16</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</c:if>


	
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>



















