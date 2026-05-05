import 'package:flutter_final_project/data/datasources/local_favorites_data_source.dart';
import 'package:flutter_final_project/data/datasources/local_recipe_data_source.dart';
import 'package:flutter_final_project/data/datasources/remote_favorites_data_source.dart';
import 'package:flutter_final_project/data/datasources/remote_recipe_data_source.dart';
import 'package:flutter_final_project/data/models/favorite_model.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';
import 'package:flutter_final_project/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final LocalFavoritesDataSource _localFavorites;
  final RemoteFavoritesDataSource _remoteFavorites;
  final LocalRecipeDataSource _localRecipes;
  final RemoteRecipeDataSource _remoteRecipes;

  FavoritesRepositoryImpl(
    this._localFavorites,
    this._remoteFavorites,
    this._localRecipes,
    this._remoteRecipes,
  );

  @override
  Future<List<Recipe>> getFavorites(String userId) async {
    try {
      final remoteFavorites = await _remoteFavorites.getFavorites(userId);

      await _localFavorites.clear();
      await _localFavorites.saveAll(remoteFavorites);

      final recipes = <Recipe>[];
      for (final favorite in remoteFavorites) {
        final recipe = await _remoteRecipes.getRecipeById(favorite.recipeId);
        if (recipe != null) {
          await _localRecipes.saveRecipe(recipe);
          recipes.add(recipe.toEntity());
        }
      }

      return recipes;
    } catch (e) {
      final cachedFavorites = await _localFavorites.getFavorites(userId);
      final recipes = <Recipe>[];
      for (final favorite in cachedFavorites) {
        final recipe = await _localRecipes.getRecipeById(favorite.recipeId);
        if (recipe != null) {
          recipes.add(recipe.toEntity());
        }
      }
      return recipes;
    }
  }

  @override
  Future<void> addToFavorites(String userId, String recipeId) async {
    final favorite = FavoriteModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      userId: userId,
      recipeId: recipeId,
      createdAt: DateTime.now(),
    );

    await _remoteFavorites.addFavorite(favorite);
    await _localFavorites.addFavorite(favorite);
  }

  @override
  Future<void> removeFromFavorites(String userId, String recipeId) async {
    await _remoteFavorites.removeFavorite(userId, recipeId);
    await _localFavorites.removeFavorite(userId, recipeId);
  }

  @override
  Future<bool> isFavorite(String userId, String recipeId) async {
    try {
      return await _remoteFavorites.isFavorite(userId, recipeId);
    } catch (e) {
      return await _localFavorites.isFavorite(userId, recipeId);
    }
  }
}
