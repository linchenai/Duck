package com.chinasofti.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chinasofti.ssm.dao.reviewMapper;
import com.chinasofti.ssm.vo.review;

@Service
public class reviewService {
	@Autowired
	reviewMapper reviewMapper;
	
    public void commitreview(String review){	
		reviewMapper.commitreview(review);
	}

}
