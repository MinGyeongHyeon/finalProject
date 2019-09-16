package com.kh.fp.notice.model.service;

import java.util.ArrayList;

import org.apache.tools.ant.Project;
import org.springframework.ui.Model;

import com.kh.fp.note.model.vo.PageInfo;
import com.kh.fp.notice.model.exception.NoticeException;
import com.kh.fp.notice.model.vo.Notice;
import com.kh.fp.notice.model.vo.NoticeWho;

public interface NoticeService {

	String insertNotice(Notice n) throws NoticeException;

	ArrayList selectWho(int userNo);

	int getListCount(NoticeWho noticeWho);

	ArrayList<Notice> selectProjectList(PageInfo pi, NoticeWho noticeWho);

	Notice selectNotice(int bid)throws NoticeException;

	int UpdateNoticeStatus(int bid, String status);


}
