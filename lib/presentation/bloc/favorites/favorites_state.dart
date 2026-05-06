import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';

part 'favorites_state.freezed.dart';

enum FavoritesStatus { initial, loading, success, failure }

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(FavoritesStatus.initial) FavoritesStatus status,
    @Default([]) List<Recipe> favorites,
    String? errorMessage,
  }) = _FavoritesState;

  const FavoritesState._();

  bool isFavorite(String recipeId) => favorites.any((r) => r.id == recipeId);
}
