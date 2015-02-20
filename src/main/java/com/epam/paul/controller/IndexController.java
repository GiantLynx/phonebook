package com.epam.paul.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="index")
	public String home(Model model){
		
		model.addAttribute("message", "Greatings to Astro phone book, Earthian!");
		
		return "index";
	}

}
