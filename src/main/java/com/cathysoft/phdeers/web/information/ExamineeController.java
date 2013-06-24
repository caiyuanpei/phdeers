package com.cathysoft.phdeers.web.information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExamineeController {

	@RequestMapping(
			value="/information/examinee/form",
			method=RequestMethod.GET)
	public String form() {
		
		
		
		return "examinee.form";
	}
	
	@RequestMapping(
			value="/information/examinee/check",
			method=RequestMethod.POST)
	public String check() {
		
		
		return "examinee.form";
	}
}
