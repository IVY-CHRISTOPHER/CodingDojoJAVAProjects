package com.codingdojo.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.services.DojoService;

import jakarta.validation.Valid;

@Controller
public class DojoController {
	
	@Autowired
	DojoService dojoService;
	
	//Show a Dojo Page
	@RequestMapping("/dojo/new")
	public String newDojo(@ModelAttribute("dojo")Dojo dojo) {
		return "newdojo.jsp";
	}
	
	//Create the Dojo
	@PostMapping("/create/dojo")
	public String createDojo(
			@Valid @ModelAttribute("dojo")Dojo dojo,
			BindingResult result){
		if(result.hasErrors()) {
			return "newdojo.jsp";
		}

		dojoService.createDojo(dojo);
	return "redirect:/index";
	}

}
