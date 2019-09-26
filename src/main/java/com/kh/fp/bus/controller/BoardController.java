package com.kh.fp.bus.controller;


import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.fp.bus.model.vo.bus;
import com.kh.fp.common.CommonUtils;


@Controller
public class BoardController {
	 
	
@RequestMapping(value = "bus.bs")	
 public String main(@RequestParam("file") MultipartFile file,HttpServletRequest request) {
	
	String root = request.getSession().getServletContext().getRealPath("resources");
	System.out.println("루트는"+root);
	String filePath = root + "\\uploadFiles\\";

	System.out.println("여기는 버스");
	String originFileName = file.getOriginalFilename();
	String ext = originFileName.substring(originFileName.lastIndexOf("."));
	String changeName = CommonUtils.getRandomString();
	
	  try {
		  file.transferTo(new File(filePath+changeName+ext));
          FileInputStream excel = new FileInputStream(filePath+changeName+ ext);
          XSSFWorkbook workbook = new XSSFWorkbook(excel);
          System.out.println("마 이게 workbook 이다"+workbook);
          int rowindex=0;
          int columnindex=0;
          //시트 수 (첫번째에만 존재하므로 0을 준다)
          //만약 각 시트를 읽기위해서는 FOR문을 한번더 돌려준다
          XSSFSheet sheet=workbook.getSheetAt(0);
          //행의 수
          int rows=sheet.getPhysicalNumberOfRows();
          bus bus = new bus();
          ArrayList<bus>list = new ArrayList<bus>();
          
          for(rowindex=0;rowindex<rows;rowindex++){
              //행을읽는다
              XSSFRow row=sheet.getRow(rowindex);
              bus = new bus();
              if(row !=null){
                  //셀의 수
                  int cells=row.getPhysicalNumberOfCells();
                  System.out.println(cells+"행");
                  for(columnindex=0; columnindex<=cells; columnindex++){
                      //셀값을 읽는다
                      XSSFCell cell=row.getCell(columnindex);
                      String value="";
                      //셀이 빈값일경우를 위한 널체크
                      if(cell==null){
                          continue;
                      }else{
                          //타입별로 내용 읽기
                          switch (cell.getCellType()){
                          case XSSFCell.CELL_TYPE_FORMULA:
                              value=cell.getCellFormula()+"ㅋㅋ";
                              break;
                          case XSSFCell.CELL_TYPE_NUMERIC:
                              value=cell.getNumericCellValue()+"ㅎㅎ";
                              break;
                          case XSSFCell.CELL_TYPE_STRING:
                              value=cell.getStringCellValue()+"ㅂㅂ";
                              break;
                          case XSSFCell.CELL_TYPE_BLANK:
                              value=cell.getBooleanCellValue()+"ㄴㄴ";
                              break;
                          case XSSFCell.CELL_TYPE_ERROR:
                              value=cell.getErrorCellValue()+"ㅔㅔ";
                              break;
                          }
                      }
                      System.out.println(rowindex+"번 행 : "+columnindex+"번 열 값은: "+value);
                      if(rowindex!=0) {
                    	  bus.getBusNo();
                    	  bus.getChildrenNo();
                    	  bus.getBusYN();
                    	  bus.getGeton();
                    	  bus.getGetoff();
                    	  bus.getBusDate();
                    	  
                      }
                  }
                  
                  

              }
     
          }

      }catch(Exception e) {
          e.printStackTrace();
      }
	return null;

  }

}