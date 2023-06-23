package com.codingdojo.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.services.DojoService;
import com.codingdojo.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class NinjaController {
	
	@Autowired
	NinjaService ninjaService;
	
	@Autowired
	DojoService dojoService;
	
	//show a ninja page
	@RequestMapping("/ninja/new")
	public String newNinja(Model model,@ModelAttribute("ninja")Ninja ninja) {
		model.addAttribute("dojos", dojoService.allDojos());
		return "newninja.jsp";
	}
	
	//Create a new ninja
	@PostMapping("/create/new")
	public String createNinja(
			Model model,
			@Valid @ModelAttribute("ninja")Ninja ninja,
			BindingResult result){
		if(result.hasErrors()) {
			model.addAttribute("dojos", dojoService.allDojos());
			return "newninja.jsp";
		}
		
		ninjaService.createNinja(ninja);
	return "redirect:/index";
	}

}
