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

	ArrayList<Album> selectTAlbumRequestList(PageInfo pi, int userNo);

	int getCListCount(int userNo);

	ArrayList<Album> selectCAlbumRequestList(PageInfo pi, int userNo);

	int getTNum(int userNo);

	ArrayList<Album> selectAlbum(int bid);


}
