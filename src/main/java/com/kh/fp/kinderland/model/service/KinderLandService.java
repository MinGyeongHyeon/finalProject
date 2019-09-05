package com.kh.fp.kinderland.model.service;

import java.util.ArrayList;

import com.kh.fp.kinderland.model.vo.KinGardenClasses;
import com.kh.fp.kinderland.model.vo.Kinderland;
import com.kh.fp.kinderland.model.vo.SelectKinder;

public interface KinderLandService {

	ArrayList<Kinderland> selectKin(SelectKinder sk);

	ArrayList<KinGardenClasses> selectKinderclass(Kinderland kl);

}
