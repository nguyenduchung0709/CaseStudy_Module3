package org.example.case_study_module3.model;

public class Recipe {
    private int id;
    private String name;
    private String imageURL;
    private String ingredients; // nguyen lieu
    private String instructions; // huong dan

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public Recipe() {}

    public Recipe(int id, String name, String imageURL, String ingredients, String instructions) {
        this.id = id;
        this.name = name;
        this.imageURL = imageURL;
        this.ingredients = ingredients;
        this.instructions = instructions;
    }
}
