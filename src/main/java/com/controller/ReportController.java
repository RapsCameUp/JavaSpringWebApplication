package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.bean.Report;
import com.repository.ReportRepository;

@Controller
public class ReportController {
	@Autowired
	ReportRepository reportrepository;
	
	@RequestMapping(value = "getReports",method = RequestMethod.GET)
	public ModelAndView getReports() {
		
		List<Report> reports = reportrepository.findAll();

		ModelAndView mav = new ModelAndView();
		mav.addObject("ViewAllReports", reports);
		mav.setViewName("reports.jsp");
		
		return mav;
	}
}
