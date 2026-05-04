import 'package:flutter_final_project/domain/entities/recipe.dart';

abstract class FavoritesRepository {
  Future<List<Recipe>> getFavorites(String userId);
  Future<void> addToFavorites(String userId, String recipeId);
  Future<void> removeFromFavorites(String userId, String recipeId);
  Future<bool> isFavorite(String userId, String recipeId);
}
