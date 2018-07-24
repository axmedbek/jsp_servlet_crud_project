package com.axmedbek.controller;

import com.axmedbek.dao.DBConnection;
import com.axmedbek.modal.Person;
import com.axmedbek.repository.PersonRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddPersonController",urlPatterns = "/addPerson")
public class AddPersonController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PersonRepository personRepository = new PersonRepository(DBConnection.getConnection());
        personRepository.savePerson(new Person(request.getParameter("name"),request.getParameter("surname")));
        response.sendRedirect("/people_list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
