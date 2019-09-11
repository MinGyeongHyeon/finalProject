

<!DOCTYPE html>

<head>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta charset="utf-8">
  <title>대한민국 1등 스마트 알림장 키즈노트- 출석부</title>
  <meta name="description" content="키즈노트는 영유아 교육기관의 바른 소통을 위해 교육기관에는 편의를, 가정에는 믿음과 감동을 주는 서비스입니다.">
  <meta name="keywords" content="키즈노트, kidsnote, 키즈 노트, Kids Note, 키즈, 노트, kids, note, 어린이집, 스마트, 알림장, 스마트 알림장, 유치원, 학원, 원아수첩, 아이">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="NOARCHIVE">
  <meta name="google-site-verification" content="kfFLsPtpWM-rbDkqvbPYGCHeZCcv4_yduc8NprsE6jk" />
    <meta name="naver-site-verification" content="5e6a329193a9ffd50d52adb61d9bba8924e4a702"/>

  
    <link rel="shortcut icon" href="https://mk.kakaocdn.net/dn/kidsnote/static/favicon.ico">
  
  <link rel="stylesheet" href="https://mk.kakaocdn.net/dn/kidsnote/static/cache/css/ed72a7fffe62.css" type="text/css" />

  
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/jquery.min.js"><\/script>')</script> 
    <script src="https://mk.kakaocdn.net/dn/kidsnote/static/jsi18n/ko/djangojs.js?201bffa5b0f8"></script>
      <!--[if gt IE 8]><!-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.7.1/clipboard.min.js"></script>
      <script src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
      <script src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/scrollmagic/ScrollMagic.min.js"></script>
      <!--<![endif]-->
  
    <!--[if lt IE 9]>
    <script type="text/javascript" src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/jSignature/flashcanvas.js"></script>
    <![endif]-->
    <script src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/jSignature/jSignature.min.js"></script>



  
      <script src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/modernizr-2.6.2.min.js"></script>
      <script type="application/ld+json">
        {
         "@context": "http://schema.org",
         "@type": "Organization",
         "name": "키즈노트",
         "url": "https://www.kidsnote.com",
         "image": "http://mk.kakaocdn.net/dn/kidsnote/download/kidsnote_image.png",
         "email": "contact@kidsnote.com",
         "telephone": "1644-6734",
         "address": "경기도 성남시 분당구 판교역로 225-14, 7층",
         "description": "키즈노트는 영유아 교육기관의 바른 소통을 위해 교육기관에는 편의를, 가정에는 믿음과 감동을 주는 서비스입니다.",
         "sameAs": [
            "https://www.kidsnote.biz/",
            "https://magazine.kakao.com/kidsnote",
            "https://pf.kakao.com/_rrHTl",
            "https://play.google.com/store/apps/details?id=com.vaultmicro.kidsnote",
            "https://itunes.apple.com/kr/app/%ED%82%A4%EC%A6%88%EB%85%B8%ED%8A%B8-%EC%9B%90%EA%B3%BC-%EA%B0%80%EC%A0%95%EC%9D%98-%EB%B0%94%EB%A5%B8%EC%86%8C%ED%86%B5/id527574743?mt=8"
         ]
        }
      </script>
      <script type="application/ld+json">
      {
        "@context" : "http://schema.org",
        "@type" : "WebSite",
        "url" : "https://www.kidsnote.com/"
      }
    </script>
  
</head>
<body id="" class="logged-in default">

  <div class="container page page-2-col">
  



<div id="messages">
  
</div>

    <div class="page-inner">
      
        <div class="page-header action">
          <h2>
    <i class="kn kn-attendance"></i> 출석부
</h2>
          <div class="action-btn-wrapper pull-right">
  
      <!-- 초등학교는 1분단위로 시간설정 고정 -->
        
            <button type="button" class="btn btn-default btnModifyAttendanceList pull-right" role="button"
                    data-toggle="popover" data-container="body" data-placement="bottom" data-html="true"
                    data-contentwrapper="#settime-popover-content">
                <i class="kn kn-setting"></i>설정
            </button>
            <!-- loaded popover content -->
             <div class="popover-content" id="settime-popover-content" style="display: none;">
                  <ul class="list-group custom-popover">
                      <li class="list-group-item">
                        <div class="text-left" id="AttendanceSettingTimeBtn">
                            출석부 시간 단위 설정
                        </div>
                      </li>
                      <li class="list-group-item">
                        <div class="text-left" id="AttendanceDefaultTimeBtn">
                            등하원 기본 시간 설정
                        </div>
                      </li>
                  </ul>
             </div>
        
  
