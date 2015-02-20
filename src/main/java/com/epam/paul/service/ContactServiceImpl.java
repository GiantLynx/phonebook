package com.epam.paul.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.epam.paul.model.Contact;
import com.epam.paul.repository.ContactRepository;

@Service("contactService")
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactRepository contactRepository;
	
	@Override
	@Transactional
	public Contact save(Contact contact) {
		return contactRepository.save(contact);
	}

	@Override
	public List<Contact> findAllContacts() {
		
		return contactRepository.findAll();
	}

	@Override
	public Contact find(Long id) {
		
		return contactRepository.findOne(id);
	}

	@Override
	public void delete(Contact contact) {
		contactRepository.delete(contact);
	}
	
	
	

}
