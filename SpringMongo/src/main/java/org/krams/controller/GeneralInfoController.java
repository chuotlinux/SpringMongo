package org.krams.controller;

import org.krams.service.GeneralInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/gis")
public class GeneralInfoController {

	@Autowired
	private GeneralInfoService service;
	
	@RequestMapping
	public String getGisPage(Model model) {
		model.addAttribute("gis", service.readAll());
		return "gis";
	}	
}
