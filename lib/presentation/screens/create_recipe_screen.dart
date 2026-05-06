import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/presentation/bloc/create_recipe/create_recipe_cubit.dart';
import 'package:flutter_final_project/presentation/bloc/create_recipe/create_recipe_state.dart';
import 'package:flutter_final_project/presentation/widgets/ingredient_input_row.dart';
import 'package:flutter_final_project/presentation/widgets/step_input_row.dart';

class CreateRecipeScreen extends StatefulWidget {
  const CreateRecipeScreen({super.key});

  @override
  State<CreateRecipeScreen> createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends State<CreateRecipeScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Новый рецепт'),
        actions: [
          BlocConsumer<CreateRecipeCubit, CreateRecipeState>(
            listenWhen: (p, c) => p.status != c.status,
            listener: (context, state) {
              if (state.status == CreateRecipeStatus.success) {
                Navigator.pop(context);
              }
              if (state.status == CreateRecipeStatus.failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage ?? 'Ошибка'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              return TextButton(
                onPressed: state.canSubmit
                    ? () {
                        if (_formKey.currentState!.validate()) {
                          context.read<CreateRecipeCubit>().submit();
                        }
                      }
                    : null,
                child: const Text(
                  'Опубликовать',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<CreateRecipeCubit, CreateRecipeState>(
        builder: (context, state) {
          final cubit = context.read<CreateRecipeCubit>();

          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _photo(state, cubit),
                const SizedBox(height: 24),

                const Text('ОСНОВНОЕ', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Название'),
                  onChanged: cubit.titleChanged,
                  validator: (v) => (v ?? '').trim().length < 3
                      ? 'Минимум 3 символа'
                      : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Описание'),
                  maxLines: 3,
                  onChanged: cubit.descriptionChanged,
                  validator: (v) =>
                      (v ?? '').trim().isEmpty ? 'Опишите блюдо' : null,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        initialValue: state.category,
                        decoration: const InputDecoration(labelText: 'Категория'),
                        items: const [
                          DropdownMenuItem(value: 'breakfast', child: Text('Завтрак')),
                          DropdownMenuItem(value: 'lunch', child: Text('Обед')),
                          DropdownMenuItem(value: 'dinner', child: Text('Ужин')),
                          DropdownMenuItem(value: 'dessert', child: Text('Десерт')),
                        ],
                        onChanged: (v) {
                          if (v != null) cubit.categoryChanged(v);
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      width: 120,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Время (мин)'),
                        onChanged: (v) =>
                            cubit.cookingTimeChanged(int.tryParse(v) ?? 0),
                        validator: (v) {
                          final n = int.tryParse(v ?? '');
                          return (n == null || n <= 0) ? 'Больше 0' : null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                const Text('ИНГРЕДИЕНТЫ', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                for (var i = 0; i < state.ingredients.length; i++)
                  IngredientInputRow(
                    key: ValueKey('ing_$i'),
                    ingredient: state.ingredients[i],
                    onChanged: (ing) => cubit.updateIngredient(i, ing),
                    onRemove: () => cubit.removeIngredient(i),
                  ),
                TextButton.icon(
                  onPressed: cubit.addIngredient,
                  icon: const Icon(Icons.add),
                  label: const Text('Добавить ингредиент'),
                ),
                const SizedBox(height: 16),

                const Text('ШАГИ', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                for (var i = 0; i < state.steps.length; i++)
                  StepInputRow(
                    key: ValueKey('step_$i'),
                    step: state.steps[i],
                    onChanged: (text) => cubit.updateStep(i, text),
                    onRemove: () => cubit.removeStep(i),
                  ),
                TextButton.icon(
                  onPressed: cubit.addStep,
                  icon: const Icon(Icons.add),
                  label: const Text('Добавить шаг'),
                ),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _photo(CreateRecipeState state, CreateRecipeCubit cubit) {
    if (state.imageUrl != null) {
      return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              File(state.imageUrl!),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: cubit.removeImage,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, color: Colors.white),
              ),
            ),
          ),
        ],
      );
    }

    return InkWell(
      onTap: cubit.pickFromGallery,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.photo_outlined, size: 32),
              SizedBox(height: 8),
              Text('Добавить фото'),
            ],
          ),
        ),
      ),
    );
  }
}
