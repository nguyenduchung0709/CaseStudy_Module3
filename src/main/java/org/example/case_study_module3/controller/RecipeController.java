package org.example.case_study_module3.controller;

import org.example.case_study_module3.DAO.RecipeDAO;
import sun.rmi.server.Dispatcher;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

@WebServlet(name="RecipeController", urlPatterns = "/recipe")
public class RecipeController extends HttpServlet {

    public void init() throws ServletException {
        RecipeDAO recipeDAO = new RecipeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/recipe.jsp");
        dispatcher.forward(req,resp);

        PrintWriter out = resp.getWriter();
        out.println("<html><body>");

        out.println("</body></html>");
    }
}
