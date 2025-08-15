package org.example.case_study_module3.controller;

import org.example.case_study_module3.DAO.RecipeDAO;
import org.example.case_study_module3.model.Recipe;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="AdminRecipeController", urlPatterns = "/admin/recipe")
public class AdminRecipeController extends HttpServlet {

    RecipeDAO recipeDAO;

    public void init() throws ServletException {
         recipeDAO = new RecipeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }
        RequestDispatcher dispatcher;
        switch (action) {
            case "create":
                dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-create.jsp");
                break;
            case "details":
                int id = Integer.parseInt(req.getParameter("id"));
                Recipe recipe = recipeDAO.getRecipeById(id);
                req.setAttribute("recipe", recipe);
                dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipeDetails.jsp");
                break;
            default:
                dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
        }
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String imageURL = req.getParameter("imageURL");
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
        dispatcher.forward(req,resp);
    }
}
