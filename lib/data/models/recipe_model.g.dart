// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecipeModelAdapter extends TypeAdapter<RecipeModel> {
  @override
  final typeId = 0;

  @override
  RecipeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecipeModel(
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String,
      authorId: fields[3] as String,
      category: fields[4] as String,
      cookingTime: (fields[5] as num).toInt(),
      ingredients: (fields[6] as List)
          .map((e) => (e as Map).cast<String, dynamic>())
          .toList(),
      steps: (fields[7] as List)
          .map((e) => (e as Map).cast<String, dynamic>())
          .toList(),
      imageUrl: fields[8] as String?,
      createdAt: fields[9] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, RecipeModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.authorId)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.cookingTime)
      ..writeByte(6)
      ..write(obj.ingredients)
      ..writeByte(7)
      ..write(obj.steps)
      ..writeByte(8)
      ..write(obj.imageUrl)
      ..writeByte(9)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => _RecipeModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  authorId: json['author_id'] as String,
  category: json['category'] as String,
  cookingTime: (json['cooking_time'] as num).toInt(),
  ingredients: (json['ingredients'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  steps: (json['steps'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  imageUrl: json['image_url'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$RecipeModelToJson(_RecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author_id': instance.authorId,
      'category': instance.category,
      'cooking_time': instance.cookingTime,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'image_url': instance.imageUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };
