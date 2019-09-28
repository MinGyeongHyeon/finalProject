function goPrint(title){
     var sw=screen.width;
     var sh=screen.height;
     var w=800;//팝업창 가로길이
     var h=600;//세로길이
     var xpos=(sw-w)/2; //화면에 띄울 위치
     var ypos=(sh-h)/2; //중앙에 띄웁니다.
 
     var pHeader="<html><head><title>" + title + "</title></head><body>";
     var pgetContent=document.getElementById("printarea").innerHTML + "<br>";
     //innerHTML을 이용하여 Div로 묶어준 부분을 가져옵니다.
     var pFooter="</body></html>";
     pContent=pHeader + pgetContent + pFooter; 
      
     pWin=window.open("","print","width=" + w +",height="+ h +",top=" + ypos + ",left="+ xpos +",status=yes,scrollbars=yes"); //동적인 새창을 띄웁니다.
     pWin.document.open(); //팝업창 오픈
     pWin.document.write(pContent); //새롭게 만든 html소스를 씁니다.
     pWin.document.close(); //클로즈
     pWin.print(); //윈도우 인쇄 창 띄우고
     pWin.close(); //인쇄가 되던가 취소가 되면 팝업창을 닫습니다.
    }
