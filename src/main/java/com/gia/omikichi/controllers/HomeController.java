package com.gia.omikichi.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
		@RequestMapping("/omikuji")
		public String index(HttpSession session) {
			
			return "index.jsp";
		}
		@RequestMapping(value = "/create", method = RequestMethod.POST)
		public String create(
										 @RequestParam(value = "number") int number,
										 @RequestParam(value = "city") String city,
										 @RequestParam(value = "name") String name,
										 @RequestParam(value = "hobby")String hobby,
										 @RequestParam(value = "organism") String organism,
										 @RequestParam(value = "nice")String nice,
										 HttpSession session) {
							session.setAttribute("number", number);
							session.setAttribute("city", city);
							session.setAttribute("name", name);
							session.setAttribute("hobby", hobby);
							session.setAttribute("organism", organism);
							session.setAttribute("nice", nice);
							
							return "redirect:/show";
		}
		@RequestMapping("/show")
		public String show(HttpSession session, Model model) {
				model.addAttribute("number",session.getAttribute("number"));
				model.addAttribute("city",session.getAttribute("city"));
				model.addAttribute("name",session.getAttribute("name"));
				model.addAttribute("hobby",session.getAttribute("hobby"));
				model.addAttribute("organism",session.getAttribute("organism"));
				model.addAttribute("nice",session.getAttribute("nice"));
				
				return "show.jsp";
		
		
		
		}
		
		
}
