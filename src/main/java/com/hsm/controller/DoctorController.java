package com.hsm.controller;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hsm.entity.Doctor;

import com.hsm.service.DoctorService;
@Controller

public class DoctorController {




	@Autowired
	DoctorService doctorRepository;

	@RequestMapping(value="loginDoctorurl",method=RequestMethod.POST)
	ModelAndView login(@RequestParam("doctorId") String doctorId, @RequestParam("password") String password) {
		//remember you have to make to some changes 
		//like if ad is null think harder and you will remember
		System.out.println(doctorId);
		Doctor login=doctorRepository.getById(doctorId);


		ModelAndView view=null; 
		//Doctor ad=doctor.getById(login.getDoctorId());

		if(login.getPassword().equals(password)) { 
			view= new ModelAndView(); 
			view.setViewName("Doctor");
			view.addObject("doctorn",login.getName());
		}

		else { 
			view= new ModelAndView("LoginDoctor","errorkey","Username or Password is wrong");


		} 
		return view;
	}
	@RequestMapping("doctorLoginUrl")
	String doctorLogin() {

		return "LoginDoctor";
	}




	@RequestMapping(value="saveDoctor",method=RequestMethod.POST)
	String saveDoctor(@ModelAttribute Doctor doctor1) {
		System.out.println(doctor1.getName());
		doctorRepository.save(doctor1);
		return "Home";
	}






	@RequestMapping("deleteDoctor")
	ModelAndView deleteDoctor(@RequestParam("id") String id) {

		Doctor doc =doctorRepository.getById(id);
		ModelAndView view=null;
		if(doc!=null) {
			doctorRepository.delete(doc);
			view=new ModelAndView("Admin","successs","Doctor Deleted");

		}
		else {
			view =new ModelAndView("Admin","errorkeyy","Doctor By that id not found. Enter correct Id to delete Doctor");
		}

		return view;
	}
	@RequestMapping("showAllDoctor")
	ModelAndView showAllDoc() {

		List<Doctor> doc =doctorRepository.findAll();
		ModelAndView view=null;
		if(doc!=null) {

			view=new ModelAndView("DisplayAllDoctor","successs",doc);

		}
		else {
			view =new ModelAndView("Admin","errorkeyy","Doctor List is Empty");
		}

		return view;
	}

}
