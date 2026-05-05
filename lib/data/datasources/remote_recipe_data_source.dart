import 'dart:io';

import 'package:flutter_final_project/data/models/recipe_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteRecipeDataSource {
  final SupabaseClient _client;

  RemoteRecipeDataSource(this._client);

  Future<List<RecipeModel>> getRecipes() async {
    final response = await _client
        .from('recipes')
        .select()
        .order('created_at', ascending: false);

    final list = (response as List)
        .map((element) => RecipeModel.fromJson(element))
        .toList();

    return list;
  }

  Future<List<RecipeModel>> getRecipesByUser(String userId) async {
    final response = await _client
        .from('recipes')
        .select()
        .eq('author_id', userId)
        .order('created_at', ascending: false);

    final list = (response as List)
        .map((element) => RecipeModel.fromJson(element))
        .toList();

    return list;
  }

  Future<RecipeModel?> getRecipeById(String id) async {
    final response = await _client
        .from('recipes')
        .select()
        .eq('id', id)
        .maybeSingle();

    if (response == null) return null;

    return RecipeModel.fromJson(response);
  }

  Future<List<RecipeModel>> getRecipesByCategory(String category) async {
    final response = await _client
        .from('recipes')
        .select()
        .eq('category', category)
        .order('created_at', ascending: false);

    final list = (response as List)
        .map((element) => RecipeModel.fromJson(element))
        .toList();

    return list;
  }

  Future<void> saveRecipe(RecipeModel recipe) async {
    await _client.from('recipes').insert({
      'title': recipe.title,
      'description': recipe.description,
      'author_id': recipe.authorId,
      'category': recipe.category,
      'cooking_time': recipe.cookingTime,
      'ingredients': recipe.ingredients,
      'steps': recipe.steps,
      'image_url': recipe.imageUrl,
    });
  }

  Future<List<RecipeModel>> searchRecipesByTitle(String title) async {
    final response = await _client
        .from('recipes')
        .select()
        .ilike('title', '%$title%')
        .order('created_at', ascending: false);

    final list = (response as List)
        .map((element) => RecipeModel.fromJson(element))
        .toList();

    return list;
  }

  Future<String> uploadImage(String localPath) async {
    final file = File(localPath);

    final fileName = '${DateTime.now().millisecondsSinceEpoch}.jpg';

    await _client.storage
        .from('recipes')
        .upload(
          fileName,
          file,
          fileOptions: const FileOptions(
            contentType: 'image/jpeg',
            upsert: true,
          ),
        );

    final publicUrl = _client.storage.from('recipes').getPublicUrl(fileName);

    return publicUrl;
  }
}
