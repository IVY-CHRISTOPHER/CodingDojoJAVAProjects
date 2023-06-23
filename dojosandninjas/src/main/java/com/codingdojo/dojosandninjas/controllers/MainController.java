package com.codingdojo.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojosandninjas.services.DojoService;
import com.codingdojo.dojosandninjas.services.NinjaService;

@Controller
public class MainController {

	@Autowired
	DojoService dojoService;
	
	@Autowired
	NinjaService ninjaService;
	
	//Rerouting to the main Page
	@RequestMapping("/")
	public String reRoute() {
		return "redirect:/index";
	}
	
	//Index page to show Dojos
	@RequestMapping("/index")
	public String allDojos(Model model) {
		model.addAttribute("dojos",dojoService.allDojos());
		return "index.jsp";
	}
	
	@RequestMapping("/dojo/info/{dojoId}")
	public String dojoInfo(
			@PathVariable("dojoId")Long Id,
			Model model){
		
		model.addAttribute("dojo", dojoService.findDojo(Id));
		
		return "dojoinfo.jsp";
	}
}
