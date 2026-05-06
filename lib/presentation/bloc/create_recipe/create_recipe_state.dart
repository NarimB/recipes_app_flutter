import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_final_project/domain/entities/ingredient.dart';
import 'package:flutter_final_project/domain/entities/recipe_step.dart';

part 'create_recipe_state.freezed.dart';

enum CreateRecipeStatus { initial, loading, success, failure }

@freezed
abstract class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState({
    @Default(CreateRecipeStatus.initial) CreateRecipeStatus status,
    @Default('') String title,
    @Default('') String description,
    @Default('breakfast') String category,
    @Default(0) int cookingTime,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<RecipeStep> steps,
    String? imageUrl,
    String? errorMessage,
  }) = _CreateRecipeState;

  const CreateRecipeState._();

  bool get canSubmit =>
    title.trim().length >= 3 &&
    description.trim().isNotEmpty &&
    cookingTime > 0 &&
    ingredients.isNotEmpty &&
    steps.isNotEmpty &&
    status != CreateRecipeStatus.loading;
}