</div>
        </div>
      
      <div class="sub-nav">
        
      </div>
      <div class="content">
        
        
        <div id="content-inner">
    



    <form id="attendanceSearchForm" action="." method="GET">
        <input type="hidden" name="display_time" value="on">
        <div>
            <div class="class-attendance">
                <div class="box-left">
                    <div class="button-wrapper pull-right">
                        <button type="button" id="pickerBtn" name="pickerBtn" class="btn btn-default btn-active">
                            일별 출석부
                        </button>
                        <div id="tabs" class="datepicker-tabs">
                            <div id="datepicker"></div>
                        </div>
                    </div>
                    <div class="pull-right button-right-margin">
                        <a class="btn btn-default"
                           href="/attendance/2019/9/?qs_class=467703&display_time=on"
                           onclick="ga('send', 'event', 'attendance', 'Click', 'monthlyAttendance');">
                            월별 출석부
                        </a>
                    </div>
                </div>
                <div class="box-right">
                    
                </div>
            </div>
            <div class="class-attendance-sub">
                <div class="box-display-time">
                    <span>총원: 4명(출석: 0명)</span>
                </div>
                <ul class="list-unstyled list-inline text-right">
                    
                        
                            <li><span>V 출석</span></li>
                        
                            <li><span>× 결석</span></li>
                        
                            <li><span>◎ 병결</span></li>
                        
                            <li><span>○ 사고</span></li>
                        
                            <li><span>/ 입소</span></li>
                        
                            <li><span>★ 퇴소</span></li>
                        
                    
                </ul>
            </div>
        </div>

        <div class="attendance-header">
            <input id="previousBtn" class="btn btn-link" type="submit" name="previous" value="<"/>
            <span>2019년 9월 11일</span>
            <input id="nextBtn" class="btn btn-link" type="submit" name="next" value=">" disabled/>
        </div>
    </form>
    <div id="attendanceDataForm" class="attendance-area">
        <table id="student_attendance_data" class="table-attendance">
            
                <colgroup>
                    <col class="td-wide">
                    <col class="td-wide-three">
                    <col class="td-wide">
                    <col class="td-wide-three">
                    <col class="td-wide-three">
                    <col class="td-wide-three-gray">
                    <col class="td-wide-three">
                    
                </colgroup>
                <thead>
                    <tr class="sub-title">
                        <th>No.</th>
                        <th>원아명</th>
                        <th>출결상태</th>
                        <th>등원 시간</th>
                        <th>하원 시간</th>
                        <th>비고</th>
                        <th>보호자 확인</th>
                        
                    </tr>
                </thead>
                <tbody id="student_attendance_table">
                
                    
                        <tr id="trChild2244344" data-child="2244344">
                            <td>1</td>
                            <td class="child_name">민선영</td>
                            <!-- 출결상태 -->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-status">
                                        <span class="status-icon attendance-input-data grey ">
                                            </span>
                                        <input type="hidden" name="status" value="">
                                    </div>
                                    <div class="attendance-status-btn arrow-btn" data-child="2244344"
                                        >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 등원시간-->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-intime">
                                        <span class="in-time-text"></span>
                                        <input type="hidden" name="in-time" value="">
                                    </div>
                                    <div class="in-time-btn arrow-btn" data-child="2244344"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 하원시간-->
                            <td id="outTimeTd">
                                <div class="arrow-wrapper">
                                    <div class="attendance-outtime">
                                        <span class="out-time-text"></span>
                                        <input type="hidden" name="out-time" value="">
                                    </div>
                                    <div class="out-time-btn arrow-btn" data-child="2244344"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 비고 -->
                            <td>
                                <div id="descriptionTd" class="arrow-wrapper">
                                    <div class="description" data-child="2244344">
                                        <span class="description-text description-atts-text"></span>
                                        <input type="hidden" name="description" value="">
                                    </div>
                                    <div class="description-btn arrow-btn" name="description_arrow" data-child="2244344"
                                         style="visibility: hidden;" >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 보호자 확인-->
                            <td id="signatureTd" class="signature td-arrow-custom">
                                
                                    <div class="signature-atts-inline">
                                        <input name="signature_json" value="" type="hidden">
                                        <div class="signature-btn-img inline-block2"></div>
                                        <div class="signature-btn inline-block1" data-child="2244344"
                                             style="visibility: hidden;">
                                            <i class="kn kn-arrow-gray-down border-zero bg-white-pink"></i>
                                        </div>
                                    </div>
                                
                            </td>
                            <!-- 출석부 삭제 버튼 -->
                            
                            <input name="child_id" value="2244344" type="hidden">
                            <input name="attendance_id" value="" type="hidden">
                            <input name="modification" value="" type="hidden">
                        </tr>
                    
                
                    
                        <tr id="trChild2244286" data-child="2244286">
                            <td>2</td>
                            <td class="child_name">박예정</td>
                            <!-- 출결상태 -->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-status">
                                        <span class="status-icon attendance-input-data grey ">
                                            </span>
                                        <input type="hidden" name="status" value="">
                                    </div>
                                    <div class="attendance-status-btn arrow-btn" data-child="2244286"
                                        >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 등원시간-->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-intime">
                                        <span class="in-time-text"></span>
                                        <input type="hidden" name="in-time" value="">
                                    </div>
                                    <div class="in-time-btn arrow-btn" data-child="2244286"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 하원시간-->
                            <td id="outTimeTd">
                                <div class="arrow-wrapper">
                                    <div class="attendance-outtime">
                                        <span class="out-time-text"></span>
                                        <input type="hidden" name="out-time" value="">
                                    </div>
                                    <div class="out-time-btn arrow-btn" data-child="2244286"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 비고 -->
                            <td>
                                <div id="descriptionTd" class="arrow-wrapper">
                                    <div class="description" data-child="2244286">
                                        <span class="description-text description-atts-text"></span>
                                        <input type="hidden" name="description" value="">
                                    </div>
                                    <div class="description-btn arrow-btn" name="description_arrow" data-child="2244286"
                                         style="visibility: hidden;" >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 보호자 확인-->
                            <td id="signatureTd" class="signature td-arrow-custom">
                                
                                    <div class="signature-atts-inline">
                                        <input name="signature_json" value="" type="hidden">
                                        <div class="signature-btn-img inline-block2"></div>
                                        <div class="signature-btn inline-block1" data-child="2244286"
                                             style="visibility: hidden;">
                                            <i class="kn kn-arrow-gray-down border-zero bg-white-pink"></i>
                                        </div>
                                    </div>
                                
                            </td>
                            <!-- 출석부 삭제 버튼 -->
                            
                            <input name="child_id" value="2244286" type="hidden">
                            <input name="attendance_id" value="" type="hidden">
                            <input name="modification" value="" type="hidden">
                        </tr>
                    
                
                    
                        <tr id="trChild2244269" data-child="2244269">
                            <td>3</td>
                            <td class="child_name">박찬민</td>
                            <!-- 출결상태 -->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-status">
                                        <span class="status-icon attendance-input-data grey ">
                                            </span>
                                        <input type="hidden" name="status" value="">
                                    </div>
                                    <div class="attendance-status-btn arrow-btn" data-child="2244269"
                                        >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 등원시간-->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-intime">
                                        <span class="in-time-text"></span>
                                        <input type="hidden" name="in-time" value="">
                                    </div>
                                    <div class="in-time-btn arrow-btn" data-child="2244269"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 하원시간-->
                            <td id="outTimeTd">
                                <div class="arrow-wrapper">
                                    <div class="attendance-outtime">
                                        <span class="out-time-text"></span>
                                        <input type="hidden" name="out-time" value="">
                                    </div>
                                    <div class="out-time-btn arrow-btn" data-child="2244269"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 비고 -->
                            <td>
                                <div id="descriptionTd" class="arrow-wrapper">
                                    <div class="description" data-child="2244269">
                                        <span class="description-text description-atts-text"></span>
                                        <input type="hidden" name="description" value="">
                                    </div>
                                    <div class="description-btn arrow-btn" name="description_arrow" data-child="2244269"
                                         style="visibility: hidden;" >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 보호자 확인-->
                            <td id="signatureTd" class="signature td-arrow-custom">
                                
                                    <div class="signature-atts-inline">
                                        <input name="signature_json" value="" type="hidden">
                                        <div class="signature-btn-img inline-block2"></div>
                                        <div class="signature-btn inline-block1" data-child="2244269"
                                             style="visibility: hidden;">
                                            <i class="kn kn-arrow-gray-down border-zero bg-white-pink"></i>
                                        </div>
                                    </div>
                                
                            </td>
                            <!-- 출석부 삭제 버튼 -->
                            
                            <input name="child_id" value="2244269" type="hidden">
                            <input name="attendance_id" value="" type="hidden">
                            <input name="modification" value="" type="hidden">
                        </tr>
                    
                
                    
                        <tr id="trChild2254871" data-child="2254871">
                            <td>4</td>
                            <td class="child_name">하뽀송</td>
                            <!-- 출결상태 -->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-status">
                                        <span class="status-icon attendance-input-data grey ">
                                            </span>
                                        <input type="hidden" name="status" value="">
                                    </div>
                                    <div class="attendance-status-btn arrow-btn" data-child="2254871"
                                        >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 등원시간-->
                            <td>
                                <div class="arrow-wrapper">
                                    <div class="attendance-intime">
                                        <span class="in-time-text"></span>
                                        <input type="hidden" name="in-time" value="">
                                    </div>
                                    <div class="in-time-btn arrow-btn" data-child="2254871"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 하원시간-->
                            <td id="outTimeTd">
                                <div class="arrow-wrapper">
                                    <div class="attendance-outtime">
                                        <span class="out-time-text"></span>
                                        <input type="hidden" name="out-time" value="">
                                    </div>
                                    <div class="out-time-btn arrow-btn" data-child="2254871"
                                          style="visibility: hidden;"
                                         >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 비고 -->
                            <td>
                                <div id="descriptionTd" class="arrow-wrapper">
                                    <div class="description" data-child="2254871">
                                        <span class="description-text description-atts-text"></span>
                                        <input type="hidden" name="description" value="">
                                    </div>
                                    <div class="description-btn arrow-btn" name="description_arrow" data-child="2254871"
                                         style="visibility: hidden;" >
                                        <i class="kn kn-arrow-gray-down"></i>
                                    </div>
                                </div>
                            </td>
                            <!-- 보호자 확인-->
                            <td id="signatureTd" class="signature td-arrow-custom">
                                
                                    <div class="signature-atts-inline">
                                        <input name="signature_json" value="" type="hidden">
                                        <div class="signature-btn-img inline-block2"></div>
                                        <div class="signature-btn inline-block1" data-child="2254871"
                                             style="visibility: hidden;">
                                            <i class="kn kn-arrow-gray-down border-zero bg-white-pink"></i>
                                        </div>
                                    </div>
                                
                            </td>
                            <!-- 출석부 삭제 버튼 -->
                            
                            <input name="child_id" value="2254871" type="hidden">
                            <input name="attendance_id" value="" type="hidden">
                            <input name="modification" value="" type="hidden">
                        </tr>
                    
                
                </tbody>
            
        </table>
    </div>
    <div class="button-group-wrapper">
        
            
                <a href="/attendance/2019/9/11/download/?qs_class=" type="button" class="btn btn-default hidden-print"
                   onclick="ga('send', 'event', 'attendance', 'Click', 'dailyAttendance|download');">
                    <i class="kn kn-download-box"></i> 다운로드
                </a>
            
            <a href="/attendance/2019/9/11/print/?qs_class=" target="_blank" type="button" class="btn btn-gray btn-fix-width-sm hidden-print"
               id="dailyAttendancePrintLink"
               onclick="ga('send', 'event', 'attendance', 'Click', 'dailyAttendance|print');">
                <i class="kn2 kn-print"></i> 출력
            </a>
            
                
                <!-- 출석부 저장-->
                <input id="save_attendance" type="button" value="저장"
                       class="btn btn-fix-width pull-right btn-red " style="display: none;"/>
            
        
    </div>
    <div class="">
        




    </div>

    <!-- 일별 출석부 상태 저장 폼-->
    <form id="updateDataForm" action="/attendance/save/" method="POST">
        <input type='hidden' name='csrfmiddlewaretoken' value='u1GxV1sL1ZDgRAlQnYmrfHRJ3WNafEeWCV9Ivjvj4eyaOug5kn3so9nffChWr0ZA' />
        <input name="display_time" value="on" type="hidden">
        <input name="page" value="1" type="hidden">
        <!-- 업데이트 될 데이터 -->
        <input name="update_data" value="" type="hidden">
        <input name="class_id" value="467703" type="hidden">
        <input name="attendance_book_id" value="479467" type="hidden">
        <input name="date" value="2019-09-11" type="hidden">
    </form>

    <!-- 출석부 전체 삭제 recheck -->
    <div class="modal" tabindex="-1" role="dialog" id="reCheckAttendanceDelete">
        <div class="modal-dialog modal-role-name-select">
            <div class="modal-content">
                <form id="deleteDayAttendanceForm" method="POST"  method="POST" action="/attendance/2019/9/delete/">
                    <input type='hidden' name='csrfmiddlewaretoken' value='u1GxV1sL1ZDgRAlQnYmrfHRJ3WNafEeWCV9Ivjvj4eyaOug5kn3so9nffChWr0ZA' />
                    <input type="hidden" name="display_time" value="on">
                    <input name="class_id" value="467703" type="hidden">
                    <input name="attendance_book_id" value="479467" type="hidden">
                    <input name="attendance_ids" value="" type="hidden">
                    <input name="date_month" value="2019-09-11" type="hidden">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h5 class="modal-title text-left text-red">
                            꼭 확인해 주세요.
                        </h5>
                    </div>
                    <div class="modal-body">
                        <div class="select-form-wrapper">
                            <div class="role-form-item" style="height: 100%">
                                9월 11일에 저장된 모든 출석체크가 사라집니다. 정말로 삭제하시겠습니까?
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div align="center" >
                            <button class="btn btn-default create-attendance-btn" type="button" data-dismiss="modal"> 취소 </button>
                            <button class="btn btn-red create-attendance-btn" id="reCheckAllAttendanceDeleteBtn" type="button">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- 출석부 개별 삭제 recheck -->
    <div class="modal" tabindex="-1" role="dialog" id="delSignatureAttendance">
        <div class="modal-dialog modal-role-name-select">
            <div class="modal-content">
                <form id="deleteDayAttendanceForm" method="POST"  method="POST" action="/attendance/2019/9/delete/">
                    <input type='hidden' name='csrfmiddlewaretoken' value='u1GxV1sL1ZDgRAlQnYmrfHRJ3WNafEeWCV9Ivjvj4eyaOug5kn3so9nffChWr0ZA' />
                    <input type="hidden" name="display_time" value="on">
                    <input name="class_id" value="467703" type="hidden">
                    <input name="attendance_book_id" value="479467" type="hidden">
                    <input name="attendance_ids" value="" type="hidden">
                    <input name="date_month" value="2019-09-11" type="hidden">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h5 class="modal-title text-left text-red">
                            꼭 확인해 주세요.
                        </h5>
                    </div>
                    <div class="modal-body">
                        <div class="select-form-wrapper">
                            <div class="role-form-item" style="height: 100%">
                                 삭제 시 해당 원아의 출석정보가 삭제됩니다. 정말로 삭제하시겠습니까?
                            </div>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div align="center" >
                            <button class="btn btn-default create-attendance-btn" type="button" data-dismiss="modal"> 취소 </button>
                            <button class="btn btn-red create-attendance-btn" id="reCheckAttendanceDeleteBtn" type="submit">확인</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- 등하교 시간 설정 다이얼로그 -->
    <div class="set-attendance-time" id="setAttendanceTime" data-type="" data-child="" tabindex="-1" role="dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 id="titleOfsettime" class="modal-title text-center">
                </h5>
            </div>
            <div class="modal-body">
                <div class="form-group multi-field-wrapper">
                    <div class="form-timepicker-wrapper" style="width: 100%">
                        <select class="form-control form-timepicker" id="select_ampm" name="ampm">
                            <option id="select_am" value="오전">오전</option>
                            <option id="select_pm" value="오후">오후</option>
                        </select>
                        <select class="form-control form-timepicker" id="select_hour" name="hour"></select>
                        <select class="form-control form-timepicker" id="select_min" name="minute">
                            <option id="setAttendanceTimeMin" value="-1" selected></option>
                        </select>
                    </div>
                </div>
                <div class="time-delete-btn">
                    <button class="btn bg-white delete-btn" id="resetAttendanceTime" style="display: none">
                        <i class="kn kn-trash-gray"></i><u>삭제</u>
                    </button>
                </div>
                <div>
                    <div class="text-center">
                        <button type="button" id="close_time_btn" class="btn btn-default padding-sm"> 취소 </button>
                        <button type="button" id="set_time_btn" class="btn btn-red padding-sm"> 확인 </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 출석부 시간 설정 단위(interval) set-->
    <div class="modal" id="setAttsSettingTime" data-child="" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-sm" style="width: 300px">
            <form id="timeSettingForm" action="/attendance/time_setting/" method="POST">
                <input type='hidden' name='csrfmiddlewaretoken' value='u1GxV1sL1ZDgRAlQnYmrfHRJ3WNafEeWCV9Ivjvj4eyaOug5kn3so9nffChWr0ZA' />
                <input name="class_id" value="467703" type="hidden">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                        <h5 id="" class="modal-title">
                            출석부 시간 단위 설정
                        </h5>
                    </div>
                    <ul class="list-unstyled text-left list-group no-margin">
                        <li class="list-group-item _bg-gray attendance-time-list">
                            <label class="labelAttendanceTimeSetting " >
                                <input type="radio" name="attendance_interval" class="cbAttendanceTimeSetting" value="1"/>
                                &nbsp;&nbsp;1분
                            </label>
                        </li>
                        <li class="list-group-item _bg-gray attendance-time-list">
                            <label class="labelAttendanceTimeSetting">
                                <input type="radio" name="attendance_interval" class="cbAttendanceTimeSetting" value="5"/>
                                &nbsp;&nbsp;5분
                            </label>
                        </li>
                        <li class="list-group-item _bg-gray attendance-time-list">
                            <label class="labelAttendanceTimeSetting">
                                <input type="radio" name="attendance_interval" class="cbAttendanceTimeSetting" value="10"/>
                                &nbsp;&nbsp;10분
                            </label>
                        </li>
                        <li class="list-group-item _bg-gray attendance-time-list">
                            <label class="labelAttendanceTimeSetting">
                                <input type="radio" name="attendance_interval" class="cbAttendanceTimeSetting" value="15"/>
                                &nbsp;&nbsp;15분
                            </label>
                        </li>
                        <li class="list-group-item _bg-gray attendance-time-list">
                            <label class="labelAttendanceTimeSetting">
                                <input type="radio" name="attendance_interval" class="cbAttendanceTimeSetting" value="30"/>
                                &nbsp;&nbsp;30분
                            </label>
                        </li>
                    </ul>
                    <div class="modal-footer">
                        <div align="center">
                            <button class="btn btn-default create-attendance-btn" type='button'
                                    id="time_setting_close_btn" data-dismiss="modal"> 취소 </button>
                            <button class="btn btn-red create-attendance-btn" type='submit'
                                    id="time_setting_submit_btn"> 확인 </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- 등하원 기본 출석부 시간 설정 set-->
    <div class="modal" id="setAttsBaseTime" data-child="" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-md" style="width: 440px">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                    <h5 id="" class="modal-title">
                        등하원 기본 시간 설정
                    </h5>
                </div>
                <div class="modal-body form-group attendance-input-data grey no-margin" align="center">
                    <!-- 기본 등원시간 -->
                    <div class="form-group text-left">
                        등하원 시간을 설정하면 더 쉽게 출석부를 작성할 수 있습니다.
                        <br><br>
                    </div>
                    <div class="form-group attendance-time-list">
                        <span class="base-time-margin text-left">등원 시간</span>
                        <form id="baseAttendanceInTimeForm" class="form-timepicker-wrapper base-time-form">
                            <select class="form-control form-timepicker" id="selectInTimeAMPM" name="ampm">
                                <option value="-1" disabled selected></option>
                                <option id="selectInTimeAM">오전</option>
                                <option id="selectInTimePM">오후</option>
                            </select>
                            <select class="form-control form-timepicker" id="selectInTimeHour" name="hour">
                                <option id="selectInTimeHourDefault" value="-1" disabled selected></option>
                            </select>
                            <select class="form-control form-timepicker" id="selectInTimeMin" name="minute">
                                <option id="selectInTimeMinDefault" value="-1" disabled selected></option>
                            </select>
                        </form>
                    </div>
                    <!-- 기본 하원시간 -->
                    <div class="form-group attendance-time-list">
                        <span class="base-time-margin text-left">하원 시간</span>
                        <form id="baseAttendanceOutTimeForm" class="form-timepicker-wrapper base-time-form">
                            <select class="form-control form-timepicker" id="selectOutTimeAMPM" name="ampm">
                                <option value="-1" disabled selected></option>
                                <option id="selectOutTimeAM">오전</option>
                                <option id="selectOutTimePM">오후</option>
                            </select>
                            <select class="form-control form-timepicker" id="selectOutTimeHour" name="hour">
                                <option id="selectOutTimeHourDefault" value="-1" disabled selected></option>
                            </select>
                            <select class="form-control form-timepicker" id="selectOutTimeMin" name="minute">
                                <option id="selectOutTimeMinDefault" value="-1" disabled selected></option>
                            </select>
                        </form>
                    </div>
                    <div>
                        <button class="btn-default time-delete-btn bg-white-pink border-zero reset-btn" id="baseTimeResetBtn">
                            <i class="kn kn-repeat"></i><u>초기화</u>
                        </button>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="text-red" id="baseTimeError" style="display: none">시간을 정확하게 입력해 주세요.</div>
                    <div align="center">
                        <button class="btn btn-default create-attendance-btn" type='button'
                                id="setAttenda" data-dismiss="modal"> 취소 </button>
                        <button class="btn btn-red create-attendance-btn" type='button'
                                id="setAttendanceBaseTimeBtn"> 확인 </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 출결상태 재확인 다이얼로그(등/학교 시간이 있을때, 결석이나 표시안함으로 바꿀경우) -->
    <div class="modal" id="reCheckAttendanceStatus" data-child="" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body" style="height: 80px">
                    <div>
                        
                            <h5 class="text-center">저장되어 있는 등하원 시간이 삭제됩니다.<br/>정말로 출결상태를 변경하시겠습니까? </h5>
                        
                    </div>
                </div>
                <div class="modal-footer">
                    <div align="center">
                        <button class="btn btn-default create-attendance-btn" type='button'
                                id="recheck_close_btn" data-dismiss="modal"> 취소 </button>
                        <button class="btn btn-red create-attendance-btn" type='button'
                                id="recheck_atts_btn"> 확인 </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 비고 다이얼로그-->
    <div class="modal" id="inputDescription" tabindex="-1" role="dialog" data-child="">
        <div class="modal-dialog modal-role-name-select">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                    <h5 class="modal-title text-center">
                        비고
                    </h5>
                </div>
                <div class="modal-body" style="height: 150px">
                    <div>
                        <form name="description_text">
                            
                                <textarea
                                    placeholder="사유를 입력해 주세요. 원에서만 확인할 수 있습니다."
                                    class="form-control form-textarea valid"
                                    onfocus="limitText()" name="t1" rows="4" maxlength="100" id="id_content" cols="50"
                                    aria-invalid="false">&nbsp;</textarea>
                            
                            <div class="counter-wrapper pull-right">
                                <span id="afternoonTextCounter" name="t2">0</span>/<span id="afternoonContentMaxLength">100</span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-body">
                    <div align="center">
                        <button type='button' class="btn btn-default" data-dismiss="modal"> 취소 </button>
                        <button type='button' id="insert_description" class="btn btn-red"> 확인 </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 비고 확장 다이얼로그-->
    <div class="modal" id="extendDescription" tabindex="-1" role="dialog" data-child="">
        <div class="modal-dialog modal-role-name-select">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                    <h5 class="modal-title text-center">
                        비고
                    </h5>
                </div>
                <div class="modal-body" style="height: 150px">
                    <textarea id="extend_description_text" class="form-control form-textarea valid" name="t1" rows="4"
                              maxlength="500" cols="50" aria-invalid="false" disabled></textarea>
                </div>
            </div>
        </div>
    </div>

    <!-- 서명 다이얼로그 -->
    <div class="modal" id="inputSignature" tabindex="-1" role="dialog" data-child="">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                    <h5 class="modal-title text-center">
                        서명을 해주세요.
                    </h5>
                </div>
                <div class="modal-body">
                    <div class="signature-inner-title">
                        <span>보호자 확인은 학부모뿐만 아니라 담당교사가 대신할 수 있습니다.</span>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="signature-atts-group">
                        <div class="signature-holder sig-holder">
                            <div class="signature-inner">
                                <div class="signature-holder">
                                    <div id="signature" class="signature-inner"></div>
                                </div>
                                <label for=""></label>
                                <button id="resetCanvas" type="button"
                                        class="btn btn-sm btn-white-smoke signature-rewrite">
                                    <i class="kn kn-repeat"></i>
                                    다시쓰기
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div align="center">
                        <button type='button' class="btn btn-default" data-dismiss="modal"> 취소 </button>
                        <button type='button' id="insert_signature" class="btn btn-red"> 확인 </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
        <!-- 출결상태 메뉴 div-->
        
            <div class="status-menu dropdown-content">
                <a class="atts_status_btn" data-status="0">출석</a>
                <!-- 일본원 -->
                
                    <a class="atts_status_btn" data-status="1">결석</a>
                    <a class="atts_status_btn" data-status="2">병가</a>
                    <a class="atts_status_btn" data-status="3">사고</a>
                
                <a class="atts_status_btn" data-status="4">입소</a>
                <a class="atts_status_btn" data-status="5">퇴소</a>
                <a class="atts_status_btn" data-status="6">표시안함</a>
            </div>
        
    

