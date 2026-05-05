import 'package:flutter_final_project/data/datasources/local_favorites_data_source.dart';
import 'package:flutter_final_project/data/datasources/local_recipe_data_source.dart';
import 'package:flutter_final_project/data/datasources/remote_favorites_data_source.dart';
import 'package:flutter_final_project/data/datasources/remote_recipe_data_source.dart';
import 'package:flutter_final_project/data/repositories/auth_repository_impl.dart';
import 'package:flutter_final_project/data/repositories/favorites_repository_impl.dart';
import 'package:flutter_final_project/data/repositories/recipe_repository_impl.dart';
import 'package:flutter_final_project/domain/repositories/auth_repository.dart';
import 'package:flutter_final_project/domain/repositories/favorites_repository.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final locator = GetIt.instance;

Future<void> setupDependencies() async {
  locator.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

  locator.registerLazySingleton<ImagePicker>(() => ImagePicker());

  locator.registerLazySingleton<LocalRecipeDataSource>(
    () => LocalRecipeDataSource(),
  );

  locator.registerLazySingleton<LocalFavoritesDataSource>(
    () => LocalFavoritesDataSource(),
  );

  locator.registerLazySingleton<RemoteRecipeDataSource>(
    () => RemoteRecipeDataSource(locator<SupabaseClient>()),
  );

  locator.registerLazySingleton<RemoteFavoritesDataSource>(
    () => RemoteFavoritesDataSource(locator<SupabaseClient>()),
  );

  locator.registerLazySingleton<RecipeRepository>(
    () => RecipeRepositoryImpl(
      locator<LocalRecipeDataSource>(),
      locator<RemoteRecipeDataSource>(),
    ),
  );

  locator.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(
      locator<LocalFavoritesDataSource>(),
      locator<RemoteFavoritesDataSource>(),
      locator<LocalRecipeDataSource>(),
      locator<RemoteRecipeDataSource>(),
    ),
  );

  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(locator<SupabaseClient>()),
  );
}
