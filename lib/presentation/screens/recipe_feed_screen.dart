import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/presentation/bloc/recipe_feed/recipe_feed_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/recipe_feed/recipe_feed_state.dart';
import 'package:flutter_final_project/presentation/widgets/category_filter_chips.dart';
import 'package:flutter_final_project/presentation/widgets/recipe_card.dart';
import 'package:flutter_final_project/presentation/widgets/search_field.dart';

class RecipeFeedScreen extends StatefulWidget {
  const RecipeFeedScreen({super.key});

  @override
  State<RecipeFeedScreen> createState() => _RecipeFeedScreenState();
}

class _RecipeFeedScreenState extends State<RecipeFeedScreen> {
  @override
  void initState() {
    super.initState();
    context.read<RecipeFeedCubit>().loadFeed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Что приготовим?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<RecipeFeedCubit, RecipeFeedState>(
        builder: (context, state) {
          final cubit = context.read<RecipeFeedCubit>();

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: SearchField(onChanged: cubit.searchQueryChanged),
              ),
              CategoryFilterChips(
                selected: state.selectedCategory,
                onSelected: cubit.filterByCategory,
              ),
              const SizedBox(height: 8),
              Expanded(child: _buildList(state)),
            ],
          );
        },
      ),
    );
  }

  Widget _buildList(RecipeFeedState state) {
    if (state.status == RecipeFeedStatus.loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.status == RecipeFeedStatus.error) {
      return Center(child: Text(state.errorMessage ?? 'Ошибка'));
    }
    final recipes = state.displayedRecipes;
    if (recipes.isEmpty) {
      return const Center(child: Text('Список пуст'));
    }
    return ListView.builder(
      itemCount: recipes.length,
      itemBuilder: (_, i) => RecipeCard(recipe: recipes[i]),
    );
  }
}
