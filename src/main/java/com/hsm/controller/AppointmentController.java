package com.hsm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hsm.entity.Appointment;

import com.hsm.service.AppointmentService;



@Controller
public class AppointmentController {
	@Autowired
	AppointmentService appointmentRepository;
	@RequestMapping("AddnewAppointment")
	String pageNew() {
		return "SaveNewAppointment";
	}
	
	
	
	
	@RequestMapping(value="saveAppointment",method=RequestMethod.POST)
	String saveAppointment(@ModelAttribute Appointment app) {
		appointmentRepository.save(app);
		return "Reception";
	}
	
	@RequestMapping("deleteAppoitment")
	String deleteA() {
		
		return "cancelAppointment";
	}
	
	
	@RequestMapping(value="DeleteAppointmentById",method=RequestMethod.POST)
	ModelAndView delAppoinment(@RequestParam("id") int id) {
	Appointment appointment=appointmentRepository.getById(id);

	ModelAndView view=null;
		if(appointment!=null) {
			appointmentRepository.delete(appointment);
		view=new ModelAndView("cancelAppointment","user","Appointment Deleted");
		}
		else {
			view =new ModelAndView("cancelAppointment","errorkey","The appointment ID is incorrect or Appointment doesn't exist");
		}
		return view;
	}
	
	
	
		@RequestMapping(value="findAppointmentById",method=RequestMethod.POST)
		ModelAndView findAppoinment(@RequestParam("id") int id) {
		Appointment appointment=appointmentRepository.getById(id);
		ModelAndView view=null;
			if(appointment!=null) {
			view=new ModelAndView("myAppointments","user",appointment);
			}
			else {
				view =new ModelAndView("Reception","errorkey","The appointment ID is incorrect");
			}
			return view;
		}
		@RequestMapping("showAllAppoitment")
		ModelAndView allAppointment() {
			List<Appointment> appointment=	appointmentRepository.findAll();
			ModelAndView view=null;
				if(appointment!=null) {
				view=new ModelAndView("DisplayAllAppointments","AllAppointment",appointment);
				}
				else {
					view =new ModelAndView("Reception","error","Appointment List is Empty");
				}
				return view;
			}
		
	}
	
	


