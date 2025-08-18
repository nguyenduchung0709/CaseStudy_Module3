package org.example.case_study_module3;

import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Home", value = "/home")
public class Home extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setAttribute("username", "Nguyen Duc Hung!");
            request.getRequestDispatcher("/home.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}