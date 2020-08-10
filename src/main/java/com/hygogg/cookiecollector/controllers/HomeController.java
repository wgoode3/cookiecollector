package com.hygogg.cookiecollector.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Random;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	private final Random random = new Random();

	@RequestMapping("/")
	public String index(HttpSession session, Model model) {
		Integer totalCookies = (Integer) session.getAttribute("total");
		ArrayList<String> log = (ArrayList<String>) session.getAttribute("log");
		if(totalCookies == null) {
			session.setAttribute("total", 0);
			totalCookies = 0;
		}
		if(log == null) {
			log = new ArrayList<String>();
		}
		model.addAttribute("total", totalCookies);
		model.addAttribute("log", log);
		return "index.jsp";
	}
	
	@RequestMapping("/get_cookies")
	public String getCookies(@RequestParam(value="location") String location, HttpSession session) {
		System.out.println(location);
		Integer totalCookies = (Integer) session.getAttribute("total");
		ArrayList<String> log = (ArrayList<String>) session.getAttribute("log");
		System.out.println(log);
		if(log == null) {
			log = new ArrayList<String>();
		}
		
		if(location.equals("super market")) {
			int cookies = random.nextInt(11)+10;
			String msg = "You just visited the " + location + " and found " + cookies + " cookies";
			System.out.println(msg);
			log.add(msg);
			totalCookies += cookies;
		}
		
		session.setAttribute("total", totalCookies);
		session.setAttribute("log", log);
		return "redirect:/";
	}
	
}
