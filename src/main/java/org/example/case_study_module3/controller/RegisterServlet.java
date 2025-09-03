package org.example.case_study_module3.controller;

import org.example.case_study_module3.DAO.UserDAO;
import org.example.case_study_module3.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String username = req.getParameter("username");

        if (userDAO.emailExists(email)) {
            req.setAttribute("error", "Email already exists!");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
            return;
        }

        User newUser = new User(username, email, password);
        boolean success = userDAO.registerUser(newUser);

        if (success) {
            resp.sendRedirect("login.jsp");
        } else {
            req.setAttribute("error", "Registration failed. Try again.");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
}