package com.kh.fp.homework.model.service;

import com.kh.fp.homework.model.exception.HomeWorkException;
import com.kh.fp.homework.model.vo.homework;

public interface HomeworkService  {

	int insertHomeWork(homework h) throws HomeWorkException;

}
