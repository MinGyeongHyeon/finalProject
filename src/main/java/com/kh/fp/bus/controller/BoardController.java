package com.kh.fp.bus.controller;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.fp.bus.model.service.BoardService;
import com.kh.fp.bus.model.vo.bus;
import com.kh.fp.common.CommonUtils;
import com.kh.fp.member.model.vo.Attachment;
import com.kh.fp.member.model.vo.KinGardenClasses;
import com.kh.fp.member.model.vo.Member;

@Controller
@SessionAttributes("loginUser")
public class BoardController {
	
	@Autowired
	private BoardService bs;

	@RequestMapping(value = "bus.bs")
	public String main(@RequestParam("file") MultipartFile file,Model model, HttpServletRequest request) {

		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("루트는" + root);
		String filePath = root + "\\uploadFiles\\";

		System.out.println("여기는 버스");
		String originFileName = file.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String changeName = CommonUtils.getRandomString();
		ArrayList<bus> list = new ArrayList<bus>();

		try {
			file.transferTo(new File(filePath + changeName + ext));
			FileInputStream excel = new FileInputStream(filePath + changeName + ext);
			XSSFWorkbook workbook = new XSSFWorkbook(excel);
			int rowindex = 0;
			int columnindex = 0;
			// 시트 수 (첫번째에만 존재하므로 0을 준다)
			// 만약 각 시트를 읽기위해서는 FOR문을 한번더 돌려준다
			XSSFSheet sheet = workbook.getSheetAt(0);
			// 행의 수
			int rows = sheet.getPhysicalNumberOfRows();
			bus bus = new bus();
			int num = 1;
			for (rowindex = 0; rowindex < rows; rowindex++) {
				// 행을읽는다
				XSSFRow row = sheet.getRow(rowindex);
				bus = new bus();
				if (row != null) {
					// 셀의 수
					int cells = row.getPhysicalNumberOfCells();
					System.out.println(cells + "행");
					for (columnindex = 0; columnindex <= cells; columnindex++) {
						// 셀값을 읽는다
						XSSFCell cell = row.getCell(columnindex);
						String value = "";
						boolean none;
						byte noon;
						double Cnum = 0;
						int abc = 0;
						// 셀이 빈값일경우를 위한 널체크
						if (cell == null) {
							continue;
						} else {
							// 타입별로 내용 읽기
							switch (cell.getCellType()) {
							case XSSFCell.CELL_TYPE_FORMULA:
								value = cell.getCellFormula();
								break;
							case XSSFCell.CELL_TYPE_NUMERIC:
								value = String.valueOf((int) cell.getNumericCellValue());
								abc = (int) Cnum;
								break;
							case XSSFCell.CELL_TYPE_STRING:
								value = cell.getStringCellValue();
								break;
							case XSSFCell.CELL_TYPE_BLANK:
								value = String.valueOf(cell.getBooleanCellValue());
								break;
							case XSSFCell.CELL_TYPE_ERROR:
								value = String.valueOf(cell.getErrorCellValue());
								break;
							}
						}
						System.out.println(rowindex + "번 행 : " + columnindex + "번 열 값은: " + value);
						try {

							if (rowindex != 0) {
								if (columnindex == 0) {
									bus.setGeton(value);
								}
								if (columnindex == 1) {
									bus.setChildrenNo(Integer.parseInt(value));
								}
								if (columnindex == 2) {
									bus.setBusYN(value);
								}
							
							}
						} catch (NumberFormatException e) {
								continue;
						}
					}
					
					
					if(bus.getChildrenNo() != 0) {
					list.add(bus);
					}
					
					
					
	

				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		for(bus b : list) {
			System.out.println(b.getChildrenNo());
		}
		int insertBus = bs.insertBus(list);
		
		model.addAttribute("list",list);
			

		return "bus/bus";
	}
	
	@RequestMapping(value="busList.bs")
	public String busMain(Model mv,HttpServletRequest request,HttpSession session,HttpServletResponse response, @ModelAttribute("loginUser") Member loginUser){
		
		KinGardenClasses TloginUser = (KinGardenClasses)session.getAttribute("teacherKing");
		KinGardenClasses CloginUser = (KinGardenClasses)session.getAttribute("childrenKing");
		
		int userNo = 0;
		
		userNo=loginUser.getUserNo();
		
		String classification = loginUser.getClassification();
		
		Date today = new Date();
		SimpleDateFormat date1 = new SimpleDateFormat("yy/MM/dd");
		String day = date1.format(today);
		String changeday = request.getParameter("changeday");
		System.out.println("날짜는:::::::"+changeday);
		//그날 쓴 승하차 있는지 개수 세기
		int bus = bs.selectCount();
		System.out.println("개수"+bus);
		if(bus==0) {
			return "bus/bus2";
		}else {
		
			if(classification.equals("학부모")) {
			
				if(changeday!=null) {
					int Cnum = CloginUser.getChildrenNo();
					String abc = changeday.substring(2);
					System.out.println("날짜는"+abc);
					ArrayList<bus> hmap = bs.selectCList(abc,Cnum);
					mv.addAttribute("list",hmap);
					mv.addAttribute("day", changeday);
				}else {
					int Cnum = CloginUser.getChildrenNo();
					System.out.println("날짜는날짜는"+day);
					ArrayList<bus> list = bs.selectNoneCList(day,Cnum);
					System.out.println("컨트롤넘어가"+list);
					mv.addAttribute("day",day);
					mv.addAttribute("list",list);
					
				}
				
				
			}else {
			
			if(changeday!=null) {
				int Cnum = TloginUser.getClassNo();
				String abc = changeday.substring(2);
				System.out.println("선택 안한 날짜는"+abc);
				ArrayList<bus> hmap = bs.selectList(abc,Cnum);
				mv.addAttribute("list",hmap);
				mv.addAttribute("day", changeday);
			}else {
				int Cnum = TloginUser.getClassNo();
				System.out.println("선택 한 날짜는날짜는"+day);
				ArrayList<bus> list = bs.selectNoneList(day,Cnum);
				System.out.println(list);
				mv.addAttribute("day",day);
				mv.addAttribute("list",list);
				
			}
		}
			
		}
		
		return "bus/bus";
	}

	
}
