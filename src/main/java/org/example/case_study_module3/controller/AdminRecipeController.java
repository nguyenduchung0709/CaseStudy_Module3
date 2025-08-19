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
import java.sql.SQLException;
import java.util.List;

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
        RequestDispatcher dispatcher = null;
        try {
            switch (action) {
                case "create":
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-create.jsp");
                    break;
                case "edit":
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-edit.jsp");
                    break;
                case "delete":
                    deleteRecipe(req,resp);
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
                    break;
                case "details":
                    int id = Integer.parseInt(req.getParameter("id"));
                    Recipe recipe = recipeDAO.getRecipeById(id);
                    req.setAttribute("recipe", recipe);
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipeDetails.jsp");
                    break;
                default:
                    List<Recipe> listRecipe = recipeDAO.selectAllRecipes();
                    req.setAttribute("listRecipe",listRecipe);
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String  action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }
        RequestDispatcher dispatcher = null;
        try {
            switch (action) {
                case "create":
                    addRecipe(req, resp);
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
                    break;
                case "edit":
                    editRecipe(req, resp);
                    dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
                    break;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        dispatcher.forward(req,resp);
    }

    private void listRecipe(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        List<Recipe> listRecipe = recipeDAO.selectAllRecipes();
        req.setAttribute("listRecipe",listRecipe);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/recipe-list.jsp");
        dispatcher.forward(req,resp);
    }

    private void addRecipe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String name = req.getParameter("name");
        String imageURL = req.getParameter("imageURL");
        String ingredients = req.getParameter("ingredients");
        String instructions = req.getParameter("instructions");
        Recipe newRecipe = new Recipe(name, imageURL, ingredients, instructions);
        recipeDAO.addRecipe(newRecipe);
    }

    private void editRecipe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String imageURL = req.getParameter("imageURL");
        String ingredients = req.getParameter("ingredients");
        String instructions = req.getParameter("instructions");

        Recipe updatedRecipe = new Recipe(id, name, imageURL, ingredients, instructions);
        recipeDAO.editRecipe(updatedRecipe);
    }

    private void deleteRecipe(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        recipeDAO.deleteRecipe(id);

        List<Recipe> listRecipe = recipeDAO.selectAllRecipes();
        req.setAttribute("listRecipe", listRecipe);
    }
}
