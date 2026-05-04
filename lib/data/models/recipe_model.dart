import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../../domain/entities/ingredient.dart';
import '../../domain/entities/recipe.dart';
import '../../domain/entities/recipe_step.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class RecipeModel with _$RecipeModel {
  const RecipeModel._();

  const factory RecipeModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String description,
    @HiveField(3) @JsonKey(name: 'author_id') required String authorId,
    @HiveField(4) required String category,
    @HiveField(5) @JsonKey(name: 'cooking_time') required int cookingTime,
    @HiveField(6) required List<Map<String, dynamic>> ingredients,
    @HiveField(7) required List<Map<String, dynamic>> steps,
    @HiveField(8) @JsonKey(name: 'image_url') String? imageUrl,
    @HiveField(9) @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeModelFromJson(json);

  factory RecipeModel.fromEntity(Recipe recipe) => RecipeModel(
    id: recipe.id,
    title: recipe.title,
    description: recipe.description,
    authorId: recipe.authorId,
    category: recipe.category,
    cookingTime: recipe.cookingTime,
    ingredients: recipe.ingredients.map((i) => i.toMap()).toList(),
    steps: recipe.steps.map((s) => s.toMap()).toList(),
    imageUrl: recipe.imageUrl,
    createdAt: recipe.createdAt,
  );

  Recipe toEntity() => Recipe(
    id: id,
    title: title,
    description: description,
    authorId: authorId,
    category: category,
    cookingTime: cookingTime,
    ingredients: ingredients.map(Ingredient.fromMap).toList(),
    steps: steps.map(RecipeStep.fromMap).toList(),
    imageUrl: imageUrl,
    createdAt: createdAt,
  );
}
