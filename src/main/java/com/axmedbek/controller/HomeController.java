package com.axmedbek.controller;

import com.axmedbek.dao.DBConnection;
import com.axmedbek.modal.Person;
import com.axmedbek.repository.PersonRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "HomeController")
public class HomeController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PersonRepository personRepository = new PersonRepository(DBConnection.getConnection());
        List<Person> personList = personRepository.getAllPerson();
        request.setAttribute("personList", personList);
        ServletContext servletContext = getServletContext();
        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/personList.jsp");
        dispatcher.forward(request, response);

    }

}

