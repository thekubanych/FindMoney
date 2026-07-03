// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Transaction {

 String get id; String get userId; double get amount; TransactionCategory get category; String? get subcategory; String? get description; String? get emotionBefore; String? get emotionAfter; DateTime get createdAt; bool? get isImpulsive; List<String>? get aiTags;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.description, description) || other.description == description)&&(identical(other.emotionBefore, emotionBefore) || other.emotionBefore == emotionBefore)&&(identical(other.emotionAfter, emotionAfter) || other.emotionAfter == emotionAfter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isImpulsive, isImpulsive) || other.isImpulsive == isImpulsive)&&const DeepCollectionEquality().equals(other.aiTags, aiTags));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,category,subcategory,description,emotionBefore,emotionAfter,createdAt,isImpulsive,const DeepCollectionEquality().hash(aiTags));

@override
String toString() {
  return 'Transaction(id: $id, userId: $userId, amount: $amount, category: $category, subcategory: $subcategory, description: $description, emotionBefore: $emotionBefore, emotionAfter: $emotionAfter, createdAt: $createdAt, isImpulsive: $isImpulsive, aiTags: $aiTags)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 String id, String userId, double amount, TransactionCategory category, String? subcategory, String? description, String? emotionBefore, String? emotionAfter, DateTime createdAt, bool? isImpulsive, List<String>? aiTags
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? amount = null,Object? category = null,Object? subcategory = freezed,Object? description = freezed,Object? emotionBefore = freezed,Object? emotionAfter = freezed,Object? createdAt = null,Object? isImpulsive = freezed,Object? aiTags = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emotionBefore: freezed == emotionBefore ? _self.emotionBefore : emotionBefore // ignore: cast_nullable_to_non_nullable
as String?,emotionAfter: freezed == emotionAfter ? _self.emotionAfter : emotionAfter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isImpulsive: freezed == isImpulsive ? _self.isImpulsive : isImpulsive // ignore: cast_nullable_to_non_nullable
as bool?,aiTags: freezed == aiTags ? _self.aiTags : aiTags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  double amount,  TransactionCategory category,  String? subcategory,  String? description,  String? emotionBefore,  String? emotionAfter,  DateTime createdAt,  bool? isImpulsive,  List<String>? aiTags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  double amount,  TransactionCategory category,  String? subcategory,  String? description,  String? emotionBefore,  String? emotionAfter,  DateTime createdAt,  bool? isImpulsive,  List<String>? aiTags)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  double amount,  TransactionCategory category,  String? subcategory,  String? description,  String? emotionBefore,  String? emotionAfter,  DateTime createdAt,  bool? isImpulsive,  List<String>? aiTags)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.category,_that.subcategory,_that.description,_that.emotionBefore,_that.emotionAfter,_that.createdAt,_that.isImpulsive,_that.aiTags);case _:
  return null;

}
}

}

/// @nodoc


class _Transaction implements Transaction {
  const _Transaction({required this.id, required this.userId, required this.amount, required this.category, this.subcategory, this.description, required this.emotionBefore, required this.emotionAfter, required this.createdAt, this.isImpulsive, final  List<String>? aiTags}): _aiTags = aiTags;
  

@override final  String id;
@override final  String userId;
@override final  double amount;
@override final  TransactionCategory category;
@override final  String? subcategory;
@override final  String? description;
@override final  String? emotionBefore;
@override final  String? emotionAfter;
@override final  DateTime createdAt;
@override final  bool? isImpulsive;
 final  List<String>? _aiTags;
@override List<String>? get aiTags {
  final value = _aiTags;
  if (value == null) return null;
  if (_aiTags is EqualUnmodifiableListView) return _aiTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.category, category) || other.category == category)&&(identical(other.subcategory, subcategory) || other.subcategory == subcategory)&&(identical(other.description, description) || other.description == description)&&(identical(other.emotionBefore, emotionBefore) || other.emotionBefore == emotionBefore)&&(identical(other.emotionAfter, emotionAfter) || other.emotionAfter == emotionAfter)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isImpulsive, isImpulsive) || other.isImpulsive == isImpulsive)&&const DeepCollectionEquality().equals(other._aiTags, _aiTags));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,category,subcategory,description,emotionBefore,emotionAfter,createdAt,isImpulsive,const DeepCollectionEquality().hash(_aiTags));

@override
String toString() {
  return 'Transaction(id: $id, userId: $userId, amount: $amount, category: $category, subcategory: $subcategory, description: $description, emotionBefore: $emotionBefore, emotionAfter: $emotionAfter, createdAt: $createdAt, isImpulsive: $isImpulsive, aiTags: $aiTags)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, double amount, TransactionCategory category, String? subcategory, String? description, String? emotionBefore, String? emotionAfter, DateTime createdAt, bool? isImpulsive, List<String>? aiTags
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? amount = null,Object? category = null,Object? subcategory = freezed,Object? description = freezed,Object? emotionBefore = freezed,Object? emotionAfter = freezed,Object? createdAt = null,Object? isImpulsive = freezed,Object? aiTags = freezed,}) {
  return _then(_Transaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,subcategory: freezed == subcategory ? _self.subcategory : subcategory // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,emotionBefore: freezed == emotionBefore ? _self.emotionBefore : emotionBefore // ignore: cast_nullable_to_non_nullable
as String?,emotionAfter: freezed == emotionAfter ? _self.emotionAfter : emotionAfter // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,isImpulsive: freezed == isImpulsive ? _self.isImpulsive : isImpulsive // ignore: cast_nullable_to_non_nullable
as bool?,aiTags: freezed == aiTags ? _self._aiTags : aiTags // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$TransactionStats {

 double get totalIncome; double get totalExpenses; double get savingsRate; double get impulsiveSpendingTotal; Map<String, double> get byCategory; Map<String, double> get byEmotion;
/// Create a copy of TransactionStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStatsCopyWith<TransactionStats> get copyWith => _$TransactionStatsCopyWithImpl<TransactionStats>(this as TransactionStats, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionStats&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.savingsRate, savingsRate) || other.savingsRate == savingsRate)&&(identical(other.impulsiveSpendingTotal, impulsiveSpendingTotal) || other.impulsiveSpendingTotal == impulsiveSpendingTotal)&&const DeepCollectionEquality().equals(other.byCategory, byCategory)&&const DeepCollectionEquality().equals(other.byEmotion, byEmotion));
}


@override
int get hashCode => Object.hash(runtimeType,totalIncome,totalExpenses,savingsRate,impulsiveSpendingTotal,const DeepCollectionEquality().hash(byCategory),const DeepCollectionEquality().hash(byEmotion));

@override
String toString() {
  return 'TransactionStats(totalIncome: $totalIncome, totalExpenses: $totalExpenses, savingsRate: $savingsRate, impulsiveSpendingTotal: $impulsiveSpendingTotal, byCategory: $byCategory, byEmotion: $byEmotion)';
}


}

