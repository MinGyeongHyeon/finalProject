package com.kh.fp.pay.model.service;

import java.util.ArrayList;

import com.kh.fp.pay.model.vo.Kindergarden;

public interface PayService {

	ArrayList<Kindergarden> selectGardenInfo(int kinderNo);

}
