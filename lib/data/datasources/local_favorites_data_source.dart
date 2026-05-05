import 'package:flutter_final_project/data/models/favorite_model.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class LocalFavoritesDataSource {
  static const _boxName = 'favorites';

  Future<Box<FavoriteModel>> get _box async =>
      Hive.openBox<FavoriteModel>(_boxName);

  Future<List<FavoriteModel>> getFavorites(String userId) async {
    final box = await _box;
    final favorites = box.values.where((e) => e.userId == userId).toList();

    favorites.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return favorites;
  }

  Future<void> addFavorite(FavoriteModel favorite) async {
    final box = await _box;
    await box.put(favorite.id, favorite);
  }

  Future<void> removeFavorite(String userId, String recipeId) async {
    final box = await _box;
    final favorite = box.values
        .where((e) => e.userId == userId && e.recipeId == recipeId)
        .firstOrNull;

    if (favorite == null) return;

    await box.delete(favorite.id);
  }

  Future<bool> isFavorite(String userId, String recipeId) async {
    final box = await _box;
    final answer = box.values.any(
      (e) => e.userId == userId && e.recipeId == recipeId,
    );

    return answer;
  }

  Future<void> saveAll(List<FavoriteModel> favorites) async {
    final box = await _box;
    for (final favorite in favorites) {
      await box.put(favorite.id, favorite);
    }
  }

  Future<void> clear() async {
    final box = await _box;
    await box.clear();
  }
}
