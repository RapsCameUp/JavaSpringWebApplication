package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bean.Report;
import com.repository.ReportRepository;

@Service
public class ReportService {
	@Autowired
	ReportRepository reportrepository;
	
	public List<Report> getAllReports() {
		return reportrepository.findAll();
	}
}
