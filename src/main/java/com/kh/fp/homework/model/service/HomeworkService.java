package com.kh.fp.homework.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.HomeWorkChildren;
import com.kh.fp.homework.model.vo.homework;
import com.kh.fp.member.model.vo.Attachment;

public interface HomeworkService  {

	int insertHomeWork(homework h) throws HomeWorkException;

	int howManyPeople(int classNum);

	int insertAt(Attachment at);

	int selectClassNum(int userNo2);

	ArrayList<HomeWorkChildren> selectChildren(int userNo2);

	String selectClassName(int userNo2);

}
