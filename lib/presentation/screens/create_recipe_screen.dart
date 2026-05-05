import 'package:flutter/material.dart';

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Новый рецепт')),
      body: const Center(child: Text('Форма создания рецепта')),
    );
  }
}