/// @nodoc
abstract mixin class $TransactionStatsCopyWith<$Res>  {
  factory $TransactionStatsCopyWith(TransactionStats value, $Res Function(TransactionStats) _then) = _$TransactionStatsCopyWithImpl;
@useResult
$Res call({
 double totalIncome, double totalExpenses, double savingsRate, double impulsiveSpendingTotal, Map<String, double> byCategory, Map<String, double> byEmotion
});




}
/// @nodoc
class _$TransactionStatsCopyWithImpl<$Res>
    implements $TransactionStatsCopyWith<$Res> {
  _$TransactionStatsCopyWithImpl(this._self, this._then);

  final TransactionStats _self;
  final $Res Function(TransactionStats) _then;

/// Create a copy of TransactionStats
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


/// Adds pattern-matching-related methods to [TransactionStats].
extension TransactionStatsPatterns on TransactionStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionStats value)  $default,){
final _that = this;
switch (_that) {
case _TransactionStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionStats value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalIncome,  double totalExpenses,  double savingsRate,  double impulsiveSpendingTotal,  Map<String, double> byCategory,  Map<String, double> byEmotion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionStats() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalIncome,  double totalExpenses,  double savingsRate,  double impulsiveSpendingTotal,  Map<String, double> byCategory,  Map<String, double> byEmotion)  $default,) {final _that = this;
switch (_that) {
case _TransactionStats():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalIncome,  double totalExpenses,  double savingsRate,  double impulsiveSpendingTotal,  Map<String, double> byCategory,  Map<String, double> byEmotion)?  $default,) {final _that = this;
switch (_that) {
case _TransactionStats() when $default != null:
return $default(_that.totalIncome,_that.totalExpenses,_that.savingsRate,_that.impulsiveSpendingTotal,_that.byCategory,_that.byEmotion);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionStats implements TransactionStats {
  const _TransactionStats({required this.totalIncome, required this.totalExpenses, required this.savingsRate, required this.impulsiveSpendingTotal, required final  Map<String, double> byCategory, required final  Map<String, double> byEmotion}): _byCategory = byCategory,_byEmotion = byEmotion;
  

@override final  double totalIncome;
@override final  double totalExpenses;
@override final  double savingsRate;
@override final  double impulsiveSpendingTotal;
 final  Map<String, double> _byCategory;
@override Map<String, double> get byCategory {
  if (_byCategory is EqualUnmodifiableMapView) return _byCategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byCategory);
}

 final  Map<String, double> _byEmotion;
@override Map<String, double> get byEmotion {
  if (_byEmotion is EqualUnmodifiableMapView) return _byEmotion;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_byEmotion);
}


/// Create a copy of TransactionStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStatsCopyWith<_TransactionStats> get copyWith => __$TransactionStatsCopyWithImpl<_TransactionStats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionStats&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.savingsRate, savingsRate) || other.savingsRate == savingsRate)&&(identical(other.impulsiveSpendingTotal, impulsiveSpendingTotal) || other.impulsiveSpendingTotal == impulsiveSpendingTotal)&&const DeepCollectionEquality().equals(other._byCategory, _byCategory)&&const DeepCollectionEquality().equals(other._byEmotion, _byEmotion));
}


@override
int get hashCode => Object.hash(runtimeType,totalIncome,totalExpenses,savingsRate,impulsiveSpendingTotal,const DeepCollectionEquality().hash(_byCategory),const DeepCollectionEquality().hash(_byEmotion));

@override
String toString() {
  return 'TransactionStats(totalIncome: $totalIncome, totalExpenses: $totalExpenses, savingsRate: $savingsRate, impulsiveSpendingTotal: $impulsiveSpendingTotal, byCategory: $byCategory, byEmotion: $byEmotion)';
}


}

/// @nodoc
abstract mixin class _$TransactionStatsCopyWith<$Res> implements $TransactionStatsCopyWith<$Res> {
  factory _$TransactionStatsCopyWith(_TransactionStats value, $Res Function(_TransactionStats) _then) = __$TransactionStatsCopyWithImpl;
@override @useResult
$Res call({
 double totalIncome, double totalExpenses, double savingsRate, double impulsiveSpendingTotal, Map<String, double> byCategory, Map<String, double> byEmotion
});




}
/// @nodoc
class __$TransactionStatsCopyWithImpl<$Res>
    implements _$TransactionStatsCopyWith<$Res> {
  __$TransactionStatsCopyWithImpl(this._self, this._then);

  final _TransactionStats _self;
  final $Res Function(_TransactionStats) _then;

/// Create a copy of TransactionStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalIncome = null,Object? totalExpenses = null,Object? savingsRate = null,Object? impulsiveSpendingTotal = null,Object? byCategory = null,Object? byEmotion = null,}) {
  return _then(_TransactionStats(
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