</div>
      </div>
    </div>
  </div>
     <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  var dimensionOneValue, dimensionTwoValue;
  
    dimensionOneValue = 2311686;
    dimensionTwoValue = "teacher";
  
  ga('create', 'UA-31264601-2', 'auto');
  if (typeof dimensionOneValue !== "undefined") {
    ga('set', 'dimension1', dimensionOneValue); 
    ga('set', 'dimension2', dimensionTwoValue); 
    ga('set', 'userId', dimensionOneValue);
  }
  ga('send', 'pageview');
</script>
    
  

  <script src="https://mk.kakaocdn.net/dn/kidsnote/static/vendors/plupload/plupload.full.min.js"></script>

  <script type="text/javascript" src="https://mk.kakaocdn.net/dn/kidsnote/static/cache/js/c9ab004aab92.js"></script>

  
  
    <script>
        var status_icon_list = new Array();         // 출결상태 아이콘 리스트
        var status_list = new Array();              // 출결상태 텍스트 리스트
        var sign, json, initial_signature;          // JSignature 관련 변수
        var name_of_selectbox = ['#selectInTimeAMPM', '#selectInTimeHour', '#selectInTimeMin',
                                 '#selectOutTimeAMPM', '#selectOutTimeHour', '#selectOutTimeMin']; // base setting time 이름들
        var time_interval = setAttendanceSettingTime();

        // 출결상태 드롭다운 리스트 팝업시, 다른 영역 클릭하면 사라지게함
        $(document).mouseup(function (e) {
            var container = $('.status-menu');
            var dropdwon = $('.selectBox-dropdown-menu');

            if (!container.is(e.target) && container.has(e.target).length === 0) {
                container.hide();
            }

            container = $('#setAttendanceTime');
            if (!container.is(e.target) && container.has(e.target).length == 0 && !dropdwon.is(e.target) && dropdwon.has(e.target).length === 0) {
                container.hide();
            }
        });

        $(function () {
            $("input, textarea").placeholder();
            printHelpPopoverShow();
            createTimeOption();
            initSignature();
            pushStatusIconList();
            checkTodayAndDrawNext();

            $('#save_attendance').hide(); // 데이터가 변경된 경우에만 show

            $(".btnModifyAttendanceList").popover({
                html: true,
                content: function () {
                    return $($(this).data('contentwrapper')).html();
                },
                template: '<div class="popover attendance-popover" role="tooltip"><div class="arrow"></div><div class="popover-content"></div></div>',
                delay: {"show": 0, "hide": 500},
                trigger: 'focus'
            }).click(function (e) {
                e.preventDefault();
            });

            /*** 등하원 기본 시간 초기화 ***/
            $('#baseTimeResetBtn').click(function (e) {
                for(var i=0; i < name_of_selectbox.length; i++)
                    $(name_of_selectbox[i]).selectBox('value', -1);
            });

            /*** 등하원 기본 시간 세팅 확인 버튼 ***/
            $('#setAttendanceBaseTimeBtn').click(function (e) {
                var inTimeValCheck = checkBaseSelectTimeValue(0, 2); // baseInTime
                var outTimeValCheck = checkBaseSelectTimeValue(3, 5); // baseOutTime

                if(inTimeValCheck == false || outTimeValCheck == false) $('#baseTimeError').show();
                else $('#setAttsBaseTime').modal('hide');
            });

            /*** 일별 출석부 개별 삭제 ***/
            $('[name=delete_signature_attendance]').click(function (e) {
                var attendanceList = new Array();
                attendanceList.push($(this).data('attendance'));

                $('#delSignatureAttendance').find('input[name=attendance_ids]').val(JSON.stringify(attendanceList));
            });

            /*** 일별 출석부 전체 삭제 ***/
            $('#reCheckAllAttendanceDeleteBtn').click(function (e) {
                var form = $('#deleteDayAttendanceForm');
                var attendanceList = new Array();

                $('[id^="trChild"]').each(function () {
                    var attendance_id = $(this).find('[name=attendance_id]').val();
                    if(attendance_id != '') {
                        attendanceList.push($(this).find('[name=attendance_id]').val());
                    }
                })

                form.find('[name=attendance_ids]').val(JSON.stringify(attendanceList));
                form.submit();
            });

            /*** 출석 상태 체크 버튼 ***/
            $(".attendance-status-btn").click(function (e) {
                if (checkGuardianSig($(this).data('child'), false)) {
                    var menu = $('.status-menu');

                    if (!menu.is(':visible')) {
                        menu.css("top", $(this).position().top + $(this).height());
                        menu.data('child', $(this).data('child'));
                        menu.css("left", $(this).position().left - 140);
                        menu.show();
                    } else {
                        menu.hide();
                    }
                }
            });

            /*** 등교시간 설정 버튼 ***/
            $(".in-time-btn").click(function () {
                var timeValue = $(this).parent().find('.in-time-text').text();

                if (timeValue) $('#resetAttendanceTime').show();
                else $('#resetAttendanceTime').hide();

                if (checkGuardianSig($(this).data('child'), true)) {
                    
                        $('#titleOfsettime').text("등원 시간");
                    

                    $('#setAttendanceTime').data('type', 'time in');
                    $('#setAttendanceTime').data('child', $(this).data('child'));

                    createSelectTimeDlg(this);
                }
            });

            /*** 하교시간 설정 버튼 ***/
            $(".out-time-btn").click(function () {
                var timeValue = $(this).parent().find('.out-time-text').text();

                if(timeValue) $('#resetAttendanceTime').show();
                else $('#resetAttendanceTime').hide();

                if (checkGuardianSig($(this).data('child'), true)) {
                    
                        $('#titleOfsettime').text("하원 시간");
                    

                    $('#setAttendanceTime').data('type', 'time out');
                    $('#setAttendanceTime').data('child', $(this).data('child'));
                    createSelectTimeDlg(this);
                }
            })

            /*** 출석 상태 메뉴 클릭 ***/
            $('.atts_status_btn').click(function (e) {
                e.stopPropagation();
                var statusNumber = $(this).data('status');
                var status = status_list[statusNumber];
                var childId=$(this).parent().data('child');
                var child_info = $("#trChild" + childId);
                var statusCheck = false; // 출석, 입소, 퇴소 = false

                if (status == 'present' || status == 'admission' || status == 'dismissal') {
                    child_info.find('[name=modification]').val('True');
                    child_info.find('.description-btn, .in-time-btn, .out-time-btn').css('visibility', 'visible');
                }

                // '표시안함' 을 제외한 모든 상태에서 비고란 선택 가능
                if (status == 'n/a') child_info.find('.description-btn').css('visibility', 'hidden');
                else child_info.find('.description-btn').css('visibility', 'visible');

                if (status != 'present' && status != 'admission' && status != 'dismissal') statusCheck = true;

                if (statusCheck && (child_info.find('[name=in-time]').val() != "" || child_info.find('[name=out-time]').val() != "")) {
                    $("#reCheckAttendanceStatus").data('child', childId);
                    $("#reCheckAttendanceStatus").data('status', statusNumber);
                    $("#reCheckAttendanceStatus").modal("show");
                } else {
                    checkSaveBtn();
                    child_info.find('[name=modification]').val('True');
                    child_info.find('[name=status]').val(status_list[statusNumber]);
                    child_info.find('.status-icon').text(status_icon_list[statusNumber]);

                    // 출석, 입소, 퇴소가 아닌 경우
                    if (statusCheck) {
                        child_info.find('.in-time-btn, .out-time-btn').css('visibility', 'hidden');
                        
                            child_info.find('.signature-btn .signature-btn-img').css('visibility', 'hidden');
                            if (status == 'n/a') {
                                child_info.find('.description-text').text("");
                                child_info.find('[name=description]').val("");
                            }
                        
                    }
                }

                
                    ga('send', 'event', 'attendance', 'click', 'attendanceStatus');
                

                $('.status-menu').hide();
            })

            /*** 출석 상태 변경 재확인 클릭(시간, 비고, 서명란 없애는 경우) ***/
            $("#recheck_atts_btn").click(function () {
                var statusNumber = $('#reCheckAttendanceStatus').data('status');
                var status = status_list[statusNumber];
                var childId = $('#reCheckAttendanceStatus').data('child');
                var child_info = $("#trChild" + childId);

                checkSaveBtn();

                child_info.find('[name=modification]').val('True');
                child_info.find('.status-icon').text(status_icon_list[statusNumber]);
                child_info.find('[name=status]').val(status_list[statusNumber]);

                // 유치원, 학원의 경우 입력된 사인 삭제
                
                    child_info.find('.signature-btn').css('visibility', 'hidden');
                    child_info.find('.signature-btn-img').empty();
                    child_info.find('[name=signature_json]').val('');
                

                // 출석, 입소, 퇴소가 아닌 경우
                if (status != 'present' && status != 'admission' && status != 'dismissal') {
                    child_info.find('.in-time-btn, .out-time-btn').css('visibility', 'hidden');
                    child_info.find('.in-time-text, .out-time-text').text("");
                    child_info.find('[name=in-time], [name=out-time]').val("");
                    if (status == 'n/a') {
                        child_info.find('.description-text').text("");
                        child_info.find('[name=description]').val("");
                    }
                }

                $('#reCheckAttendanceStatus').modal('hide');
            });

            /*** 시간 설정 취소 버튼 ***/
            $("#close_time_btn").click(function () {
                $("#setAttendanceTime").hide();
            });

            /*** 시간 설정 확인, 시간 초기화 버튼 ***/
            $("#set_time_btn, #resetAttendanceTime").click(function () {
                var child_info = $("#trChild" + $('#setAttendanceTime').data('child'));
                var timeType = $('#setAttendanceTime').data('type');
                var nameOftime, nameOftimeValue;
                var updateTime = "";

                if (timeType == "time out") {
                    nameOftime = '.out-time-text';
                    nameOftimeValue = '[name=out-time]';
                    
                        ga('send', 'event', 'attendance', 'click', 'timeOut');
                    
                } else {
                    nameOftime = '.in-time-text';
                    nameOftimeValue = '[name=in-time]';
                    
                        ga('send', 'event', 'attendance', 'click', 'timeIn');
                    
                }

                // 시간 입력일 경우에만 시간 설정
                if(this.id == "set_time_btn") {
                    updateTime = $('#select_ampm').val() + " " + $('#select_hour').val() + ":" + $('#select_min').val();
                // 시간 삭제일 경우 싸인도 삭제
                } else {
                    child_info.find('.signature-btn-img').empty();
                    child_info.find('[name=signature_json]').val('');
                    child_info.find('.signature-btn, .signature-btn-img').css('visibility', 'hidden');
                }

                child_info.find(nameOftime).text(updateTime);
                child_info.find(nameOftimeValue).val(updateTime);
                child_info.find('[name=modification]').val('True');

                // 등,하원시간 모두 입력됬을 경우 서명란 버튼 보이기
                if (child_info.find('[name=in-time]').val() != '' && child_info.find('[name=out-time]').val() != '') {
                    child_info.find('.signature-btn, .signature-btn-img').css('visibility', 'visible');
                }
                checkSaveBtn();
                $("#setAttendanceTime").hide();
            });

            /*** 비고란 확인 ***/
            $("#insert_description").click(function () {
                var child_info = $("#trChild" + $("#inputDescription").data('child'));
                var content = $('#id_content').val();

                checkSaveBtn();
                child_info.find('[name=modification]').val('True');
                child_info.find('[name=description]').val(content);
                child_info.find('.description-text').text(content);
                $("#inputDescription").modal('hide');

                
                    ga('send', 'event', 'attendance', 'click', 'comments');
                
            });

            /*** 서명란 클릭 ***/
            $('.signature-btn').click(function () {
                if (checkGuardianSig($(this).data('child'), false)) {
                    var child_info = $("#trChild" + $(this).data('child'));

                    child_info.find('[name=signature_json]').val("");
                    child_info.find('img').remove()

                    // 등, 하원시간 모두 입력되어야 서명 할 수 있다.
                    if (child_info.find('[name=in-time]').val() != '' && child_info.find('[name=out-time]').val() != '') {
                        $("#inputSignature").data('child', $(this).data('child'));
                        $("#inputSignature").modal('show');
                    }
                }
            })

            /*** 서명란 확인 ***/
            $("#insert_signature").click(function () {
                var child_info = $('#trChild' + $("#inputSignature").data('child'));
                var select_sig = child_info.find('.signature-btn-img');

                checkSaveBtn();
                child_info.find('[name=signature_json]').val(sign.jSignature('getData'));
                child_info.find('[name=modification]').val('True');
                select_sig.append("<img style=\"width:80px; height:80px\"src=\"" + sign.jSignature('getData') + "\"></img>");

                $("#inputSignature").modal("hide");
                sign.jSignature('reset');

                
                    ga('send', 'event', 'attendance', 'click', 'sign');
                
            });

            /*** 비고란 버튼 클릭 ***/
            $('.description-btn').click(function () {
                var child = $(this).data('child');
                var child_info = $('#trChild' + child);

                if (checkGuardianSig(child, false)) {
                    if (child_info.find('[name=status]').val() != 'n/a') {
                        var description_text = child_info.find('.description-text ').text();

                        $("#inputDescription").data('child', child);
                        $('#id_content').val(description_text);
                        $("#inputDescription").modal('show');
                    }
                }
            })

            /*** 비고란 클릭(비고란 확장) ***/
            $('.description').click(function () {
                var child_info = $('#trChild' + $(this).data('child'));
                if (child_info.find('.li-username').text() != '') {
                    if(this.innerText) {
                        $('#extend_description_text').text(this.innerText);
                        $("#extendDescription").modal('show');
                    }
                }
            })
        })

        /*** 등하원 기본 시간 설정값이 모두 null 인지 체크하는 함수 ***/
        function checkBaseSelectTimeValue(start, end) {
            var baseTime = new Array();
            var TimeValidationCheck = 0;

            // null 값인지 체크
            for(var i=start; i <= end; i++) {
                if ($(name_of_selectbox[i]).val() != null) {
                    TimeValidationCheck += 1;
                }
            }

            // 오전,오후, 시, 분 모두 입력이 안됬을 경우 false 리턴
            if(TimeValidationCheck > 0 && TimeValidationCheck < 3) {
                return false;
            } else {
                // 쿠키가 있는경우 쿠키 삭제
                if(TimeValidationCheck == 0) {
                     if(start == 0) {
                        if(JSON.parse(getCookie('baseInTime_thddl12345', document, jQuery)) != null)
                            setCookiePath('baseInTime_thddl12345', "", -1, '/')
                     } else {
                        if(JSON.parse(getCookie('baseOutTime_thddl12345', document, jQuery)) != null)
                            setCookiePath('baseOutTime_thddl12345', "", -1, '/')
                     }
                // 모두 입력됬을 경우 쿠키에 저장
                } else if(TimeValidationCheck == 3){
                    if($(name_of_selectbox[start]).val() == '오전' || $(name_of_selectbox[start]).val() == '오후')
                        baseTime.push($(name_of_selectbox[start]).val());
                    else return false;

                    if($.isNumeric($(name_of_selectbox[start+1]).val())) baseTime.push($(name_of_selectbox[start+1]).val());
                    else return false;

                    if($.isNumeric($(name_of_selectbox[start+1]).val())) baseTime.push($(name_of_selectbox[start+2]).val());
                    else return false;

                    if(start == 0) setCookiePath('baseInTime_thddl12345', JSON.stringify(baseTime), 60, '/');
                    else setCookiePath('baseOutTime_thddl12345', JSON.stringify(baseTime), 60, '/');
                }
            }
        }

        /*** 출석부 저장버튼 ***/
        $('#save_attendance').click(function (e) {
            var attendanceList = new Array();

            // form에 저장되어 있는 attendance 데이터들을 json 형태로 저장
            $('[id^="trChild"]').each(function () {
                // 수정된 아이의 출석부만 업데이트
                if ($(this).find('[name=modification]').val() == 'True') {
                    var attendance = new Object();
                    var in_time = $(this).find('.in-time-text').text().split(' ');
                    var out_time = $(this).find('.out-time-text').text().split(' ');
                    var ampm;

                    // 다국어, 한국어, 일본어 -> 영어(AM, PM)
                    if (in_time.length > 1) {
                        if (in_time[0] == "오전") ampm = "AM ";
                        else ampm = 'PM ';
                        $(this).find('[name=in-time]').val(ampm + in_time[1]);
                    }

                    if (out_time.length > 1) {
                        if (out_time[0] == "오전") ampm = "AM ";
                        else ampm = 'PM ';
                        $(this).find('[name=out-time]').val(ampm + out_time[1]);
                    }

                    attendance.attend_class = "467703";
                    attendance.child = $(this).find('[name=child_id]').val();
                    attendance.status = $(this).find('[name=status]').val();
                    attendance.in_time = $(this).find('[name=in-time]').val();
                    attendance.out_time = $(this).find('[name=out-time]').val();
                    
                        attendance.description = $(this).find('[name=description]').val();
                        attendance.signature_json = $(this).find('[name=signature_json]').val();
                    
                    attendanceList.push(attendance);
                }
            })
            e.preventDefault();
            $('#updateDataForm').find('[name=update_data]').val(JSON.stringify(attendanceList));
            $('#updateDataForm').submit();
        })

        /*** 원 옵션에서 기본 시간설정 인터벌 가져오기 ***/
        function setAttendanceSettingTime() {
            var timeInterval = "15";

            $('#setAttsSettingTime').find('[name=attendance_interval]').each(function() {
                if($(this).val() == timeInterval) {
                    $(this).prop("checked", true);
                }
            })

            return timeInterval;
        }

        /*** 수정된 데이터가 있으면 저장 버튼 보이기 ***/
        function checkSaveBtn() {
            if (!$('#save_attendance').is(':visible')) {
                $('#save_attendance').show();
            }
        }

        /*** 오늘 날짜보다 작아야 NEXT 화살표 표시 ***/
        function checkTodayAndDrawNext() {
            var atts_date = "2019-09-11".split('-');
            var year = atts_date[0];
            var month = atts_date[1];
            var day = atts_date[2];
            var date = new Date();
            var today = new Date();
            var lastDay = (new Date(today.getFullYear(), today.getMonth() + 1, 0));

            date.setFullYear(year, month - 1, day); // 실제 사용하는 월에서 1을 빼고 셋팅을 해줘야
            if (lastDay.getTime() > date.getTime()) {
                $("#nextBtn").attr('disabled', false);
            }
        }

        /*** status valuse, icon 을 리스트에 저장해주는 함수 ***/
        function pushStatusIconList() {
            // 출결상태 아이콘 리스트 setting
            
                status_icon_list.push('V');
                status_list.push('present');
            
                status_icon_list.push('×');
                status_list.push('absence');
            
                status_icon_list.push('◎');
                status_list.push('illness');
            
                status_icon_list.push('○');
                status_list.push('accident');
            
                status_icon_list.push('/');
                status_list.push('admission');
            
                status_icon_list.push('★');
                status_list.push('dismissal');
            
            status_icon_list.push(' '); // 표시안함
            status_list.push('n/a'); // 표시안함
        }

        /*** 다가오는 정각 시간을 구해주는 함수 ***/
        function setUpcommingSharpTime() {
            var time = new Array();
            var today = new Date();
            var hour = today.getHours(); // hours range = 0 ~ 23시
            var ampm = 0; // default = 0(오전)

            // 오후 넘어가는 시간
            if (hour >= 12) {
                ampm = 1;
                hour = hour - 12;
            }
            // 다가오는 정각을 반환해야함
            time.push(ampm);
            time.push(hour + 1);

            return time;
        }

        /*** 시간 설정 다이얼로그 ***/
        function createSelectTimeDlg(obj) {
            var select_time_dlg = $('#setAttendanceTime');

            if (!select_time_dlg.is(':visible')) {
                var child_info =  $("#trChild" + $(obj).data('child'));
                var out_time_td_width = child_info.find('#outTimeTd').width(); // Dlg x좌표(right) 구하기 위한 td width값들
                var signature_td_width = child_info.find('#signatureTd').width();
                var delete_td_width = child_info.find('#delAttendanceTd').width();
                var description_td_width = child_info.find('#descriptionTd').width();
                var ampm = ["오전", "오후"];
                var upCommingSharpTime = setUpcommingSharpTime();
                var baseType, baseTime; // cookie에 저장된 in, out time을 체크해서 기본값으로 세팅
                var timeType, timeVal;

                (select_time_dlg.data('type') == 'time in') ? timeType = "in-time" : timeType = "out-time";
                timeVal = child_info.find('[name=' + timeType + ']').val(); // 입력된 시간이 있는지 체크 (있으면 default)
                if(timeVal) {
                    var timeAmPm = timeVal.split(' ');
                    var time = timeAmPm[1].split(':');
                    var minOptionExist = false; // option에 있는 '분'인지 체크

                    $('#select_ampm').selectBox('value', timeAmPm[0]);
                    $('#select_hour').selectBox('value', time[0]);

                    $('#select_min option').each(function () {
                        if (this.value == time[1]) minOptionExist = true;
                    });

                    if (minOptionExist) {
                        $('#select_min').selectBox('value', time[1]);
                    } else {
                        $('#setAttendanceTimeMin').text(time[1]);
                        $('#setAttendanceTimeMin').val(time[1]);
                        $('#select_min').selectBox('value', time[1]);
                    }
                }

                select_time_dlg.css("top", child_info.find('#outTimeTd').position().top + child_info.height());
                
                    // 유치원, 어린이집, 학원만 쿠키값을 가져옴
                    if (select_time_dlg.data('type') == 'time in') {
                        select_time_dlg.css("right", delete_td_width + signature_td_width + description_td_width + out_time_td_width);
                        baseType = 'baseInTime_thddl12345';
                    } else {
                        select_time_dlg.css("right", delete_td_width + signature_td_width + description_td_width);
                        baseType = 'baseOutTime_thddl12345';
                    }

                    if(!timeVal) {
                        baseTime = JSON.parse(getCookie(baseType, document, jQuery));
                        // 쿠키값이 있는경우
                        if (baseTime != null) {
                            $('#select_ampm').selectBox('value', baseTime[0]);
                            $('#select_hour').selectBox('value', baseTime[1]);
                            // time interval 값과 매칭되는 값인지 체크
                            if ((parseInt(baseTime[2]) % parseInt(time_interval)) == 0) {
                                $('#select_min').selectBox('value', baseTime[2]);
                            } else {
                                $('#setAttendanceTimeMin').text(baseTime[2]);
                                $('#setAttendanceTimeMin').val(baseTime[2]);
                                $('#select_min').selectBox('value', baseTime[2]);
                            }
                        } else {
                            $('#select_ampm').selectBox('value', ampm[upCommingSharpTime[0]]);
                            $('#select_hour').selectBox('value', upCommingSharpTime[1]);
                            $('#select_min').selectBox('value', "00");
                        }
                    }
                
                select_time_dlg.show();
            } else {
                select_time_dlg.hide();
            }
        }

        /*** 출석부 시간단위 설정 Dlg 오픈 버튼 ***/
        $(document).on('click',"#AttendanceSettingTimeBtn",function () {
            var time_interver = setAttendanceSettingTime();
            $('#setAttsSettingTime').modal('show');
        })


        /*** 등하원 기본 시간 세팅 Dlg 오픈 버튼 ***/
        $(document).on('click',"#AttendanceDefaultTimeBtn",function () {
            setBaseTimeFuntion('baseInTime', 0);
            setBaseTimeFuntion('baseOutTime', 3);
            $('#baseTimeError').hide();
            $('#setAttsBaseTime').modal('show');
        });

        function setBaseTimeFuntion(timeType, start) {
            var baseTime = JSON.parse(getCookie(timeType + '_thddl12345', document, jQuery));

            // cookie에 base setting time 값이 있을경우 불러온다
            if(baseTime != null) {
                $(name_of_selectbox[start]).selectBox('value', baseTime[0]);
                $(name_of_selectbox[start+1]).selectBox('value', baseTime[1]);
                $(name_of_selectbox[start+2]).selectBox('value', baseTime[2]);
            } else {
                $(name_of_selectbox[start]).selectBox('value', -1);
                $(name_of_selectbox[start+1]).selectBox('value', -1);
                $(name_of_selectbox[start+2]).selectBox('value', -1);
            }
        }

        /*** 비고란 텍스트 입력 제한 ***/
        function limitText() {
            var m = $('#id_content').val();
            var mm = m.length;

            $("#afternoonTextCounter")[0].innerText = mm;

            if (mm > 100) {
                var string = document.description_text.t1.value;
                document.description_text.t1.value = string.slice(0, mm - 1)
            }
            setTimeout("limitText()", 10);
        }

        /*** 숫자 자릿수 만들어주는 함수 ***/
        function pad(n, width) {
            n = n + '';
            return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
        }

        /*** 시간 설정 범위 생성 ***/
        function createTimeOption() {
            var baseInTime = JSON.parse(getCookie('baseInTime' + '_thddl12345', document, jQuery));
            var baseOutTime = JSON.parse(getCookie('baseOutTime' + '_thddl12345', document, jQuery));
            var min_range = 60;
            var set_time_interval = 1;

            
                set_time_interval = time_interval;
                min_range = 60 / set_time_interval;

                // time interval 관계없이 쿠키에 저장된 base time 값은 그대로 적용
                if(baseInTime != null) {
                    if ((parseInt(baseInTime[2]) % parseInt(set_time_interval)) != 0) {
                        $("#selectInTimeMin").append("<option>" + baseInTime[2] + " </option>");
                    }
                }
                if(baseOutTime != null) {
                    if ((parseInt(baseOutTime[2]) % parseInt(set_time_interval)) != 0) {
                        $("#selectOutTimeMin").append("<option>" + baseOutTime[2] + " </option>");
                    }
                }
            

            // select box option 만들어주기(time interval에 맞게)
            for (var i = 1; i < 13; i++) {
                $("#select_hour").append("<option value=" + i + ">" + pad(i, 2) + "</option>");
                $("#selectInTimeHour").append("<option value=" + i + ">" + pad(i, 2) + "</option>");
                $("#selectOutTimeHour").append("<option value=" + i + ">" + pad(i, 2) + "</option>");
            }

            for (var i = 0; i < min_range; i++) {
                $("#select_min").append("<option>" + pad(set_time_interval * i, 2) + " </option>");
                $("#selectInTimeMin").append("<option>" + pad(set_time_interval * i, 2) + " </option>");
                $("#selectOutTimeMin").append("<option>" + pad(set_time_interval * i, 2) + " </option>");
            }

            $('#select_ampm').selectBox();
            $('#select_min').selectBox();
            $('#select_hour').selectBox();

            for(var i = 0; i < name_of_selectbox.length; i ++)
                $(name_of_selectbox[i]).selectBox();
        }

        /*** 보호자 서명 및 출석 상태 확인 (보호자 서명이 있으면 수정이 불가능) ***/
        function checkGuardianSig(child, check_time_flag) {
            var child_info = $("#trChild" + child);

            // 1. 보호자 서명 확인(유치원, 어린이집만 체크)
            
                if (child_info.find('#li-signature-username').hasClass('li-username') == true) {
                    return false;
                }
            

            // 2. 출석, 입소, 퇴소인 경우만 시간 입력가능 하도록 체크
            var check_icon = false;
            var status = child_info.find('[name=status]').val();
            if (check_time_flag == true) {
                for (var i = 0; i < 7; i++) {
                    if ((i > 0 && i < 4) || i == 6) {
                        if (status_list[i] == status) return false;
                    } else {
                        if (status_list[i] == status) check_icon = true;
                    }
                }
                if (check_icon == false) return false; // icon_list에 없는 값일떼
            }

            return true;
        }

        function initSignature() {
            sign = $("#signature").jSignature({
                'color': "#000",
                'background-color': '#fff',
                'decor-color': 'transparent',
                'lineWidth': 3,
                'height': '180px',
                'width': '177px'
            });

            json = sign.jSignature('getData', 'base30');
            initial_signature = json;
            $('#id_signature_json').val(json);

            sign.on('change', function () {
                $('#id_signature_json').val(sign.jSignature('getData'));
            });

            $('#resetCanvas').click(function () {
                sign.jSignature('reset');
            })
        }

        var url = new URI(window.location.href);
        $.fn.attendancepicker = function (tab_id, datepicker_id, url_path, language_code) {
            var tabs = $(tab_id).tabs({
                active: 1
            }).hide();

            $(document).click(function (event) {
                tabs.hide();
            });

            $(this).click(function (e) {
                e.stopPropagation();
                return false;
            });

            tabs.click(function (e) {
                e.stopPropagation();
                return false;
            });

            $(this).click(function () {
                $(tab_id).toggle();

                
                    ga('send', 'event', 'attendance', 'Click', 'dailyAttendance');
                
            });

            $(datepicker_id).datepicker({
                dayNamesMin: $.datepicker.regional[language_code].dayNamesMin,
                monthNamesShort: $.datepicker.regional[language_code].monthNamesShort,
                monthNames: $.datepicker.regional[language_code].monthNames,
                yearSuffix: $.datepicker.regional[language_code].yearSuffix,
                showMonthAfterYear: true,
                setDate: '',
                defaultDate: '', // default selected date
                firstDay: 0, // 시작하는 날이 월요일이면 1, 일요일이면 0
                hideIfNoPrevNext: true, // 선택한 date range 를 벗어날때에 hide 시킬 것인지.
                maxDate: "+0m +0w", // maxDate +m +w +d
                showOtherMonths: true,
                showOptions: {direction: 'horizontal'},
                prevText: '<button class="btn btn-sm btn-link"><i class="kn kn-angle-left-w"></i></button>',
                nextText: '<button class="btn btn-sm btn-link"><i class="kn kn-angle-right-w"></i></button>',
                dateFormat: "yy/mm/dd",
                showOn: "button",
                showButtonPanel: false,
                altField: "#alternate",
                onSelect: function (date) {
                    var path, originalPath;
                    originalPath = url_path;
                    path = originalPath + date;
                    window.location = path + '/?' + url.query();
                    $("#tabs").toggle();
                }
            });

            $.datepicker.setDefaults($.datepicker.regional[""]);
        };

        function printHelpPopoverShow() {
            var print_help_popover_show_count = Number(getCookie('print_help_popover_show_thddl12345', document, jQuery));

            // 사용자별 최대 5번 노출 (초등학교가 아닌 경우)
            
                if (print_help_popover_show_count < 5) {
                    $("#dailyAttendancePrintLink").popover({
                        trigger: "hover",
                        placement: "bottom",
                        title: "&lt;Tip&gt;",
                        html: true,
                        content: "보육일수는 다운로드 및 출력 후 직접 작성해 주세요.<br/>출력 시 레이아웃을 가로모드로 선택한 다음 출력해 주세요.",
                        template: '<div class="popover print-popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
                    });

                    $('#dailyAttendancePrintLink').on('show.bs.popover', function () {
                        print_help_popover_show_count += 1;
                        setCookiePath('print_help_popover_show_thddl12345', print_help_popover_show_count, 2147483647, "/");
                        
                            ga('send', 'event', 'tip', 'hover', 'printAttendance');
                        
                    }).on('hidden.bs.popover', function () {
                        // 사용자별 최대 5번 노출, 5번째 보여진 후 destroy
                        // destroy시 hidden.bs.popover 호출되는 버그가 있어(무한루프에 빠짐), setTimeout
                        if (print_help_popover_show_count >= 5) {
                            setTimeout(function () {
                                $("#dailyAttendancePrintLink").popover('destroy');
                            }, 100);

                        }
                    });
                }
            

            $('#selectClass').on('change', function () {
                $('#attendanceSearchForm').submit();
            });

            $('#pickerBtn').attendancepicker('#tabs', '#datepicker', '/attendance/', 'ko');

        }

    </script>


  
  <script type="text/javascript">
    $(function() {
      

      ;(function() {
        var bLazy = new Blazy({
          selector: '.album-photo'
        });
      })();
    });
  </script>


  
      
      
  

</body>
</html>
