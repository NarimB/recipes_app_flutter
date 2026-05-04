// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeModel {

@HiveField(0) String get id;@HiveField(1) String get title;@HiveField(2) String get description;@HiveField(3)@JsonKey(name: 'author_id') String get authorId;@HiveField(4) String get category;@HiveField(5)@JsonKey(name: 'cooking_time') int get cookingTime;@HiveField(6) List<Map<String, dynamic>> get ingredients;@HiveField(7) List<Map<String, dynamic>> get steps;@HiveField(8)@JsonKey(name: 'image_url') String? get imageUrl;@HiveField(9)@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<RecipeModel> get copyWith => _$RecipeModelCopyWithImpl<RecipeModel>(this as RecipeModel, _$identity);

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.category, category) || other.category == category)&&(identical(other.cookingTime, cookingTime) || other.cookingTime == cookingTime)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,authorId,category,cookingTime,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(steps),imageUrl,createdAt);

@override
String toString() {
  return 'RecipeModel(id: $id, title: $title, description: $description, authorId: $authorId, category: $category, cookingTime: $cookingTime, ingredients: $ingredients, steps: $steps, imageUrl: $imageUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecipeModelCopyWith<$Res>  {
  factory $RecipeModelCopyWith(RecipeModel value, $Res Function(RecipeModel) _then) = _$RecipeModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String title,@HiveField(2) String description,@HiveField(3)@JsonKey(name: 'author_id') String authorId,@HiveField(4) String category,@HiveField(5)@JsonKey(name: 'cooking_time') int cookingTime,@HiveField(6) List<Map<String, dynamic>> ingredients,@HiveField(7) List<Map<String, dynamic>> steps,@HiveField(8)@JsonKey(name: 'image_url') String? imageUrl,@HiveField(9)@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$RecipeModelCopyWithImpl<$Res>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._self, this._then);

  final RecipeModel _self;
  final $Res Function(RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? authorId = null,Object? category = null,Object? cookingTime = null,Object? ingredients = null,Object? steps = null,Object? imageUrl = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,cookingTime: null == cookingTime ? _self.cookingTime : cookingTime // ignore: cast_nullable_to_non_nullable
as int,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeModel].
extension RecipeModelPatterns on RecipeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeModel value)  $default,){
final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String title, @HiveField(2)  String description, @HiveField(3)@JsonKey(name: 'author_id')  String authorId, @HiveField(4)  String category, @HiveField(5)@JsonKey(name: 'cooking_time')  int cookingTime, @HiveField(6)  List<Map<String, dynamic>> ingredients, @HiveField(7)  List<Map<String, dynamic>> steps, @HiveField(8)@JsonKey(name: 'image_url')  String? imageUrl, @HiveField(9)@JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.authorId,_that.category,_that.cookingTime,_that.ingredients,_that.steps,_that.imageUrl,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String title, @HiveField(2)  String description, @HiveField(3)@JsonKey(name: 'author_id')  String authorId, @HiveField(4)  String category, @HiveField(5)@JsonKey(name: 'cooking_time')  int cookingTime, @HiveField(6)  List<Map<String, dynamic>> ingredients, @HiveField(7)  List<Map<String, dynamic>> steps, @HiveField(8)@JsonKey(name: 'image_url')  String? imageUrl, @HiveField(9)@JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that.id,_that.title,_that.description,_that.authorId,_that.category,_that.cookingTime,_that.ingredients,_that.steps,_that.imageUrl,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String title, @HiveField(2)  String description, @HiveField(3)@JsonKey(name: 'author_id')  String authorId, @HiveField(4)  String category, @HiveField(5)@JsonKey(name: 'cooking_time')  int cookingTime, @HiveField(6)  List<Map<String, dynamic>> ingredients, @HiveField(7)  List<Map<String, dynamic>> steps, @HiveField(8)@JsonKey(name: 'image_url')  String? imageUrl, @HiveField(9)@JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.authorId,_that.category,_that.cookingTime,_that.ingredients,_that.steps,_that.imageUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeModel extends RecipeModel {
  const _RecipeModel({@HiveField(0) required this.id, @HiveField(1) required this.title, @HiveField(2) required this.description, @HiveField(3)@JsonKey(name: 'author_id') required this.authorId, @HiveField(4) required this.category, @HiveField(5)@JsonKey(name: 'cooking_time') required this.cookingTime, @HiveField(6) required final  List<Map<String, dynamic>> ingredients, @HiveField(7) required final  List<Map<String, dynamic>> steps, @HiveField(8)@JsonKey(name: 'image_url') this.imageUrl, @HiveField(9)@JsonKey(name: 'created_at') required this.createdAt}): _ingredients = ingredients,_steps = steps,super._();
  factory _RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String title;
@override@HiveField(2) final  String description;
@override@HiveField(3)@JsonKey(name: 'author_id') final  String authorId;
@override@HiveField(4) final  String category;
@override@HiveField(5)@JsonKey(name: 'cooking_time') final  int cookingTime;
 final  List<Map<String, dynamic>> _ingredients;
@override@HiveField(6) List<Map<String, dynamic>> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<Map<String, dynamic>> _steps;
@override@HiveField(7) List<Map<String, dynamic>> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override@HiveField(8)@JsonKey(name: 'image_url') final  String? imageUrl;
@override@HiveField(9)@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeModelCopyWith<_RecipeModel> get copyWith => __$RecipeModelCopyWithImpl<_RecipeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.category, category) || other.category == category)&&(identical(other.cookingTime, cookingTime) || other.cookingTime == cookingTime)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,authorId,category,cookingTime,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_steps),imageUrl,createdAt);

@override
String toString() {
  return 'RecipeModel(id: $id, title: $title, description: $description, authorId: $authorId, category: $category, cookingTime: $cookingTime, ingredients: $ingredients, steps: $steps, imageUrl: $imageUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecipeModelCopyWith<$Res> implements $RecipeModelCopyWith<$Res> {
  factory _$RecipeModelCopyWith(_RecipeModel value, $Res Function(_RecipeModel) _then) = __$RecipeModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String title,@HiveField(2) String description,@HiveField(3)@JsonKey(name: 'author_id') String authorId,@HiveField(4) String category,@HiveField(5)@JsonKey(name: 'cooking_time') int cookingTime,@HiveField(6) List<Map<String, dynamic>> ingredients,@HiveField(7) List<Map<String, dynamic>> steps,@HiveField(8)@JsonKey(name: 'image_url') String? imageUrl,@HiveField(9)@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$RecipeModelCopyWithImpl<$Res>
    implements _$RecipeModelCopyWith<$Res> {
  __$RecipeModelCopyWithImpl(this._self, this._then);

  final _RecipeModel _self;
  final $Res Function(_RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? authorId = null,Object? category = null,Object? cookingTime = null,Object? ingredients = null,Object? steps = null,Object? imageUrl = freezed,Object? createdAt = null,}) {
  return _then(_RecipeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,cookingTime: null == cookingTime ? _self.cookingTime : cookingTime // ignore: cast_nullable_to_non_nullable
as int,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
