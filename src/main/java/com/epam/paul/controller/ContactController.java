package com.epam.paul.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.epam.paul.model.Contact;
import com.epam.paul.service.ContactService;

@Controller
@SessionAttributes("contact")
public class ContactController {

	@Autowired
	private ContactService contactService;
	
	//first time on the add contact page
	@RequestMapping(value = "add-contact", method = RequestMethod.GET)
	public String addContact(Model model, HttpSession session) {
		
		Contact contact = new Contact();
		
		model.addAttribute("contact", contact);
		
		return "add-contact";
	}
	
	
	//after we sent the form with the new contact
	@RequestMapping(value = "add-contact", method = RequestMethod.POST)
	public String updateContact(@Valid @ModelAttribute("contact") Contact contact, BindingResult result, Model model) {
		
		//validation - save entity in case of success
		if(!result.hasErrors()) {
			contactService.save(contact);
			model.addAttribute("message", "Transaction successful!");
		}
		else{
			model.addAttribute("message", "Transaction failed.");
		}
		
		//Preventing the same bean re-appearing in the form
		model.addAttribute("contact", new Contact());
		
		return "add-contact";
	}
	
	@RequestMapping(value="view-contacts", method = RequestMethod.GET)
	public String viewContacts(Model model) {
		List<Contact> contacts = contactService.findAllContacts();
		
		model.addAttribute("contacts", contacts);
		
		return "view-contacts";
	}
	
	@RequestMapping(value="contact-details", method = RequestMethod.POST)
	public String viewDetails(@RequestParam("id") String id, Model model) {
		
		Contact contact = contactService.find(Long.parseLong(id));
		
		model.addAttribute("contact", contact);
		
		return "contact-details";
	}
	
	@RequestMapping(value = "edit-contact", method = RequestMethod.GET)
	public String editContact(Model model, @RequestParam("id") String id, HttpSession session) {
		
		
		Contact contact = (Contact) session.getAttribute("contact");
				
		contact = contactService.find(Long.parseLong(id));

		model.addAttribute("contact", contact);

		return "edit-contact";
	}
	
	@RequestMapping(value = "edit-contact", method = RequestMethod.POST)
	public String validateEditContact(@ModelAttribute("contact") Contact contact,  Model model, HttpSession session) {
		
		String msg = "Contact updated";
		model.addAttribute("msg", msg);
		contactService.save(contact);
		
		return "edit-contact";
	}
	
	
	@RequestMapping(value="delete-contact")
	public String deleteContact(@RequestParam("id") String id, Model model){
		
		Contact contact = contactService.find(Long.parseLong(id));
		model.addAttribute("contactName", contact.getFirstName() + " " + contact.getLastName());
		contactService.delete(contact);
		
		return "delete-contact";
	}
	
	
}
