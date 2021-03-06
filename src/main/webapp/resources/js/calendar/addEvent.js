var eventModal = $('#eventModal');

var modalTitle = $('.modal-title');
var editTitle = $('#edit-title');	//제목
var editAllDay = $('#edit-allDay'); //하루종일
var editStart = $('#edit-start');	//시작날짜
var editEnd = $('#edit-end');		//끝 날짜
var editType = $('#edit-type');		//공개범위
var editColor = $('#edit-color');	//색
var editDesc = $('#edit-desc');		//내용

//var loginNo = 
var addBtnContainer = $('.modalBtnContainer-addEvent');
var modifyBtnContainer = $('.modalBtnContainer-modifyEvent');

/* ****************
 *  새로운 일정 생성
 * ************** */
var newEvent = function (start, end, eventType) {
    $("#contextMenu").hide(); //메뉴 숨김
    modalTitle.html('새로운 일정');
    editStart.val(start);
    editEnd.val(end);
    editType.val(eventType).prop("selected", true);

    addBtnContainer.show();
    modifyBtnContainer.hide();
    eventModal.modal('show');

    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/
    //var eventId = 1 + Math.floor(Math.random() * 1000);
    /******** 임시 RAMDON ID - 실제 DB 연동시 삭제 **********/

    //새로운 일정 저장버튼 클릭
    $('#save-event').unbind();
    $('#save-event').on('click', function () {
        var eventData = {
            title: editTitle.val(), //제목
            allDay: false,			//하루종일 여부(아래에서 체크 여부에 따라 true 부여)
            start: editStart.val(), //시작날짜
            end: editEnd.val(),		//끝날짜
            backgroundColor: editColor.val(), //색
            type: editType.val(),		//공개범위
            scheduleContent: editDesc.val() //내용
        };
        
        if (eventData.start > eventData.end) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (eventData.title === '') {
            alert('일정명은 필수입니다.');
            return false;
        }

        var realEndDay;

        if (editAllDay.is(':checked')) {
            eventData.start = moment(eventData.start).format('YYYY-MM-DD');
            eventData.start = eventData.start + "";
            //render시 날짜표기수정
            eventData.end = moment(eventData.end).add(1, 'days').format('YYYY-MM-DD');
            eventData.end = eventData.end + "";
            //DB에 넣을때(선택)
            //eventData.realEndDay = moment(eventData.end).format('YYYY-MM-DD');

            eventData.allDay = true;
        }
        
        
        
        $("#calendar").fullCalendar('renderEvent', eventData, true);
        eventModal.find('input, textarea').val('');
        editAllDay.prop('checked', false);
        eventModal.modal('hide');
        console.log(eventData);
        if(kindergardenNo > 0){
        	console.log("원장번호 : " + kindergardenNo);
        	var kinderNo = kindergardenNo;
        	$.ajax({
	            url: "insertSchedule1.sc",
	            type:"post",
	            data:{
	            	title: eventData.title, 
	                allDay: eventData.allDay,
	                start: eventData.start,
	                end: eventData.end,
	                backgroundColor: eventData.backgroundColor,
	                type: eventData.type,
	                kinderNo:kinderNo,
	                scheduleContent: eventData.scheduleContent
	                },
	            success: function (data) {
	            	console.log(data.eventData);
	            	console.log("성공인가??");
	                //DB연동시 중복이벤트 방지를 위한
	                $('#calendar').fullCalendar('removeEvents');
	                $('#calendar').fullCalendar('refetchEvents');
	            },
	            error: function(data){
	            	console.log(data);
	            	console.log("실패");
	            }
	        });
        }else if(teacherNo > 0){
        	$.ajax({
	            url: "selectKinderClass.sc",
	            type:"post",
	            data:{teacherNo:teacherNo},
	            success: function (data) {
	            	console.log(data.selectKc);
	            	if(eventData.type == '원'){
	            		var kinderNo = data.selectKc.kinderNo;
	                	$.ajax({
	        	            url: "insertSchedule1.sc",
	        	            type:"post",
	        	            data:{
	        		                title: eventData.title, 
	        		                allDay: eventData.allDay,
	        		                start: eventData.start,
	        		                end: eventData.end,
	        		                backgroundColor: eventData.backgroundColor,
	        		                type: eventData.type,
	        		                kinderNo:kinderNo,
	        		                scheduleContent: eventData.scheduleContent
	        	                },
	        	            success: function (data) {
	        	                //DB연동시 중복이벤트 방지를 위한
	        	                $('#calendar').fullCalendar('removeEvents');
	        	                $('#calendar').fullCalendar('refetchEvents');
	        	            },
	        	            error: function(data){
	        	            	console.log(data);
	        	            	console.log("실패");
	        	            }
	        	        });
	            	}else{
	            		var classNo = data.selectKc.classNo;
	                	$.ajax({
	        	            url: "insertSchedule2.sc",
	        	            type:"post",
	        	            data:{
	        		                title: eventData.title, 
	        		                allDay: eventData.allDay,
	        		                start: eventData.start,
	        		                end: eventData.end,
	        		                backgroundColor: eventData.backgroundColor,
	        		                type: eventData.type,
	        		                classNo:classNo,
	        		                scheduleContent: eventData.scheduleContent
	        	                },
	        	            success: function (data) {
	        	            	console.log(data.insertsc);
	        	                //DB연동시 중복이벤트 방지를 위한
	        	                $('#calendar').fullCalendar('removeEvents');
	        	                $('#calendar').fullCalendar('refetchEvents');
	        	            },
	        	            error: function(data){
	        	            	console.log(data);
	        	            	console.log("실패");
	        	            }
	        	        });
	            	}
	            },
	            error: function(data){
	            	console.log(data.fkc);
	            	console.log("실패");
	            }
	        });
        	
        }
        /*$.ajax({
        	url:"searchUserInfo.sc",
        	type:"post",
        	data:{kinderNo:kinderNo, teacherNo:teacherNo},
        	success: function(data){
        		if(data.searchInfo == 1){
        			
        		}
        	},
        	error:function(data){
        		console.log("조회실패");
        	}
        });*/
        
        //새로운 일정 저장
        /*$.ajax({
            url: "insertSchedule.sc",
            type:"post",
            data:{
	                title: eventData.title, 
	                allDay: eventData.allDay,
	                start: eventData.start,
	                end: eventData.end,
	                backgroundColor: eventData.backgroundColor,
	                type: eventData.type,
	                scheduleContent: eventData.scheduleContent
                },
            success: function (data) {
            	console.log("성공");
            	console.log(data.eventData);
                //DB연동시 중복이벤트 방지를 위한
                //$('#calendar').fullCalendar('removeEvents');
                //$('#calendar').fullCalendar('refetchEvents');
            },
            error: function(data){
            	console.log(data);
            	console.log("실패");
            }
        });*/
    });
};
