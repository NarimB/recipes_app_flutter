import 'package:flutter_final_project/domain/entities/ingredient.dart';
import 'package:flutter_final_project/domain/entities/recipe_step.dart';

class Recipe {
  final String id;
  final String title;
  final String description;
  final String authorId;
  final String category;
  final int cookingTime;
  final List<Ingredient> ingredients;
  final List<RecipeStep> steps;
  final String? imageUrl;
  final DateTime createdAt;

  Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.authorId,
    required this.category,
    required this.cookingTime,
    required this.ingredients,
    required this.steps,
    required this.createdAt,
    this.imageUrl,
  });

  Recipe copyWith({
    String? title,
    String? description,
    String? authorId,
    String? category,
    int? cookingTime,
    List<Ingredient>? ingredients,
    List<RecipeStep>? steps,
    String? imageUrl,
    DateTime? createdAt,
  }) {
    return Recipe(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      authorId: authorId ?? this.authorId,
      category: category ?? this.category,
      cookingTime: cookingTime ?? this.cookingTime,
      ingredients: ingredients ?? this.ingredients,
      steps: steps ?? this.steps,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
