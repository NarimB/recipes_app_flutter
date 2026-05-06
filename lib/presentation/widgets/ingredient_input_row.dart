import 'package:flutter/material.dart';
import 'package:flutter_final_project/domain/entities/ingredient.dart';

class IngredientInputRow extends StatefulWidget {
  const IngredientInputRow({
    super.key,
    required this.ingredient,
    required this.onChanged,
    required this.onRemove,
  });

  final Ingredient ingredient;
  final ValueChanged<Ingredient> onChanged;
  final VoidCallback onRemove;

  @override
  State<IngredientInputRow> createState() => _IngredientInputRowState();
}

class _IngredientInputRowState extends State<IngredientInputRow> {
  late final TextEditingController _name;
  late final TextEditingController _amount;
  late final TextEditingController _unit;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController(text: widget.ingredient.name);
    _amount = TextEditingController(
      text: widget.ingredient.amount == 0
          ? ''
          : widget.ingredient.amount.toString(),
    );
    _unit = TextEditingController(text: widget.ingredient.unit);
  }

  @override
  void dispose() {
    _name.dispose();
    _amount.dispose();
    _unit.dispose();
    super.dispose();
  }

  void _emit() {
    widget.onChanged(
      Ingredient(
        name: _name.text.trim(),
        amount: double.tryParse(_amount.text) ?? 0,
        unit: _unit.text.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: TextField(
              controller: _name,
              decoration: const InputDecoration(hintText: 'Название'),
              onChanged: (_) => _emit(),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 70,
            child: TextField(
              controller: _amount,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Кол-во'),
              onChanged: (_) => _emit(),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 60,
            child: TextField(
              controller: _unit,
              decoration: const InputDecoration(hintText: 'ед.'),
              onChanged: (_) => _emit(),
            ),
          ),
          IconButton(onPressed: widget.onRemove, icon: const Icon(Icons.close)),
        ],
      ),
    );
  }
}
