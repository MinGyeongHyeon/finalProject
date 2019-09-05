package com.kh.fp.dosage.model.service;

import java.sql.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.fp.dosage.model.dao.DosageDao;
import com.kh.fp.dosage.model.vo.DosageVO;

@Service
public class DosageServiceImpl implements DosageService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DosageDao dd;

	@Override
	public int insertDosageRequest(DosageVO d) {
		System.out.println("!!!!!!!!!! DosageService 호출됨");

		/* Date dosageDate = d.getDosageDate(); */
		String symptom = d.getSymptom();
		String kinds = d.getKinds();
		int dosageMl = d.getDosageMl();
		String dosageCount = d.getDosageCount();
		String dosageTime = d.getDosageTime();
		String dosageProblem = d.getDosageProblem();
		int childrenNo = d.getChildrenNo();

		DosageVO dVO = new DosageVO();

		/* d.setDosageDate(dosageDate); */
		dVO.setSymptom(symptom);
		dVO.setKinds(kinds);
		dVO.setDosageMl(dosageMl);
		dVO.setDosageCount(dosageCount);
		dVO.setDosageTime(dosageTime);
		dVO.setDosageProblem(dosageProblem);
		dVO.setChildrenNo(childrenNo);

		System.out.println("service::::::::::::"+dVO);

		 int result = dd.insertDosageRequest(sqlSession, d);

		return result;
	}

}
