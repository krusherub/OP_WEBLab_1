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
        response.sendRedirect("vanyaHTML.html");
    }
    @Override
    public void destroy() {

    }

}
