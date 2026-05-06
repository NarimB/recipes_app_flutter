import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/domain/entities/ingredient.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';
import 'package:flutter_final_project/domain/entities/recipe_step.dart';
import 'package:flutter_final_project/domain/repositories/auth_repository.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';
import 'package:flutter_final_project/presentation/bloc/create_recipe/create_recipe_state.dart';
import 'package:image_picker/image_picker.dart';

class CreateRecipeCubit extends Cubit<CreateRecipeState> {
  final RecipeRepository _repository;
  final ImagePicker _picker;
  final AuthRepository _authRepository;

  CreateRecipeCubit(this._repository, this._picker, this._authRepository)
    : super(const CreateRecipeState());

  void titleChanged(String value) => emit(state.copyWith(title: value));

  void descriptionChanged(String value) =>
      emit(state.copyWith(description: value));

  void categoryChanged(String value) => emit(state.copyWith(category: value));

  void cookingTimeChanged(int value) =>
      emit(state.copyWith(cookingTime: value));

  void addIngredient() {
    emit(
      state.copyWith(
        ingredients: [
          ...state.ingredients,
          Ingredient(name: '', amount: 0, unit: ''),
        ],
      ),
    );
  }

  void updateIngredient(int index, Ingredient ingredient) {
    final list = [...state.ingredients];
    list[index] = ingredient;
    emit(state.copyWith(ingredients: list));
  }

  void removeIngredient(int index) {
    final list = [...state.ingredients]..removeAt(index);
    emit(state.copyWith(ingredients: list));
  }

  void addStep() {
    emit(
      state.copyWith(
        steps: [
          ...state.steps,
          RecipeStep(order: state.steps.length + 1, description: ''),
        ],
      ),
    );
  }

  void updateStep(int index, String description) {
    final list = [...state.steps];
    list[index] = RecipeStep(
      order: list[index].order,
      description: description,
    );
    emit(state.copyWith(steps: list));
  }

  void removeStep(int index) {
    final list = [...state.steps]..removeAt(index);
    for (var i = 0; i < list.length; i++) {
      list[i] = RecipeStep(order: i + 1, description: list[i].description);
    }
    emit(state.copyWith(steps: list));
  }

  Future<void> pickFromGallery() async {
    final file = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (file == null) return;

    emit(state.copyWith(imageUrl: file.path));
  }

  void removeImage() => emit(state.copyWith(imageUrl: null));

  Future<void> submit() async {
    if (!state.canSubmit) return;

    emit(state.copyWith(status: CreateRecipeStatus.loading));

    final currentUser = _authRepository.currentUser;

    final recipe = Recipe(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: state.title.trim(),
      description: state.description.trim(),
      authorId: currentUser!.id,
      category: state.category,
      cookingTime: state.cookingTime,
      ingredients: state.ingredients,
      steps: state.steps,
      imageUrl: state.imageUrl,
      createdAt: DateTime.now(),
    );

    try {
      await _repository.createRecipe(recipe);
      emit(state.copyWith(status: CreateRecipeStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: CreateRecipeStatus.failure,
          errorMessage: 'Ошибка при создании рецепта',
        ),
      );
    }
  }
}
