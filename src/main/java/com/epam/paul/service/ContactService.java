package com.epam.paul.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.epam.paul.model.Contact;
public interface ContactService {

	@Transactional
	Contact save(Contact contact);

	List<Contact> findAllContacts();
	
	Contact find(Long id);
	
	void delete(Contact contact);
	
}
