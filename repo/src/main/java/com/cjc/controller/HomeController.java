package com.cjc.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.model.Student;
import com.cjc.service.HomeService;

@Controller
public class HomeController {

	@Autowired
	HomeService homeService;

	@RequestMapping("/")
	public String homePage() {
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage() {

		
		
		System.out.println("welcome");
		return "login";
	}

	@RequestMapping("/register")
	public String registerPage() {
		System.out.println("Register");
		return "register";
	}

	@RequestMapping("/validateCredential")
	public String loginCheck(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		List<Student> list = new ArrayList<Student>();
		Student stud = homeService.getStudent(username, password);

		if (stud != null) {

			if (username.equals("admin") && password.equals("admin")) {

				list = (List<Student>) homeService.findAll();
			} else {
				System.out.println("elseee");
				list.add(stud);
			}
			model.addAttribute("studList", list);
			return "success";
		} else {
			model.addAttribute("msg", "Invalid username and password");
			return "login";
		}
	}

	@RequestMapping("/saveData")
	public String addRecord(@ModelAttribute Student stud) {

		homeService.save(stud);
		return "login";
	}

	@RequestMapping("/edit")
	public String editData(@RequestParam("id") int id, Model model) {
		Optional<Student> stud = homeService.getStudentById(id);

		if (stud.isPresent()) { 
			Student stud1 = stud.get();
			System.out.println(stud1);
			model.addAttribute("student", stud1);
		}
		return "update";
	}

	@RequestMapping("/updateData")
	public String updateData(@ModelAttribute Student stud, Model model) {

		Student stud1 = homeService.updateStudent(stud);

		List<Student> list = new ArrayList<Student>();
		model.addAttribute("studList", list);
		list.add(stud1);

		return "success";
	}
	
	@RequestMapping("/delete")
	public String deleteData(@RequestParam("id") int id,Model model) {
		homeService.delRecord(id);
		List<Student> list =  homeService.findAll();
		model.addAttribute("studList", list);
		return "success";
	}
}
