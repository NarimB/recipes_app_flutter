import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/domain/entities/recipe.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/favorites/favorites_state.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scale = Tween<double>(
      begin: 1.0,
      end: 1.4,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        final isFav = state.isFavorite(widget.recipe.id);
        return GestureDetector(
          onTap: () async {
            await _controller.forward();
            await _controller.reverse();
            if (context.mounted) {
              context.read<FavoritesCubit>().toggleFavorite(widget.recipe);
            }
          },
          child: ScaleTransition(
            scale: _scale,
            child: Icon(
              isFav ? Icons.bookmark : Icons.bookmark_border,
              color: isFav ? Theme.of(context).colorScheme.primary : null,
              size: 24,
            ),
          ),
        );
      },
    );
  }
}
