<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<link rel="stylesheet" href="${ contextPath }/resources/css/includeCss.css">
<link rel="stylesheet" href="${ contextPath }/resources/css/albumCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	.main-panel {
	    position: relative;
	    width: calc(100% - 240px);
	    height: 100vh;
	    min-height: 100%;
	    float: right;
	    padding-top:100px;
	    padding-left: 3%;
	    padding-right: 3%;
	}
	
	.SearchAlbum{
	background: #fff;
	width: 25%;
	height: 25%;
	display: inline-block;
	margin-top: 1%;
	margin-right: 2%;
	margin-bottom: 3%;
	margin-left: 2%;
	
	}
</style>
<body>
<jsp:include page="../common/menubar.jsp" /> 
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<%-- <jsp:include page="../common/menubar.jsp"/>
	 --%>
	<div class="main-panel">
		<div class="pageName">
			<table width=100%;>
				<tr>
					<td>
						<label style="font-weight:bold;">앨범</label>
					</td>
					<td id="writeDelete" style="text-align:right;">
						<!-- 로그인한 사람이 학부모가 안닐 경우 삭제버튼 활성화(숫자, 변수명 임의로 지정 기능구현 시 변경) -->
						<c:if test="${ loginUserJob != 1 }">
							<button id="contentsWrite">삭제</button>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<hr style="border:1px solid lightgray;"/>
		<div class="albumDetailDiv">
			<div class="albumDetailTitle">
				<table width=95%; style="margin:0 auto;">
				<tr>
					<td>
						<p class="hiddenNo" hidden><c:out value='${selectAD[0].alblumNo}'/></p>
						<b hidden id="delete">${selectAD[0].alblumNo}</b>
					</td>
					<c:if test="${loginUser.classification eq '학부모'}">
					<td style="text-align:right;">
						<input type="text" id="tagSearch"/>
						<button id="inputSearch" onclick="tagSearch();">검색</button>
					</td>
					</c:if>
				</tr>
				</table>
			</div>
		<form id="test">
			<div class="albumContentsArea">
				<div class="downloadArea">
					<button id="selectDown" onclick="download(this.form);return false">선택 다운로드</button>
					<button id="allDown" onclick="downloadAll(this.form);return false">전체 다운로드</button>
				</div>
				<div style="width:90%; margin:0 auto;">
					<p style="font-size:2.5em;"><c:out value="${selectAD[0].albumContent}"/></p>
				</div>
			<c:forEach var="l" items="${selectAD}" varStatus="i">
				<div class="smallAlbum">
					<input type="checkbox" class="checkcheck" id = "file${i.index}" name="pp" value="<c:out value="${l.tumbnail}"/>"/>
					<div id="thumbnailImg" onclick="" style="background-size:cover; height:300px;">
					<img src="${contextPath}/resources/uploadFiles/<c:out value="${l.tumbnail}"/>" alt="" style="width:100%; height: 300px;"/>
					</div>
					<table style="widthz:90%; margin:0 auto;">
						<tr>
							<td id="tagList">
								<p style="font-size:1.5em;"><c:out value="${l.childrenName}"/></p>
							</td>
						</tr>
					</table>
					
				</div>
			</c:forEach>		
					
			
			</div>
	</form>	
			<div class="replyArea">
				<h3 style="font-weight:bold; margin-left: 2%;">댓글</h3>
				<table width="95%" style="margin:0 auto;">
					<tr>
						<td rowspan="2">
							<textarea name="replyWrite" id="replyWrite" cols="30" rows="4" style="width:100%; resize:none"></textarea>
						</td>
						<td valign="top">
							<button id="uploadReply">작성</button>
						</td>
					</tr>
					<tr>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div class="dummyDiv" style="height:120px"></div>
	

	
	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var array = Array();

/* $('#selectDown').click(function(){
	
	$("input[class=checkcheck]:checked").each(function(index) { 
		
		array [index] = $(this).val();
		$(this).prop("checked", false);
		
		
	});
	console.log(array);
	//location.href="albumDown.ab?array="+array;
});
 */
function tagSearch(){
		console.log("zz");
	 	var input = $("input[id = 'tagSearch']").val();
	 	console.log(input);
	 	 $.ajax({
			type:"POST",
			data:{"input":input},
	 		url:"${contextPath}/albumSearch.ab",
			success:function(data){
				
				console.log("aaa");
				
			},error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }

		 
	 });
 };
 function tagSearch(){
		
	 	var input = $("input[id = 'tagSearch']").val();
	 	var bid = $("#delete").text();
	 	console.log(input);
	 	console.log(bid);
	 	 $.ajax({
			type:"post",
			data:{"input":input,"bid":bid},
	 		url:"albumSearch.ab",
			success:function(data){
				console.log(data);
			
				var strDOM = "";
				var $contextdiv = $(".albumContentsArea");
				$contextdiv.html("");

				for(var key in data){
					var $div = $("<div class='SearchAlbum'>");
					var $check = $("<input type='checkbox' class='checkcheck'>");
					var $ddiv = $("<div id='thumbnailImg' style='background-size:cover; height:300px;'>");
	 				var $img = $("<img src=${ contextPath }/resources/uploadFiles/"+data[key].tumbnail+">").css({'width':'100%','height':'100%'});
					//var $dateTd = $("<td>").text(data[key].commentDate).css({'width':'200px','color':'lightgray','font-size':'10xpx'});
					
				$contextdiv.append($div);
				$div.append($check);
				$div.append($img);

				
			}
				
				
			},error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }

		 
	 });
}
 
 var contextPath = '${contextPath}/resources/uploadFiles/';   
 var suffix = 0;   
 
 function downloadAll(oFrm) {	
	 $('.checkcheck').attr("checked",true);
	 var ofile = oFrm.elements["file"+(suffix++)];
	 var oFrm = oFrm;
	 console.log("실행");
	if(ofile){
		if(ofile.checked){
			var a = $("<a>")
		    .attr("href", contextPath+ofile.value)
		    .attr("download", "아이사진")
		    .appendTo("body");

				a[0].click();
		
				a.remove();
		
			setTimeout(function(){
				download(oFrm)
			},1000);
			
		}else{
			download(oFrm);
			
		}
	}

 };
 
 
 function download(oFrm) {	
	 var ofile = oFrm.elements["file"+(suffix++)];
	 var oFrm = oFrm;
	 console.log("실행");
	if(ofile){
		if(ofile.checked){
			var a = $("<a>")
		    .attr("href", contextPath+ofile.value)
		    .attr("download", "아이사진")
		    .appendTo("body");

				a[0].click();
		
				a.remove();
		
			setTimeout(function(){
				download(oFrm)
			},1000);
			
		}else{
			download(oFrm);
			
		}
	}

 };
 
</script>
</html>


