class RecipeStep {
  final int order;
  final String description;

  RecipeStep({required this.order, required this.description});

  factory RecipeStep.fromMap(Map map) => RecipeStep(
        order: map['order'] as int,
        description: map['description'] as String,
      );

  Map<String, dynamic> toMap() => {
        'order': order,
        'description': description,
      };
}
