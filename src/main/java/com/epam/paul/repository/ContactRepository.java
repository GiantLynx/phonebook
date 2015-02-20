package com.epam.paul.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.epam.paul.model.Contact;

@Repository("contactRepository")
public interface ContactRepository extends JpaRepository<Contact, Long> {

}
