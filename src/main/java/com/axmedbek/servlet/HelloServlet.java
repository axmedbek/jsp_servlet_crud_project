package com.axmedbek.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "HelloServlet")
public class HelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter pw = response.getWriter();
        Date today = new Date();
        String msg = request.getParameter("name");
        msg = msg == null ? "Yoxdur" : msg;
        pw.print("<html><body> <h1>" + msg + "</h1>");
        pw.print("<p>today:" + today + "<p>");
        pw.print("<a href=	http://www.injavawetrust.com/>injavawetrust </a>");
        pw.print("</body></html>");
    }
}
