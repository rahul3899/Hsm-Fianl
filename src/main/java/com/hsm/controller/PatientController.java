package com.hsm.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hsm.entity.Patient;

import com.hsm.service.PatientService;
@Controller
public class PatientController {
	@Autowired
	PatientService patient;

	@RequestMapping("home")
	String welcome() {
		return "Home";
	}
	@RequestMapping("NewPatient")
	String saveP() {
		
		return "NewPatient";
	}
	
	@RequestMapping(value="savePatient",method=RequestMethod.POST)
	public String savePatient(@ModelAttribute Patient pa) {
		patient.save(pa);
		return"Doctor";

	}
	@RequestMapping("showAllPatient")
	public ModelAndView getAllPatient(){
		List<Patient> list=patient.findAll();
		ModelAndView view=new ModelAndView("DisplayAllPatient","display",list);

		return view;
	}

	@RequestMapping(value="findPatientById",method=RequestMethod.POST)
	ModelAndView findPatietById(@RequestParam("id") int id) {
		Patient p=patient.getById(id);
		System.out.println(p.getAddress());
		System.out.println(id);
		
		ModelAndView view =new ModelAndView("Doctor","patientById",p);
		return view;
	}
	@RequestMapping("deletePatient")
	ModelAndView deletePatient(@RequestParam("id") int id) {
		Patient p=patient.getById(id);
		ModelAndView view=null;
		if(p!=null) {
			patient.delete(p);
			 view=new ModelAndView("Admin","success","Patient deleted");
		}
		else {
			view =new ModelAndView("Admin","fail","Enter correct patient id");
		}
		return view;
	}
	
	
}
