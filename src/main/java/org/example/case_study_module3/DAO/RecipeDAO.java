package org.example.case_study_module3.DAO;

import org.example.case_study_module3.model.Recipe;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RecipeDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/recipes";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    private static final String SELECT_ALL_RECIPES = "SELECT * FROM recipes";
    private static final String SELECT_RECIPE_BY_ID = "SELECT * FROM recipes WHERE id=?";
    private static final String ADD_RECIPE = "INSERT INTO recipes (name, image_url, ingredients, instructions) VALUES (?,?,?,?)";
    private static final String EDIT_RECIPE = "UPDATE recipes SET name=?, image_url=?, ingredients=?, instructions=? WHERE id=?";
    private static final String DELETE_RECIPE = "DELETE FROM recipes WHERE id=?";
    private static final String GET_10_INGREDIENTS = "SELECT ingredients FROM recipes LIMIT 10";
    private static final String GET_RECIPE_BY_INGREDIENTS = "SELECT * FROM recipes WHERE ingredients LIKE ?";
    public RecipeDAO() {
    }

    protected Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public Recipe getRecipeById(int id) {
        Recipe recipe = null;
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(SELECT_RECIPE_BY_ID)) {
            stmt.setInt(1, id);
            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int recipeId = rs.getInt("id");
                String name = rs.getString("name");
                String imageURL = rs.getString("image_url");
                String ingredients = rs.getString("ingredients");
                String instructions = rs.getString("instructions");
                recipe = new Recipe(recipeId, name, imageURL, ingredients, instructions);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return recipe;
    }

    public List<Recipe> selectAllRecipes() {

        List<Recipe> recipes = new ArrayList<>();
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(SELECT_ALL_RECIPES)) {
            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String imageURL = rs.getString("image_url");
                String ingredients = rs.getString("ingredients");
                String instructions = rs.getString("instructions");
                recipes.add(new Recipe(id, name, imageURL, ingredients, instructions));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return recipes;
    }

    public void addRecipe(Recipe recipe) throws SQLException {
        System.out.println(ADD_RECIPE);
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(ADD_RECIPE)) {
            stmt.setString(1, recipe.getName());
            stmt.setString(2, recipe.getImageURL());
            stmt.setString(3, recipe.getIngredients());
            stmt.setString(4, recipe.getInstructions());
            System.out.println(stmt);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean editRecipe(Recipe recipe) throws SQLException {
        boolean rowUpdated = false;
        System.out.println(EDIT_RECIPE);
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(EDIT_RECIPE);) {
            stmt.setString(1, recipe.getName());
            stmt.setString(2, recipe.getImageURL());
            stmt.setString(3, recipe.getIngredients());
            stmt.setString(4, recipe.getInstructions());
            stmt.setInt(5, recipe.getId());
            System.out.println(stmt);

            rowUpdated = stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(rowUpdated);
        return rowUpdated;
    }

    public boolean deleteRecipe(int id) throws SQLException {
        boolean rowDeleted = false;
        System.out.println(DELETE_RECIPE);
        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(DELETE_RECIPE)) {
            stmt.setInt(1, id);
            rowDeleted = stmt.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public List<String> get10Ingredients() {
        List<String> ingredientsList = new ArrayList<>();

        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(GET_10_INGREDIENTS)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String[] parts = resultSet.getString("ingredients").split(",");
                for (String ingredient : parts) {
                    String trimmedIngredient = ingredient.trim();
                    if (!ingredientsList.contains(trimmedIngredient)) {
                        ingredientsList.add(trimmedIngredient);
                        if (ingredientsList.size() == 10) {
                            return ingredientsList;
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ingredientsList;
    }

    public List<Recipe> getRecipeByIngredient(String ingredients) {
        List<Recipe> recipes = new ArrayList<>();

        try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(GET_RECIPE_BY_INGREDIENTS)) {

            stmt.setString(1, "%" + ingredients + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Recipe recipe = new Recipe(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image_url"),
                        rs.getString("ingredients"),
                        rs.getString("instructions")
                );
                recipes.add(recipe);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return recipes;
    }
}
