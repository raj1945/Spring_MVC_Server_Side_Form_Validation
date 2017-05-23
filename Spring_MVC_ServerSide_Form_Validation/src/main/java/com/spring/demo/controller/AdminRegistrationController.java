package com.spring.demo.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.demo.domain.Student;

@Controller
@RequestMapping("/")
public class AdminRegistrationController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String displayRegistrationForm(Model model) {

		model.addAttribute("classNames", new String[] { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" });
		model.addAttribute("student", new Student());
		return "registration"; // return registration jsp
	}

	@RequestMapping(value = "/saveStudentByAdmin", method = RequestMethod.POST)
	public String saveTeacherByAdmin(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult) {

		if (bindingResult.hasErrors()) {
			return "registration"; 
		}

		return "redirect:/register";
	}
}
