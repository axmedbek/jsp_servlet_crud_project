package com.axmedbek.service;

import com.axmedbek.modal.Person;

import java.util.List;

public interface PersonService {
    public void savePerson(Person person);
    public Person getPersonById(int id);
    public List<Person> getAllPerson();
    public void deletePerson(int id);
}
