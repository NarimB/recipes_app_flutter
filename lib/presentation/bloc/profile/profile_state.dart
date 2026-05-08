import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';

part 'profile_state.freezed.dart';

enum ProfileStatus { initial, loading, success, failure }

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,
    @Default([]) List<Recipe> recipes,
    String? errorMessage,
  }) = _ProfileState;
}