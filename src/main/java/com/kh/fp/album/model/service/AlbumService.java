package com.kh.fp.album.model.service;

import java.util.ArrayList;

import com.kh.fp.album.model.vo.Album;
import com.kh.fp.album.model.vo.PageInfo;
import com.kh.fp.member.model.vo.Attachment;

public interface AlbumService {

	int insertAlbum(Album a);

	int insertAt(Attachment at);

	int getListCount(int userNo);

	int getTListCount(int userNo);

	ArrayList<Album> selectAlbumRequestList(PageInfo pi, int userNo);

}
