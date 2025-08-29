package org.example.case_study_module3.controller;

import org.example.case_study_module3.DAO.UserDAO;
import org.example.case_study_module3.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name="login", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userDAO.loginUser(email, password);

        if (user!=null) {
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            resp.sendRedirect("/home");
        } else  {
            req.setAttribute("error", "Invalid username or password!");
            req.getRequestDispatcher("/login.jsp").forward(req,resp);
        }
    }
}
