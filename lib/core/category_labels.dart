const _categoryLabels = {
  'breakfast': 'Завтрак',
  'lunch': 'Обед',
  'dinner': 'Ужин',
  'dessert': 'Десерт',
};

String categoryLabel(String key) => _categoryLabels[key] ?? key;
