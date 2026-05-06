import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';
import 'package:flutter_final_project/presentation/bloc/recipe_feed/recipe_feed_state.dart';

class RecipeFeedCubit extends Cubit<RecipeFeedState> {
  final RecipeRepository _repository;

  RecipeFeedCubit(this._repository) : super(const RecipeFeedState());

  Future<void> loadFeed() async {
    emit(state.copyWith(status: RecipeFeedStatus.loading));

    try {
      final recipes = await _repository.getFeed();
      emit(
        state.copyWith(
          status: RecipeFeedStatus.success,
          recipes: recipes,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: RecipeFeedStatus.error,
          errorMessage: 'Ошибка загрузки ленты рецептов',
        ),
      );
    }
  }

  void searchQueryChanged(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void filterByCategory(String? category) {
    emit(state.copyWith(selectedCategory: category));
  }
}
