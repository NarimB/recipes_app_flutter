import 'package:flutter/material.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:flutter_final_project/presentation/screens/create_recipe_screen.dart';
import 'package:flutter_final_project/presentation/screens/favorites_screen.dart';
import 'package:flutter_final_project/presentation/screens/profile_screen.dart';
import 'package:flutter_final_project/presentation/screens/recipe_feed_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_final_project/domain/repositories/auth_repository.dart';
import 'package:flutter_final_project/domain/repositories/recipe_repository.dart';
import 'package:flutter_final_project/locator.dart';
import 'package:flutter_final_project/presentation/bloc/create_recipe/create_recipe_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/recipe_feed/recipe_feed_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<FavoritesCubit>().loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          RecipeFeedScreen(),
          FavoritesScreen(),
          ProfileScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider(
                create: (_) => CreateRecipeCubit(
                  locator<RecipeRepository>(),
                  locator<ImagePicker>(),
                  locator<AuthRepository>(),
                ),
                child: const CreateRecipeScreen(),
              ),
            ),
          ).then((_) {
            if (context.mounted) {
              context.read<RecipeFeedCubit>().loadFeed();
            }
          });
        },
        icon: const Icon(Icons.add_rounded),
        label: const Text('Создать'),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (i) => setState(() => _currentIndex = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu_outlined),
            selectedIcon: Icon(Icons.restaurant_menu),
            label: 'Лента',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border),
            selectedIcon: Icon(Icons.bookmark),
            label: 'Избранное',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
