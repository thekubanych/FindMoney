// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel {

 String get id;@JsonKey(name: 'user_id') String get userId; double get amount; String get category; String? get subcategory; String? get description;@JsonKey(name: 'emotion_before') String? get emotionBefore;@JsonKey(name: 'emotion_after') String? get emotionAfter;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'is_impulsive') bool? get isImpulsive;@JsonKey(name: 'ai_tags') List<String>? get aiTags;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.description, description) || other.description == description)&&(identical(other.emotionBefore, emotionBefore) || other.emotionBefore == emotionBefore)&&(identical(other.emotionAfter, emotionAfter) || other.emotionAfter == emotionAfter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isImpulsive, isImpulsive) || other.isImpulsive == isImpulsive)&&const DeepCollectionEquality().equals(other.aiTags, aiTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,category,subcategory,description,emotionBefore,emotionAfter,createdAt,isImpulsive,const DeepCollectionEquality().hash(aiTags));

@override
String toString() {
  return 'TransactionModel(id: $id, userId: $userId, amount: $amount, category: $category, subcategory: $subcategory, description: $description, emotionBefore: $emotionBefore, emotionAfter: $emotionAfter, createdAt: $createdAt, isImpulsive: $isImpulsive, aiTags: $aiTags)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId, double amount, String category, String? subcategory, String? description,@JsonKey(name: 'emotion_before') String? emotionBefore,@JsonKey(name: 'emotion_after') String? emotionAfter,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'is_impulsive') bool? isImpulsive,@JsonKey(name: 'ai_tags') List<String>? aiTags
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? amount = null,Object? category = null,Object? subcategory = freezed,Object? description = freezed,Object? emotionBefore = freezed,Object? emotionAfter = freezed,Object? createdAt = null,Object? isImpulsive = freezed,Object? aiTags = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emotionBefore: freezed == emotionBefore ? _self.emotionBefore : emotionBefore // ignore: cast_nullable_to_non_nullable
as String?,emotionAfter: freezed == emotionAfter ? _self.emotionAfter : emotionAfter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isImpulsive: freezed == isImpulsive ? _self.isImpulsive : isImpulsive // ignore: cast_nullable_to_non_nullable
as bool?,aiTags: freezed == aiTags ? _self.aiTags : aiTags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId,  double amount,  String category,  String? subcategory,  String? description, @JsonKey(name: 'emotion_before')  String? emotionBefore, @JsonKey(name: 'emotion_after')  String? emotionAfter, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'is_impulsive')  bool? isImpulsive, @JsonKey(name: 'ai_tags')  List<String>? aiTags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt,_that.isImpulsive,_that.aiTags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId,  double amount,  String category,  String? subcategory,  String? description, @JsonKey(name: 'emotion_before')  String? emotionBefore, @JsonKey(name: 'emotion_after')  String? emotionAfter, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'is_impulsive')  bool? isImpulsive, @JsonKey(name: 'ai_tags')  List<String>? aiTags)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.id,_that.userId,_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt,_that.isImpulsive,_that.aiTags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'user_id')  String userId,  double amount,  String category,  String? subcategory,  String? description, @JsonKey(name: 'emotion_before')  String? emotionBefore, @JsonKey(name: 'emotion_after')  String? emotionAfter, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'is_impulsive')  bool? isImpulsive, @JsonKey(name: 'ai_tags')  List<String>? aiTags)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt,_that.isImpulsive,_that.aiTags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionModel implements TransactionModel {
  const _TransactionModel({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.amount, required this.category, this.subcategory, this.description, @JsonKey(name: 'emotion_before') required this.emotionBefore, @JsonKey(name: 'emotion_after') required this.emotionAfter, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'is_impulsive') this.isImpulsive, @JsonKey(name: 'ai_tags') final  List<String>? aiTags}): _aiTags = aiTags;
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override final  double amount;
@override final  String category;
@override final  String? subcategory;
@override final  String? description;
@override@JsonKey(name: 'emotion_before') final  String? emotionBefore;
@override@JsonKey(name: 'emotion_after') final  String? emotionAfter;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'is_impulsive') final  bool? isImpulsive;
 final  List<String>? _aiTags;
