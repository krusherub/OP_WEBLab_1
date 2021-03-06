package com.example.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DevitskiyServlet", value = "/DevitskiyServlet")
public class DevitskiyServlet extends HttpServlet {
    public void init() {

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("vanyaHTML.html");
        requestDispatcher.forward(request, response);
    }
    @Override
    public void destroy() {

    }

}
