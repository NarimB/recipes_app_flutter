import 'package:flutter/material.dart';
import 'package:flutter_final_project/domain/entities/recipe_step.dart';

class StepInputRow extends StatefulWidget {
  const StepInputRow({
    super.key,
    required this.step,
    required this.onChanged,
    required this.onRemove,
  });

  final RecipeStep step;
  final ValueChanged<String> onChanged;
  final VoidCallback onRemove;

  @override
  State<StepInputRow> createState() => _StepInputRowState();
}

class _StepInputRowState extends State<StepInputRow> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.step.description);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: theme.colorScheme.primary,
              child: Text(
                '${widget.step.order}',
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              maxLines: null,
              decoration: const InputDecoration(hintText: 'Описание шага'),
              onChanged: widget.onChanged,
            ),
          ),
          IconButton(onPressed: widget.onRemove, icon: const Icon(Icons.close)),
        ],
      ),
    );
  }
}