@override@JsonKey(name: 'ai_tags') List<String>? get aiTags {
  final value = _aiTags;
  if (value == null) return null;
  if (_aiTags is EqualUnmodifiableListView) return _aiTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.description, description) || other.description == description)&&(identical(other.emotionBefore, emotionBefore) || other.emotionBefore == emotionBefore)&&(identical(other.emotionAfter, emotionAfter) || other.emotionAfter == emotionAfter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isImpulsive, isImpulsive) || other.isImpulsive == isImpulsive)&&const DeepCollectionEquality().equals(other._aiTags, _aiTags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,category,subcategory,description,emotionBefore,emotionAfter,createdAt,isImpulsive,const DeepCollectionEquality().hash(_aiTags));

@override
String toString() {
  return 'TransactionModel(id: $id, userId: $userId, amount: $amount, category: $category, subcategory: $subcategory, description: $description, emotionBefore: $emotionBefore, emotionAfter: $emotionAfter, createdAt: $createdAt, isImpulsive: $isImpulsive, aiTags: $aiTags)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId, double amount, String category, String? subcategory, String? description,@JsonKey(name: 'emotion_before') String? emotionBefore,@JsonKey(name: 'emotion_after') String? emotionAfter,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'is_impulsive') bool? isImpulsive,@JsonKey(name: 'ai_tags') List<String>? aiTags
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? amount = null,Object? category = null,Object? subcategory = freezed,Object? description = freezed,Object? emotionBefore = freezed,Object? emotionAfter = freezed,Object? createdAt = null,Object? isImpulsive = freezed,Object? aiTags = freezed,}) {
  return _then(_TransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emotionBefore: freezed == emotionBefore ? _self.emotionBefore : emotionBefore // ignore: cast_nullable_to_non_nullable
as String?,emotionAfter: freezed == emotionAfter ? _self.emotionAfter : emotionAfter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,isImpulsive: freezed == isImpulsive ? _self.isImpulsive : isImpulsive // ignore: cast_nullable_to_non_nullable
as bool?,aiTags: freezed == aiTags ? _self._aiTags : aiTags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$CreateTransactionDto {

 double get amount; String get category; String? get subcategory; String? get description;@JsonKey(name: 'emotion_before') String? get emotionBefore;@JsonKey(name: 'emotion_after') String? get emotionAfter;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of CreateTransactionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionDtoCopyWith<CreateTransactionDto> get copyWith => _$CreateTransactionDtoCopyWithImpl<CreateTransactionDto>(this as CreateTransactionDto, _$identity);

  /// Serializes this CreateTransactionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.description, description) || other.description == description)&&(identical(other.emotionBefore, emotionBefore) || other.emotionBefore == emotionBefore)&&(identical(other.emotionAfter, emotionAfter) || other.emotionAfter == emotionAfter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,category,subcategory,description,emotionBefore,emotionAfter,createdAt);

@override
String toString() {
  return 'CreateTransactionDto(amount: $amount, category: $category, subcategory: $subcategory, description: $description, emotionBefore: $emotionBefore, emotionAfter: $emotionAfter, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionDtoCopyWith<$Res>  {
  factory $CreateTransactionDtoCopyWith(CreateTransactionDto value, $Res Function(CreateTransactionDto) _then) = _$CreateTransactionDtoCopyWithImpl;
@useResult
$Res call({
 double amount, String category, String? subcategory, String? description,@JsonKey(name: 'emotion_before') String? emotionBefore,@JsonKey(name: 'emotion_after') String? emotionAfter,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$CreateTransactionDtoCopyWithImpl<$Res>
    implements $CreateTransactionDtoCopyWith<$Res> {
  _$CreateTransactionDtoCopyWithImpl(this._self, this._then);

  final CreateTransactionDto _self;
  final $Res Function(CreateTransactionDto) _then;

/// Create a copy of CreateTransactionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? category = null,Object? subcategory = freezed,Object? description = freezed,Object? emotionBefore = freezed,Object? emotionAfter = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emotionBefore: freezed == emotionBefore ? _self.emotionBefore : emotionBefore // ignore: cast_nullable_to_non_nullable
as String?,emotionAfter: freezed == emotionAfter ? _self.emotionAfter : emotionAfter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTransactionDto].
extension CreateTransactionDtoPatterns on CreateTransactionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransactionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransactionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransactionDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransactionDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String category,  String? subcategory,  String? description, @JsonKey(name: 'emotion_before')  String? emotionBefore, @JsonKey(name: 'emotion_after')  String? emotionAfter, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTransactionDto() when $default != null:
return $default(_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String category,  String? subcategory,  String? description, @JsonKey(name: 'emotion_before')  String? emotionBefore, @JsonKey(name: 'emotion_after')  String? emotionAfter, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionDto():
return $default(_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String category,  String? subcategory,  String? description, @JsonKey(name: 'emotion_before')  String? emotionBefore, @JsonKey(name: 'emotion_after')  String? emotionAfter, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionDto() when $default != null:
return $default(_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTransactionDto implements CreateTransactionDto {
  const _CreateTransactionDto({required this.amount, required this.category, this.subcategory, this.description, @JsonKey(name: 'emotion_before') this.emotionBefore, @JsonKey(name: 'emotion_after') this.emotionAfter, @JsonKey(name: 'created_at') this.createdAt});
  factory _CreateTransactionDto.fromJson(Map<String, dynamic> json) => _$CreateTransactionDtoFromJson(json);

@override final  double amount;
@override final  String category;
@override final  String? subcategory;
@override final  String? description;
@override@JsonKey(name: 'emotion_before') final  String? emotionBefore;
@override@JsonKey(name: 'emotion_after') final  String? emotionAfter;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of CreateTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionDtoCopyWith<_CreateTransactionDto> get copyWith => __$CreateTransactionDtoCopyWithImpl<_CreateTransactionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTransactionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.description, description) || other.description == description)&&(identical(other.emotionBefore, emotionBefore) || other.emotionBefore == emotionBefore)&&(identical(other.emotionAfter, emotionAfter) || other.emotionAfter == emotionAfter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,category,subcategory,description,emotionBefore,emotionAfter,createdAt);

@override
String toString() {
  return 'CreateTransactionDto(amount: $amount, category: $category, subcategory: $subcategory, description: $description, emotionBefore: $emotionBefore, emotionAfter: $emotionAfter, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionDtoCopyWith<$Res> implements $CreateTransactionDtoCopyWith<$Res> {
  factory _$CreateTransactionDtoCopyWith(_CreateTransactionDto value, $Res Function(_CreateTransactionDto) _then) = __$CreateTransactionDtoCopyWithImpl;
@override @useResult
$Res call({
 double amount, String category, String? subcategory, String? description,@JsonKey(name: 'emotion_before') String? emotionBefore,@JsonKey(name: 'emotion_after') String? emotionAfter,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$CreateTransactionDtoCopyWithImpl<$Res>
    implements _$CreateTransactionDtoCopyWith<$Res> {
  __$CreateTransactionDtoCopyWithImpl(this._self, this._then);

  final _CreateTransactionDto _self;
  final $Res Function(_CreateTransactionDto) _then;

/// Create a copy of CreateTransactionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? category = null,Object? subcategory = freezed,Object? description = freezed,Object? emotionBefore = freezed,Object? emotionAfter = freezed,Object? createdAt = freezed,}) {
  return _then(_CreateTransactionDto(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emotionBefore: freezed == emotionBefore ? _self.emotionBefore : emotionBefore // ignore: cast_nullable_to_non_nullable
as String?,emotionAfter: freezed == emotionAfter ? _self.emotionAfter : emotionAfter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TransactionStatsModel {

@JsonKey(name: 'total_income') double get totalIncome;@JsonKey(name: 'total_expenses') double get totalExpenses;@JsonKey(name: 'savings_rate') double get savingsRate;@JsonKey(name: 'impulsive_spending_total') double get impulsiveSpendingTotal;@JsonKey(name: 'by_category') Map<String, double> get byCategory;@JsonKey(name: 'by_emotion') Map<String, double> get byEmotion;
/// Create a copy of TransactionStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStatsModelCopyWith<TransactionStatsModel> get copyWith => _$TransactionStatsModelCopyWithImpl<TransactionStatsModel>(this as TransactionStatsModel, _$identity);

  /// Serializes this TransactionStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStatsModel&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.savingsRate, savingsRate) || other.savingsRate == savingsRate)&&(identical(other.impulsiveSpendingTotal, impulsiveSpendingTotal) || other.impulsiveSpendingTotal == impulsiveSpendingTotal)&&const DeepCollectionEquality().equals(other.byCategory, byCategory)&&const DeepCollectionEquality().equals(other.byEmotion, byEmotion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalIncome,totalExpenses,savingsRate,impulsiveSpendingTotal,const DeepCollectionEquality().hash(byCategory),const DeepCollectionEquality().hash(byEmotion));

@override
String toString() {
  return 'TransactionStatsModel(totalIncome: $totalIncome, totalExpenses: $totalExpenses, savingsRate: $savingsRate, impulsiveSpendingTotal: $impulsiveSpendingTotal, byCategory: $byCategory, byEmotion: $byEmotion)';
}


}

/// @nodoc
abstract mixin class $TransactionStatsModelCopyWith<$Res>  {
  factory $TransactionStatsModelCopyWith(TransactionStatsModel value, $Res Function(TransactionStatsModel) _then) = _$TransactionStatsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_income') double totalIncome,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'savings_rate') double savingsRate,@JsonKey(name: 'impulsive_spending_total') double impulsiveSpendingTotal,@JsonKey(name: 'by_category') Map<String, double> byCategory,@JsonKey(name: 'by_emotion') Map<String, double> byEmotion
});




}
/// @nodoc
class _$TransactionStatsModelCopyWithImpl<$Res>
    implements $TransactionStatsModelCopyWith<$Res> {
  _$TransactionStatsModelCopyWithImpl(this._self, this._then);

  final TransactionStatsModel _self;
  final $Res Function(TransactionStatsModel) _then;

/// Create a copy of TransactionStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalIncome = null,Object? totalExpenses = null,Object? savingsRate = null,Object? impulsiveSpendingTotal = null,Object? byCategory = null,Object? byEmotion = null,}) {
  return _then(_self.copyWith(
totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,savingsRate: null == savingsRate ? _self.savingsRate : savingsRate // ignore: cast_nullable_to_non_nullable
as double,impulsiveSpendingTotal: null == impulsiveSpendingTotal ? _self.impulsiveSpendingTotal : impulsiveSpendingTotal // ignore: cast_nullable_to_non_nullable
as double,byCategory: null == byCategory ? _self.byCategory : byCategory // ignore: cast_nullable_to_non_nullable
as Map<String, double>,byEmotion: null == byEmotion ? _self.byEmotion : byEmotion // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionStatsModel].
extension TransactionStatsModelPatterns on TransactionStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'savings_rate')  double savingsRate, @JsonKey(name: 'impulsive_spending_total')  double impulsiveSpendingTotal, @JsonKey(name: 'by_category')  Map<String, double> byCategory, @JsonKey(name: 'by_emotion')  Map<String, double> byEmotion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionStatsModel() when $default != null:
return $default(_that.totalIncome,_that.totalExpenses,_that.savingsRate,_that.impulsiveSpendingTotal,_that.byCategory,_that.byEmotion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'savings_rate')  double savingsRate, @JsonKey(name: 'impulsive_spending_total')  double impulsiveSpendingTotal, @JsonKey(name: 'by_category')  Map<String, double> byCategory, @JsonKey(name: 'by_emotion')  Map<String, double> byEmotion)  $default,) {final _that = this;
switch (_that) {
case _TransactionStatsModel():
return $default(_that.totalIncome,_that.totalExpenses,_that.savingsRate,_that.impulsiveSpendingTotal,_that.byCategory,_that.byEmotion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'savings_rate')  double savingsRate, @JsonKey(name: 'impulsive_spending_total')  double impulsiveSpendingTotal, @JsonKey(name: 'by_category')  Map<String, double> byCategory, @JsonKey(name: 'by_emotion')  Map<String, double> byEmotion)?  $default,) {final _that = this;
switch (_that) {
case _TransactionStatsModel() when $default != null:
return $default(_that.totalIncome,_that.totalExpenses,_that.savingsRate,_that.impulsiveSpendingTotal,_that.byCategory,_that.byEmotion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionStatsModel implements TransactionStatsModel {
  const _TransactionStatsModel({@JsonKey(name: 'total_income') required this.totalIncome, @JsonKey(name: 'total_expenses') required this.totalExpenses, @JsonKey(name: 'savings_rate') required this.savingsRate, @JsonKey(name: 'impulsive_spending_total') required this.impulsiveSpendingTotal, @JsonKey(name: 'by_category') required final  Map<String, double> byCategory, @JsonKey(name: 'by_emotion') required final  Map<String, double> byEmotion}): _byCategory = byCategory,_byEmotion = byEmotion;
  factory _TransactionStatsModel.fromJson(Map<String, dynamic> json) => _$TransactionStatsModelFromJson(json);

@override@JsonKey(name: 'total_income') final  double totalIncome;
@override@JsonKey(name: 'total_expenses') final  double totalExpenses;
@override@JsonKey(name: 'savings_rate') final  double savingsRate;
@override@JsonKey(name: 'impulsive_spending_total') final  double impulsiveSpendingTotal;
 final  Map<String, double> _byCategory;
@override@JsonKey(name: 'by_category') Map<String, double> get byCategory {
  if (_byCategory is EqualUnmodifiableMapView) return _byCategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byCategory);
}

 final  Map<String, double> _byEmotion;
@override@JsonKey(name: 'by_emotion') Map<String, double> get byEmotion {
  if (_byEmotion is EqualUnmodifiableMapView) return _byEmotion;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byEmotion);
}


/// Create a copy of TransactionStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStatsModelCopyWith<_TransactionStatsModel> get copyWith => __$TransactionStatsModelCopyWithImpl<_TransactionStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionStatsModel&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.savingsRate, savingsRate) || other.savingsRate == savingsRate)&&(identical(other.impulsiveSpendingTotal, impulsiveSpendingTotal) || other.impulsiveSpendingTotal == impulsiveSpendingTotal)&&const DeepCollectionEquality().equals(other._byCategory, _byCategory)&&const DeepCollectionEquality().equals(other._byEmotion, _byEmotion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalIncome,totalExpenses,savingsRate,impulsiveSpendingTotal,const DeepCollectionEquality().hash(_byCategory),const DeepCollectionEquality().hash(_byEmotion));

@override
String toString() {
  return 'TransactionStatsModel(totalIncome: $totalIncome, totalExpenses: $totalExpenses, savingsRate: $savingsRate, impulsiveSpendingTotal: $impulsiveSpendingTotal, byCategory: $byCategory, byEmotion: $byEmotion)';
}


}

/// @nodoc
abstract mixin class _$TransactionStatsModelCopyWith<$Res> implements $TransactionStatsModelCopyWith<$Res> {
  factory _$TransactionStatsModelCopyWith(_TransactionStatsModel value, $Res Function(_TransactionStatsModel) _then) = __$TransactionStatsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_income') double totalIncome,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'savings_rate') double savingsRate,@JsonKey(name: 'impulsive_spending_total') double impulsiveSpendingTotal,@JsonKey(name: 'by_category') Map<String, double> byCategory,@JsonKey(name: 'by_emotion') Map<String, double> byEmotion
});




}
/// @nodoc
class __$TransactionStatsModelCopyWithImpl<$Res>
    implements _$TransactionStatsModelCopyWith<$Res> {
  __$TransactionStatsModelCopyWithImpl(this._self, this._then);

  final _TransactionStatsModel _self;
  final $Res Function(_TransactionStatsModel) _then;

/// Create a copy of TransactionStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalIncome = null,Object? totalExpenses = null,Object? savingsRate = null,Object? impulsiveSpendingTotal = null,Object? byCategory = null,Object? byEmotion = null,}) {
  return _then(_TransactionStatsModel(
totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,savingsRate: null == savingsRate ? _self.savingsRate : savingsRate // ignore: cast_nullable_to_non_nullable
as double,impulsiveSpendingTotal: null == impulsiveSpendingTotal ? _self.impulsiveSpendingTotal : impulsiveSpendingTotal // ignore: cast_nullable_to_non_nullable
as double,byCategory: null == byCategory ? _self._byCategory : byCategory // ignore: cast_nullable_to_non_nullable
as Map<String, double>,byEmotion: null == byEmotion ? _self._byEmotion : byEmotion // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}

// dart format on
