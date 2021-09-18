package com.hsm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hsm.entity.Receptionist;
import com.hsm.service.ReceptionService;
@Controller
public class ReceptionistController {
	
	
	
	@Autowired
	ReceptionService receptionistRepository;
	
	@RequestMapping("receptionL")
	String reception() {
		
		return "ReceptionLogin";
	}
	
	
	
	

	@RequestMapping(value="loginReception",method=RequestMethod.POST)
	ModelAndView login(@RequestParam("id") String id, @RequestParam("password") String password) {
		//remember you have to make to some changes 
		//like if ad is null think harder and you will remember
		Receptionist login=receptionistRepository.getById(id);
		
		ModelAndView view=null; 
		//Doctor ad=doctor.getById(login.getDoctorId());
	
		if(login.getPassword().equals(password)) { 
			view= new ModelAndView(); 
			view.setViewName("Reception");
			view.addObject("adminn",login.getName());
		}

		else { 
			view= new ModelAndView("ReceptionLogin","errorkey","Id or Password is wrong");


		} 
		return view;
	}
	}
	
	
	
	


