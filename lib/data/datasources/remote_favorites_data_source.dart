import 'package:flutter_final_project/data/models/favorite_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteFavoritesDataSource {
  final SupabaseClient _client;

  RemoteFavoritesDataSource(this._client);

  Future<List<FavoriteModel>> getFavorites(String userId) async {
    final response = await _client
        .from('favorites')
        .select()
        .eq('user_id', userId)
        .order('created_at', ascending: false);

    final list = (response as List)
        .map((element) => FavoriteModel.fromJson(element))
        .toList();

    return list;
  }

  Future<void> addFavorite(FavoriteModel favorite) async {
    await _client.from('favorites').insert({
      'user_id': favorite.userId,
      'recipe_id': favorite.recipeId,
    });
  }

  Future<void> removeFavorite(String userId, String recipeId) async {
    await _client
        .from('favorites')
        .delete()
        .eq('user_id', userId)
        .eq('recipe_id', recipeId);
  }

  Future<bool> isFavorite(String userId, String recipeId) async {
    final response = await _client
        .from('favorites')
        .select('id')
        .eq('user_id', userId)
        .eq('recipe_id', recipeId)
        .maybeSingle();

    return response != null;
  }
}
