import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_final_project/data/models/favorite_model.dart';
import 'package:flutter_final_project/data/models/recipe_model.dart';
import 'package:flutter_final_project/domain/repositories/auth_repository.dart';
import 'package:flutter_final_project/domain/repositories/favorites_repository.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';
import 'package:flutter_final_project/locator.dart';
import 'package:flutter_final_project/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/recipe_feed/recipe_feed_cubit.dart';
import 'package:flutter_final_project/presentation/widgets/auth_wrapper.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  await Supabase.initialize(
    url: dotenv.env['API_URL']!,
    anonKey: dotenv.env['API_KEY']!,
  );

  await Hive.initFlutter();
  Hive.registerAdapter(RecipeModelAdapter());
  Hive.registerAdapter(FavoriteModelAdapter());

  await setupDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthCubit(locator<AuthRepository>())..checkAuth(),
        ),
        BlocProvider(
          create: (_) => RecipeFeedCubit(locator<RecipeRepository>()),
        ),
        BlocProvider(
          create: (_) => FavoritesCubit(
            locator<FavoritesRepository>(),
            locator<AuthRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Recipe Catalog',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.system,
        home: const AuthWrapper(),
      ),
    );
  }
}
