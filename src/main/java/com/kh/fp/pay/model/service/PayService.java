package com.kh.fp.pay.model.service;

import java.util.ArrayList;

import com.kh.fp.member.model.vo.Member;
import com.kh.fp.pay.model.vo.Kindergarden;
import com.kh.fp.pay.model.vo.Pay;

public interface PayService {

	ArrayList<Kindergarden> selectGardenInfo(int kinderNo);

	int paymentSuccess(Member loginUser, Pay pay);

}
