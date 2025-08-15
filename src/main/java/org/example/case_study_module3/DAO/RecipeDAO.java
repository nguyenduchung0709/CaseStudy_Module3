package org.example.case_study_module3.DAO;

import org.example.case_study_module3.model.Recipe;

import java.sql.*;

public class RecipeDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/recipes";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    private static final String SELECT_RECIPE_BY_ID = "SELECT * FROM recipes WHERE id=?";
    private static final String ADD_RECIPE = "INSERT INTO recipes VALUES (?,?,?,?)";

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

    public void addRecipe(Recipe recipe) throws SQLException {

    }
}
