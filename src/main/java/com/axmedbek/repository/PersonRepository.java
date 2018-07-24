package com.axmedbek.repository;

import com.axmedbek.dao.DBConnection;
import com.axmedbek.modal.Person;
import com.axmedbek.service.PersonService;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PersonRepository implements PersonService {

    private Connection connection;

    public PersonRepository(Connection connection){
        this.connection = connection;
    }

    public void savePerson(Person person) {
    }

    public Person getPersonById(int id) {
        return null;
    }

    public List<Person> getAllPerson(){
        List<Person> personList = null;
        try {
            personList = new ArrayList<Person>();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM persons");
            while (rs.next()){
                Person p = new Person(rs.getInt(1),rs.getString(2),rs.getString(3));
                personList.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return personList;
    }

    public void deletePerson(int id) {

    }
}
