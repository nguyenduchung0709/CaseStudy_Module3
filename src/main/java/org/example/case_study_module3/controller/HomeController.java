package org.example.case_study_module3.controller;

import org.example.case_study_module3.DAO.RecipeDAO;
import org.example.case_study_module3.model.Recipe;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Home", value = {"/home","/"})
public class HomeController extends HttpServlet {

    private RecipeDAO recipeDAO;

    @Override
    public void init() throws ServletException {
        recipeDAO = new RecipeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action="";
        }
        RequestDispatcher dispatcher = null;
        try {
            switch (action) {
                case "login":
                    break;
                case "logout":
                    break;
                case "view":
                    int id = Integer.parseInt(request.getParameter("id"));
                    Recipe recipe = recipeDAO.getRecipeById(id);
                    request.setAttribute("recipe",recipe);
                    dispatcher = request.getRequestDispatcher("/WEB-INF/views/recipe.jsp");
                    break;
                default:
                    request.setAttribute("username", "Nguyen Duc Hung!");
                    request.setAttribute("listRecipe", recipeDAO.selectAllRecipes());
                    request.getRequestDispatcher("/home.jsp").forward(request, response);

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action="";
        }
        RequestDispatcher dispatcher = null;
        try {
            switch (action) {
                case "recipe":
                    int id = Integer.parseInt(req.getParameter("id"));
                    Recipe recipe = recipeDAO.getRecipeById(id);
                    req.setAttribute("recipe", recipe);
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/recipe.jsp");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        dispatcher.forward(req, resp);
    }
}