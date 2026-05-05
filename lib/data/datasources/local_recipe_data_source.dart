import 'package:flutter_final_project/data/models/recipe_model.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class LocalRecipeDataSource {
  static const _boxName = 'recipes';

  Future<Box<RecipeModel>> get _box async =>
      Hive.openBox<RecipeModel>(_boxName);

  Future<List<RecipeModel>> getRecipes() async {
    final box = await _box;
    final recipes = box.values.toList();

    recipes.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return recipes;
  }

  Future<List<RecipeModel>> getRecipesByUser(String authorId) async {
    final box = await _box;
    final recipes = box.values.where((e) => e.authorId == authorId).toList();

    recipes.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return recipes;
  }

  Future<RecipeModel?> getRecipeById(String id) async {
    final box = await _box;
    final recipe = box.get(id);

    return recipe;
  }

  Future<List<RecipeModel>> getRecipesByCategory(String category) async {
    final box = await _box;
    final recipes = box.values.where((e) => e.category == category).toList();

    recipes.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return recipes;
  }

  Future<void> saveRecipe(RecipeModel recipe) async {
    final box = await _box;
    await box.put(recipe.id, recipe);
  }

  Future<List<RecipeModel>> searchRecipesByTitle(String title) async {
    final box = await _box;
    final query = title.toLowerCase();
    final recipes = box.values
        .where((e) => e.title.toLowerCase().contains(query))
        .toList();

    recipes.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return recipes;
  }

  Future<void> clear() async {
    final box = await _box;
    await box.clear();
  }
}
