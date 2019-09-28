package com.kh.fp.bus.model.service;

import java.util.ArrayList;

import org.apache.tomcat.jni.File;

import com.kh.fp.bus.model.vo.bus;
import com.kh.fp.member.model.vo.Attachment;

public interface BoardService {

	int insertBus(ArrayList<bus> list);

	int selectCount();

	ArrayList<bus> selectNoneList(String dayday, int cnum);

	ArrayList<bus> selectList(String abc, int cnum);

	ArrayList<bus> selectNoneCList(String day, int cnum);

	ArrayList<bus> selectCList(String abc, int cnum);
	



}
