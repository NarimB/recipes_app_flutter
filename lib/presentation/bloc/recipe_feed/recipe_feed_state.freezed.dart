// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipeFeedState {

 RecipeFeedStatus get status; List<Recipe> get recipes; String? get errorMessage; String get searchQuery; String? get selectedCategory;
/// Create a copy of RecipeFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeFeedStateCopyWith<RecipeFeedState> get copyWith => _$RecipeFeedStateCopyWithImpl<RecipeFeedState>(this as RecipeFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeFeedState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.recipes, recipes)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(recipes),errorMessage,searchQuery,selectedCategory);

@override
String toString() {
  return 'RecipeFeedState(status: $status, recipes: $recipes, errorMessage: $errorMessage, searchQuery: $searchQuery, selectedCategory: $selectedCategory)';
}


}

/// @nodoc
abstract mixin class $RecipeFeedStateCopyWith<$Res>  {
  factory $RecipeFeedStateCopyWith(RecipeFeedState value, $Res Function(RecipeFeedState) _then) = _$RecipeFeedStateCopyWithImpl;
@useResult
$Res call({
 RecipeFeedStatus status, List<Recipe> recipes, String? errorMessage, String searchQuery, String? selectedCategory
});




}
/// @nodoc
class _$RecipeFeedStateCopyWithImpl<$Res>
    implements $RecipeFeedStateCopyWith<$Res> {
  _$RecipeFeedStateCopyWithImpl(this._self, this._then);

  final RecipeFeedState _self;
  final $Res Function(RecipeFeedState) _then;

/// Create a copy of RecipeFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? recipes = null,Object? errorMessage = freezed,Object? searchQuery = null,Object? selectedCategory = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecipeFeedStatus,recipes: null == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeFeedState].
extension RecipeFeedStatePatterns on RecipeFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeFeedState value)  $default,){
final _that = this;
switch (_that) {
case _RecipeFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecipeFeedStatus status,  List<Recipe> recipes,  String? errorMessage,  String searchQuery,  String? selectedCategory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeFeedState() when $default != null:
return $default(_that.status,_that.recipes,_that.errorMessage,_that.searchQuery,_that.selectedCategory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecipeFeedStatus status,  List<Recipe> recipes,  String? errorMessage,  String searchQuery,  String? selectedCategory)  $default,) {final _that = this;
switch (_that) {
case _RecipeFeedState():
return $default(_that.status,_that.recipes,_that.errorMessage,_that.searchQuery,_that.selectedCategory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecipeFeedStatus status,  List<Recipe> recipes,  String? errorMessage,  String searchQuery,  String? selectedCategory)?  $default,) {final _that = this;
switch (_that) {
case _RecipeFeedState() when $default != null:
return $default(_that.status,_that.recipes,_that.errorMessage,_that.searchQuery,_that.selectedCategory);case _:
  return null;

}
}

}

/// @nodoc


class _RecipeFeedState extends RecipeFeedState {
  const _RecipeFeedState({this.status = RecipeFeedStatus.initial, final  List<Recipe> recipes = const [], this.errorMessage, this.searchQuery = '', this.selectedCategory}): _recipes = recipes,super._();
  

@override@JsonKey() final  RecipeFeedStatus status;
 final  List<Recipe> _recipes;
@override@JsonKey() List<Recipe> get recipes {
  if (_recipes is EqualUnmodifiableListView) return _recipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipes);
}

@override final  String? errorMessage;
@override@JsonKey() final  String searchQuery;
@override final  String? selectedCategory;

/// Create a copy of RecipeFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeFeedStateCopyWith<_RecipeFeedState> get copyWith => __$RecipeFeedStateCopyWithImpl<_RecipeFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeFeedState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._recipes, _recipes)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_recipes),errorMessage,searchQuery,selectedCategory);

@override
String toString() {
  return 'RecipeFeedState(status: $status, recipes: $recipes, errorMessage: $errorMessage, searchQuery: $searchQuery, selectedCategory: $selectedCategory)';
}


}

/// @nodoc
abstract mixin class _$RecipeFeedStateCopyWith<$Res> implements $RecipeFeedStateCopyWith<$Res> {
  factory _$RecipeFeedStateCopyWith(_RecipeFeedState value, $Res Function(_RecipeFeedState) _then) = __$RecipeFeedStateCopyWithImpl;
@override @useResult
$Res call({
 RecipeFeedStatus status, List<Recipe> recipes, String? errorMessage, String searchQuery, String? selectedCategory
});




}
/// @nodoc
class __$RecipeFeedStateCopyWithImpl<$Res>
    implements _$RecipeFeedStateCopyWith<$Res> {
  __$RecipeFeedStateCopyWithImpl(this._self, this._then);

  final _RecipeFeedState _self;
  final $Res Function(_RecipeFeedState) _then;

/// Create a copy of RecipeFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? recipes = null,Object? errorMessage = freezed,Object? searchQuery = null,Object? selectedCategory = freezed,}) {
  return _then(_RecipeFeedState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecipeFeedStatus,recipes: null == recipes ? _self._recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
