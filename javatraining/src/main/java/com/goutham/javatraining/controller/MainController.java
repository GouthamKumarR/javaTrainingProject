package com.goutham.javatraining.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.amazonaws.services.apigateway.model.Model;
import com.goutham.trainingBackend.dao.ContactDAO;
import com.goutham.trainingBackend.dao.CoursesDAO;
import com.goutham.trainingBackend.dto.ContactUs;
import com.goutham.trainingBackend.dto.Courses;

@Controller
public class MainController {

	@Autowired
	private ContactDAO contactDAO;
	
	@Autowired
	private CoursesDAO coursesDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Home");
		mv.addObject("userClickHome", true);

		return mv;
	}

	@RequestMapping(value = { "/about" })
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "About");
		mv.addObject("userClickAbout", true);

		return mv;
	}

	@RequestMapping(value = "/contact")
	public ModelAndView contact(@RequestParam(name = "success", required = false) String success) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);

		ContactUs contact = new ContactUs();
		mv.addObject("contact", contact);
		if (success != null) {
			if (success.equals("contact")) {
				mv.addObject("message", "Contact Form submitted successfully!");
			}
		}

		return mv;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String doSendEmail(@Valid @ModelAttribute("contact") ContactUs contact, BindingResult results, Model model,
			HttpServletRequest request) {

		String body = "Name :" + contact.getName() + "Message :" + contact.getMessage();

		if (contact.getId() == 0) {
			contactDAO.addContact(contact);
		}

		/*
		 * try { SimpleMailMessage email = new SimpleMailMessage();
		 * email.setTo(contact.getEmail());
		 * email.setFrom("gouthamliferay@gmail.com");
		 * email.setSubject(contact.getSubject());
		 * email.setText(contact.getMessage());
		 * 
		 * 
		 * mailSender.send(email);
		 * 
		 * SMSUtil.sendSMS(body);
		 * 
		 * } catch (Exception ex) { ex.printStackTrace(); }
		 */

		return "redirect:/contact?success=contact";
	}

	@RequestMapping(value = { "/batches" })
	public ModelAndView price() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Batches");
		mv.addObject("userClickBatches", true);
		return mv;
	}

	@RequestMapping(value = { "/gallery" })
	public ModelAndView videos() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Gallery");
		mv.addObject("userClickGallery", true);
		return mv;
	}

	@RequestMapping(value = { "/courses" })
	public ModelAndView courses() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Courses");
		mv.addObject("userClickCourses", true);
		
		mv.addObject("courses",coursesDAO.list());
		
		

		return mv;
	}

	@RequestMapping(value = { "/coursedetails/{id}" })
	public ModelAndView coursedetails(@PathVariable("id")int id) {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Course Details");
		mv.addObject("userClickCourseDetails", true);
		
		Courses course = coursesDAO.get(id);
		mv.addObject("course", course);

		return mv;
	}

	@RequestMapping(value = { "/sidebar-right" })
	public ModelAndView sidebarRight() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "sidebar-right");
		mv.addObject("userClicksidebarRight", true);
		return mv;
	}
	
	
	
	@RequestMapping(value = { "/studentenquery" })
	public ModelAndView studentenquery() {
		ModelAndView mv = new ModelAndView("page");

		mv.addObject("title", "Student Enquery");
		mv.addObject("userClickStudentEnquery", true);
		return mv;
	}
	

}
