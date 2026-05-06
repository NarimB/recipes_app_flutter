import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_state.dart';
import 'package:flutter_final_project/presentation/widgets/recipe_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Избранное',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          if (state.status == FavoritesStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.favorites.isEmpty) {
            return const Center(child: Text('В избранном пока пусто'));
          }
          return ListView.builder(
            itemCount: state.favorites.length,
            itemBuilder: (_, i) => RecipeCard(recipe: state.favorites[i]),
          );
        },
      ),
    );
  }
}
