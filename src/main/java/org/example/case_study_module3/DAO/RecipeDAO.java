package org.example.case_study_module3.DAO;

import org.example.case_study_module3.model.Recipe;

import java.sql.*;

public class RecipeDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/recipe_website";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    public Recipe getRecipeById(int id){
        Recipe recipe = null;
        String sql = "select * from recipe where id=?";
        try (Connection conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            System.out.println(stmt);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                String imageURL = rs.getString("imageURL");
                String ingredients = rs.getString("ingredients");
                String instructions = rs.getString("instructions");
                recipe = new Recipe();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return recipe;
    }


}
