package com.axmedbek.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String DB_DRIVER = "jdbc:mysql://localhost:3306/";
    private static final String DB_NAME = "javadb";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "";


    public static Connection getConnection(){
        Connection conn = null;
        String URL = DB_DRIVER + DB_NAME + "," + DB_USERNAME + "," + DB_PASSWORD;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb", "root", "");
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
