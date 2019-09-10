package com.kh.fp.notice.model.service;

import java.util.ArrayList;

import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;

public interface NoticeService {

	String insertNotice(Notice n) throws NoticeException;

	ArrayList selectWho(int userNo);

}
