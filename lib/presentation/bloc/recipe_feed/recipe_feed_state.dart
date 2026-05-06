import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';

part 'recipe_feed_state.freezed.dart';

enum RecipeFeedStatus { initial, loading, success, error }

@freezed
abstract class RecipeFeedState with _$RecipeFeedState {
  const factory RecipeFeedState({
    @Default(RecipeFeedStatus.initial) RecipeFeedStatus status,
    @Default([]) List<Recipe> recipes,
    String? errorMessage,
    @Default('') String searchQuery,
    String? selectedCategory,
  }) = _RecipeFeedState;

  const RecipeFeedState._();

  List<Recipe> get displayedRecipes {
    var result = recipes;

    if (selectedCategory != null) {
      result = result
          .where((recipe) => recipe.category == selectedCategory)
          .toList();
    }

    if (searchQuery.isNotEmpty) {
      final q = searchQuery.toLowerCase();
      result = result
          .where((recipe) => recipe.title.toLowerCase().contains(q))
          .toList();
    }

    return result;
  }
}
