import 'package:flutter_final_project/data/datasources/local_recipe_data_source.dart';
import 'package:flutter_final_project/data/datasources/remote_recipe_data_source.dart';
import 'package:flutter_final_project/data/models/recipe_model.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final LocalRecipeDataSource _local;
  final RemoteRecipeDataSource _remote;

  RecipeRepositoryImpl(this._local, this._remote);

  @override
  Future<void> createRecipe(Recipe recipe) async {
    String? finalImageUrl;

    if (recipe.imageUrl != null && recipe.imageUrl!.startsWith('/')) {
      finalImageUrl = await _remote.uploadImage(recipe.imageUrl!);
    }

    final model = RecipeModel.fromEntity(
      recipe.copyWith(imageUrl: finalImageUrl),
    );
    await _remote.saveRecipe(model);
    await _local.saveRecipe(model);
  }

  @override
  Future<List<Recipe>> getFeed() async {
    try {
      final remoteRecipes = await _remote.getRecipes();

      await _local.clear();

      for (final recipe in remoteRecipes) {
        await _local.saveRecipe(recipe);
      }

      return remoteRecipes.map((e) => e.toEntity()).toList();
    } catch (e) {
      final cached = await _local.getRecipes();
      return cached.map((e) => e.toEntity()).toList();
    }
  }

  @override
  Future<Recipe?> getById(String id) async {
    try {
      final remoteRecipe = await _remote.getRecipeById(id);

      if (remoteRecipe != null) {
        await _local.saveRecipe(remoteRecipe);
      }

      return remoteRecipe?.toEntity();
    } catch (e) {
      final cached = await _local.getRecipeById(id);
      return cached?.toEntity();
    }
  }

  @override
  Future<List<Recipe>> getRecipesByUser(String userId) async {
    try {
      final remoteRecipes = await _remote.getRecipesByUser(userId);

      for (final recipe in remoteRecipes) {
        await _local.saveRecipe(recipe);
      }

      return remoteRecipes.map((e) => e.toEntity()).toList();
    } catch (e) {
      final cached = await _local.getRecipesByUser(userId);
      return cached.map((e) => e.toEntity()).toList();
    }
  }

  @override
  Future<List<Recipe>> getByCategory(String category) async {
    try {
      final remoteRecipes = await _remote.getRecipesByCategory(category);
      return remoteRecipes.map((e) => e.toEntity()).toList();
    } catch (e) {
      final cached = await _local.getRecipesByCategory(category);
      return cached.map((e) => e.toEntity()).toList();
    }
  }

  @override
  Future<List<Recipe>> searchRecipes(String query) async {
    try {
      final remoteRecipes = await _remote.searchRecipesByTitle(query);
      return remoteRecipes.map((e) => e.toEntity()).toList();
    } catch (e) {
      final cached = await _local.searchRecipesByTitle(query);
      return cached.map((e) => e.toEntity()).toList();
    }
  }
}
