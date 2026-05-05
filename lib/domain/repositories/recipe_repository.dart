import 'package:flutter_final_project/domain/entities/recipe.dart';

abstract class RecipeRepository {
  Future<List<Recipe>> getFeed();
  Future<Recipe?> getById(String id);
  Future<void> createRecipe(Recipe recipe);
  Future<List<Recipe>> getRecipesByUser(String userId);
  Future<List<Recipe>> searchRecipes(String query);
  Future<List<Recipe>> getByCategory(String category);
}
