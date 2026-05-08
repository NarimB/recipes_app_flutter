import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/domain/repositories/auth_repository.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';
import 'package:flutter_final_project/presentation/bloc/profile/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final RecipeRepository _repository;
  final AuthRepository _authRepository;

  ProfileCubit(this._repository, this._authRepository)
    : super(const ProfileState());

  Future<void> loadProfile() async {
    final user = _authRepository.currentUser;

    if (user == null) return;

    emit(state.copyWith(status: ProfileStatus.loading));

    try {
      final recipes = await _repository.getRecipesByUser(user.id);
      emit(
        state.copyWith(
          status: ProfileStatus.success,
          recipes: recipes,
          errorMessage: null,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: ProfileStatus.failure,
          errorMessage: 'Ошибка при загрузке профиля',
        ),
      );
    }
  }
}
