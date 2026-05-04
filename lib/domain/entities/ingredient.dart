class Ingredient {
  final String name;
  final double amount;
  final String unit;

  Ingredient({required this.name, required this.amount, required this.unit});

  factory Ingredient.fromMap(Map map) => Ingredient(
        name: map['name'] as String,
        amount: (map['amount'] as num).toDouble(),
        unit: map['unit'] as String,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'amount': amount,
        'unit': unit,
      };
}
