// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_recipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateRecipeState {

 CreateRecipeStatus get status; String get title; String get description; String get category; int get cookingTime; List<Ingredient> get ingredients; List<RecipeStep> get steps; String? get imageUrl; String? get errorMessage;
/// Create a copy of CreateRecipeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRecipeStateCopyWith<CreateRecipeState> get copyWith => _$CreateRecipeStateCopyWithImpl<CreateRecipeState>(this as CreateRecipeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRecipeState&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.cookingTime, cookingTime) || other.cookingTime == cookingTime)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,title,description,category,cookingTime,const DeepCollectionEquality().hash(ingredients),const DeepCollectionEquality().hash(steps),imageUrl,errorMessage);

@override
String toString() {
  return 'CreateRecipeState(status: $status, title: $title, description: $description, category: $category, cookingTime: $cookingTime, ingredients: $ingredients, steps: $steps, imageUrl: $imageUrl, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CreateRecipeStateCopyWith<$Res>  {
  factory $CreateRecipeStateCopyWith(CreateRecipeState value, $Res Function(CreateRecipeState) _then) = _$CreateRecipeStateCopyWithImpl;
@useResult
$Res call({
 CreateRecipeStatus status, String title, String description, String category, int cookingTime, List<Ingredient> ingredients, List<RecipeStep> steps, String? imageUrl, String? errorMessage
});




}
/// @nodoc
class _$CreateRecipeStateCopyWithImpl<$Res>
    implements $CreateRecipeStateCopyWith<$Res> {
  _$CreateRecipeStateCopyWithImpl(this._self, this._then);

  final CreateRecipeState _self;
  final $Res Function(CreateRecipeState) _then;

/// Create a copy of CreateRecipeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? title = null,Object? description = null,Object? category = null,Object? cookingTime = null,Object? ingredients = null,Object? steps = null,Object? imageUrl = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateRecipeStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,cookingTime: null == cookingTime ? _self.cookingTime : cookingTime // ignore: cast_nullable_to_non_nullable
as int,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<Ingredient>,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<RecipeStep>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateRecipeState].
extension CreateRecipeStatePatterns on CreateRecipeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateRecipeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateRecipeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateRecipeState value)  $default,){
final _that = this;
switch (_that) {
case _CreateRecipeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateRecipeState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateRecipeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateRecipeStatus status,  String title,  String description,  String category,  int cookingTime,  List<Ingredient> ingredients,  List<RecipeStep> steps,  String? imageUrl,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateRecipeState() when $default != null:
return $default(_that.status,_that.title,_that.description,_that.category,_that.cookingTime,_that.ingredients,_that.steps,_that.imageUrl,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateRecipeStatus status,  String title,  String description,  String category,  int cookingTime,  List<Ingredient> ingredients,  List<RecipeStep> steps,  String? imageUrl,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreateRecipeState():
return $default(_that.status,_that.title,_that.description,_that.category,_that.cookingTime,_that.ingredients,_that.steps,_that.imageUrl,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateRecipeStatus status,  String title,  String description,  String category,  int cookingTime,  List<Ingredient> ingredients,  List<RecipeStep> steps,  String? imageUrl,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreateRecipeState() when $default != null:
return $default(_that.status,_that.title,_that.description,_that.category,_that.cookingTime,_that.ingredients,_that.steps,_that.imageUrl,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreateRecipeState extends CreateRecipeState {
  const _CreateRecipeState({this.status = CreateRecipeStatus.initial, this.title = '', this.description = '', this.category = 'breakfast', this.cookingTime = 0, final  List<Ingredient> ingredients = const [], final  List<RecipeStep> steps = const [], this.imageUrl, this.errorMessage}): _ingredients = ingredients,_steps = steps,super._();
  

@override@JsonKey() final  CreateRecipeStatus status;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String category;
@override@JsonKey() final  int cookingTime;
 final  List<Ingredient> _ingredients;
@override@JsonKey() List<Ingredient> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

 final  List<RecipeStep> _steps;
@override@JsonKey() List<RecipeStep> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override final  String? imageUrl;
@override final  String? errorMessage;

/// Create a copy of CreateRecipeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateRecipeStateCopyWith<_CreateRecipeState> get copyWith => __$CreateRecipeStateCopyWithImpl<_CreateRecipeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRecipeState&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.cookingTime, cookingTime) || other.cookingTime == cookingTime)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,title,description,category,cookingTime,const DeepCollectionEquality().hash(_ingredients),const DeepCollectionEquality().hash(_steps),imageUrl,errorMessage);

@override
String toString() {
  return 'CreateRecipeState(status: $status, title: $title, description: $description, category: $category, cookingTime: $cookingTime, ingredients: $ingredients, steps: $steps, imageUrl: $imageUrl, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreateRecipeStateCopyWith<$Res> implements $CreateRecipeStateCopyWith<$Res> {
  factory _$CreateRecipeStateCopyWith(_CreateRecipeState value, $Res Function(_CreateRecipeState) _then) = __$CreateRecipeStateCopyWithImpl;
@override @useResult
$Res call({
 CreateRecipeStatus status, String title, String description, String category, int cookingTime, List<Ingredient> ingredients, List<RecipeStep> steps, String? imageUrl, String? errorMessage
});




}
/// @nodoc
class __$CreateRecipeStateCopyWithImpl<$Res>
    implements _$CreateRecipeStateCopyWith<$Res> {
  __$CreateRecipeStateCopyWithImpl(this._self, this._then);

  final _CreateRecipeState _self;
  final $Res Function(_CreateRecipeState) _then;

/// Create a copy of CreateRecipeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? title = null,Object? description = null,Object? category = null,Object? cookingTime = null,Object? ingredients = null,Object? steps = null,Object? imageUrl = freezed,Object? errorMessage = freezed,}) {
  return _then(_CreateRecipeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateRecipeStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,cookingTime: null == cookingTime ? _self.cookingTime : cookingTime // ignore: cast_nullable_to_non_nullable
as int,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<Ingredient>,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<RecipeStep>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
