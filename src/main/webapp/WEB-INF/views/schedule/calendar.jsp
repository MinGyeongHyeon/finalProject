<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>FullCalendar Example</title>
    <link rel=" shortcut icon" href="image/favicon.ico">
    <link rel="stylesheet" href='${contextPath }/resources/css/calendar/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href='${contextPath }/resources/css/calendar/bootstrap.min.css' />
    <link rel="stylesheet" href="${contextPath }/resources/css/calendar/calendarBoot.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/calendar/fullcalendar.min.css" />
    <link rel="stylesheet" href="${contextPath }/resources/css/calendar/main.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/calendar/material-icon.css">
    <link rel="stylesheet" href="${contextPath }/resources/css/calendar/roboto.css">
    <link rel="stylesheet" href='${contextPath }/resources/css/calendar/select2.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="${contextPath }/resources/js/calendar/jquery-3.4.1.js"></script>
<style>
	.fc-day-number{color:blue!important;}
	
	#wrapper{
		width:80%;
		margin:0 auto;
	}
</style>
</head>

<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
    <div>
	
        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">일정 등록하기</a></li>
                <li class="divider"></li>
                
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">일정명</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">시작</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">색상</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
                                    <option value="#495057" style="color:#495057;">검정색</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">공개범위</label>
                                <select class="inputModal" name="edit-type" id="edit-type">
                                    <option value="원">원 일정</option>
					                <c:if test="${ loginUser.classification eq '선생님' }">
	                                    <option value="반">반 일정</option>
					                </c:if>
                                </select>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">설명</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc" style="resize: none;"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal /-->

        <!-- <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">필터</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">구분별</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="원">원 일정</option>
                            <option value="반">반 일정</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">등록자별</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="정연"
                                checked>정연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="다현"
                                checked>다현</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="사나"
                                checked>사나</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="나연"
                                checked>나연</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="지효"
                                checked>지효</label>
                    </div>
                </div>
            </div>
        </div>
        /.filter panel
    </div> -->
    <!-- /.container -->

    <script src="${contextPath }/resources/js/calendar/jquery-3.3.1_1.js"></script><!-- 9600line 주석 -->
    <script src="${contextPath }/resources/js/calendar/calenderBoot2.js"></script><!--  -->
    <script src="${contextPath }/resources/js/calendar/moment.min.js"></script>
    <script src="${contextPath }/resources/js/calendar/fullcalendar.js"></script>
    <script src="${contextPath }/resources/js/calendar/ko.js"></script>
    <script src="${contextPath }/resources/js/calendar/select2.min.js"></script>
    <script src="${contextPath }/resources/js/calendar/bootstrap.js"></script>
    <script src="${contextPath }/resources/js/calendar/bootstrap-datetimepicker.min.js"></script>
    <script src="${contextPath }/resources/js/calendar/main2.js"></script>
    <script src="${contextPath }/resources/js/calendar/addEvent.js"></script> 
    <script src="${contextPath }/resources/js/calendar/editEvent.js"></script>
    <script src="${contextPath }/resources/js/calendar/etcSetting.js"></script>
   
 	<script>
	 	var classification = "${loginUser.classification}";
	 	var kinderNo;
	 	var kindergardenNo;
	 	var teacherNo;
	 	
	 	console.log(classification);
	 	if(classification == '원장님'){
	 		kindergardenNo = "${loginUser.userNo}";
	 		console.log("번호번호 : " + kindergardenNo);
	 	}else if(classification == '선생님'){
	 		teacherNo = "${loginUser.userNo}";
	 	}
 	</script>
    </div>
	 	
</body>

</html>