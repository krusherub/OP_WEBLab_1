package com.example.demo;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "BrazhnikServlet", value = "/BrazhnikServlet")
public class BrazhnikServlet extends HttpServlet {


    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("sanyaHTML.html");
        requestDispatcher.forward(request, response);
    }

    public void destroy() {
    }
}