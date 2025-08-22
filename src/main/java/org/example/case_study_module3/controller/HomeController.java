package org.example.case_study_module3.controller;

import org.example.case_study_module3.DAO.RecipeDAO;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Home", value = "/home")
public class HomeController extends HttpServlet {

    private RecipeDAO recipeDAO;

    @Override
    public void init() throws ServletException {
        recipeDAO = new RecipeDAO();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setAttribute("username", "Nguyen Duc Hung!");
            request.setAttribute("listRecipe", recipeDAO.selectAllRecipes());
            request.getRequestDispatcher("/home.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}