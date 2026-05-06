import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';
import 'package:flutter_final_project/domain/repositories/auth_repository.dart';
import 'package:flutter_final_project/domain/repositories/favorites_repository.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepository _repository;
  final AuthRepository _authRepository;

  FavoritesCubit(this._repository, this._authRepository)
    : super(const FavoritesState());

  Future<void> loadFavorites() async {
    final user = _authRepository.currentUser;

    if (user == null) return;

    emit(state.copyWith(status: FavoritesStatus.loading));

    try {
      final favorites = await _repository.getFavorites(user.id);
      emit(
        state.copyWith(
          status: FavoritesStatus.success,
          favorites: favorites,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FavoritesStatus.failure,
          errorMessage: 'Ошибка при загрузке избранных рецептов',
        ),
      );
    }
  }

  Future<void> toggleFavorite(Recipe recipe) async {
    final user = _authRepository.currentUser;
    if (user == null) return;

    try {
      if (state.isFavorite(recipe.id)) {
        await _repository.removeFromFavorites(user.id, recipe.id);
        emit(state.copyWith(
          favorites: state.favorites.where((r) => r.id != recipe.id).toList(),
        ));
      } else {
        await _repository.addToFavorites(user.id, recipe.id);
        emit(state.copyWith(favorites: [...state.favorites, recipe]));
      }
    } catch (_) {
      await loadFavorites();
    }
  }
}
