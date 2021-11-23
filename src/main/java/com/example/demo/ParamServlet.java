package com.example.demo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ParamServlet", value = "/ParamServlet")
public class ParamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        File outputFile = new File("C:\\Users\\user\\IdeaProjects\\OP_WEBLab_1\\src\\main\\webapp\\" + "File.txt");
        FileWriter fout = new FileWriter(outputFile);
        fout.write("The Content");
        System.out.println(outputFile.getAbsolutePath());
        fout.close();
        //request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext selvletContext = getServletContext();
        try{
            String res = "";
            String image = request.getParameter("image");
            String text = request.getParameter("text");
            int count  = Integer.parseInt(request.getParameter("count"));
            for (int i = 0; i < count; i++){
                res += "<div class=\"item\">\n" +
                               /* "<img src=\"" + image + "\" alt=\"Третий слайд\">"+*/
                        "        <div class=\"slideText\">"+text+i+"</div>\n" +
                        " </div>";
            }
            File outputFile = new File("C:\\Users\\user\\IdeaProjects\\OP_WEBLab_1\\src\\main\\webapp\\" + "File.txt");
            FileWriter fout = new FileWriter(outputFile);
            fout.write(text+"\n");
            fout.write(count + "\n");
            fout.write(image);
            fout.close();
            image = "background-image: url(\""+image+"\");";
            selvletContext.setAttribute("image",image);
            selvletContext.setAttribute("res",res);
            getServletContext().getRequestDispatcher("/second.jsp").forward(request, response);
        }catch (Exception ex){
            String res = "Error! First field is for string, second is for int ";
            request.setAttribute("res",res);
            getServletContext().getRequestDispatcher("/second.jsp").forward(request, response);
        }

    }
}
