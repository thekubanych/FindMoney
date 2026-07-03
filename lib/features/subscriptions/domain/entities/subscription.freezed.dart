// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionStatus {

 String get planType; String get status; DateTime? get expiresAt; String? get store; bool? get willRenew;
/// Create a copy of SubscriptionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionStatusCopyWith<SubscriptionStatus> get copyWith => _$SubscriptionStatusCopyWithImpl<SubscriptionStatus>(this as SubscriptionStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionStatus&&(identical(other.planType, planType) || other.planType == planType)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.store, store) || other.store == store)&&(identical(other.willRenew, willRenew) || other.willRenew == willRenew));
}


@override
int get hashCode => Object.hash(runtimeType,planType,status,expiresAt,store,willRenew);

@override
String toString() {
  return 'SubscriptionStatus(planType: $planType, status: $status, expiresAt: $expiresAt, store: $store, willRenew: $willRenew)';
}


}

/// @nodoc
abstract mixin class $SubscriptionStatusCopyWith<$Res>  {
  factory $SubscriptionStatusCopyWith(SubscriptionStatus value, $Res Function(SubscriptionStatus) _then) = _$SubscriptionStatusCopyWithImpl;
@useResult
$Res call({
 String planType, String status, DateTime? expiresAt, String? store, bool? willRenew
});




}
/// @nodoc
class _$SubscriptionStatusCopyWithImpl<$Res>
    implements $SubscriptionStatusCopyWith<$Res> {
  _$SubscriptionStatusCopyWithImpl(this._self, this._then);

  final SubscriptionStatus _self;
  final $Res Function(SubscriptionStatus) _then;

/// Create a copy of SubscriptionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? planType = null,Object? status = null,Object? expiresAt = freezed,Object? store = freezed,Object? willRenew = freezed,}) {
  return _then(_self.copyWith(
planType: null == planType ? _self.planType : planType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as String?,willRenew: freezed == willRenew ? _self.willRenew : willRenew // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionStatus].
extension SubscriptionStatusPatterns on SubscriptionStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionStatus value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionStatus value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String planType,  String status,  DateTime? expiresAt,  String? store,  bool? willRenew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionStatus() when $default != null:
return $default(_that.planType,_that.status,_that.expiresAt,_that.store,_that.willRenew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String planType,  String status,  DateTime? expiresAt,  String? store,  bool? willRenew)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionStatus():
return $default(_that.planType,_that.status,_that.expiresAt,_that.store,_that.willRenew);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String planType,  String status,  DateTime? expiresAt,  String? store,  bool? willRenew)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionStatus() when $default != null:
return $default(_that.planType,_that.status,_that.expiresAt,_that.store,_that.willRenew);case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionStatus implements SubscriptionStatus {
  const _SubscriptionStatus({required this.planType, required this.status, this.expiresAt, this.store, this.willRenew});
  

@override final  String planType;
@override final  String status;
@override final  DateTime? expiresAt;
@override final  String? store;
@override final  bool? willRenew;

/// Create a copy of SubscriptionStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionStatusCopyWith<_SubscriptionStatus> get copyWith => __$SubscriptionStatusCopyWithImpl<_SubscriptionStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionStatus&&(identical(other.planType, planType) || other.planType == planType)&&(identical(other.status, status) || other.status == status)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.store, store) || other.store == store)&&(identical(other.willRenew, willRenew) || other.willRenew == willRenew));
}


@override
int get hashCode => Object.hash(runtimeType,planType,status,expiresAt,store,willRenew);

@override
String toString() {
  return 'SubscriptionStatus(planType: $planType, status: $status, expiresAt: $expiresAt, store: $store, willRenew: $willRenew)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionStatusCopyWith<$Res> implements $SubscriptionStatusCopyWith<$Res> {
  factory _$SubscriptionStatusCopyWith(_SubscriptionStatus value, $Res Function(_SubscriptionStatus) _then) = __$SubscriptionStatusCopyWithImpl;
@override @useResult
$Res call({
 String planType, String status, DateTime? expiresAt, String? store, bool? willRenew
});




}
/// @nodoc
class __$SubscriptionStatusCopyWithImpl<$Res>
    implements _$SubscriptionStatusCopyWith<$Res> {
  __$SubscriptionStatusCopyWithImpl(this._self, this._then);

  final _SubscriptionStatus _self;
  final $Res Function(_SubscriptionStatus) _then;

/// Create a copy of SubscriptionStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? planType = null,Object? status = null,Object? expiresAt = freezed,Object? store = freezed,Object? willRenew = freezed,}) {
  return _then(_SubscriptionStatus(
planType: null == planType ? _self.planType : planType // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as String?,willRenew: freezed == willRenew ? _self.willRenew : willRenew // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$PlanOption {

 String get id; String get name; double get monthlyPrice; List<String> get features; bool get isPopular;
/// Create a copy of PlanOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanOptionCopyWith<PlanOption> get copyWith => _$PlanOptionCopyWithImpl<PlanOption>(this as PlanOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.monthlyPrice, monthlyPrice) || other.monthlyPrice == monthlyPrice)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,monthlyPrice,const DeepCollectionEquality().hash(features),isPopular);

@override
String toString() {
  return 'PlanOption(id: $id, name: $name, monthlyPrice: $monthlyPrice, features: $features, isPopular: $isPopular)';
}


}

/// @nodoc
abstract mixin class $PlanOptionCopyWith<$Res>  {
  factory $PlanOptionCopyWith(PlanOption value, $Res Function(PlanOption) _then) = _$PlanOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, double monthlyPrice, List<String> features, bool isPopular
});




}
/// @nodoc
class _$PlanOptionCopyWithImpl<$Res>
    implements $PlanOptionCopyWith<$Res> {
  _$PlanOptionCopyWithImpl(this._self, this._then);

  final PlanOption _self;
  final $Res Function(PlanOption) _then;

/// Create a copy of PlanOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? monthlyPrice = null,Object? features = null,Object? isPopular = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,monthlyPrice: null == monthlyPrice ? _self.monthlyPrice : monthlyPrice // ignore: cast_nullable_to_non_nullable
as double,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanOption].
extension PlanOptionPatterns on PlanOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanOption value)  $default,){
final _that = this;
switch (_that) {
case _PlanOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanOption value)?  $default,){
final _that = this;
switch (_that) {
case _PlanOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double monthlyPrice,  List<String> features,  bool isPopular)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanOption() when $default != null:
return $default(_that.id,_that.name,_that.monthlyPrice,_that.features,_that.isPopular);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double monthlyPrice,  List<String> features,  bool isPopular)  $default,) {final _that = this;
switch (_that) {
case _PlanOption():
return $default(_that.id,_that.name,_that.monthlyPrice,_that.features,_that.isPopular);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double monthlyPrice,  List<String> features,  bool isPopular)?  $default,) {final _that = this;
switch (_that) {
case _PlanOption() when $default != null:
return $default(_that.id,_that.name,_that.monthlyPrice,_that.features,_that.isPopular);case _:
  return null;

}
}

}

/// @nodoc


class _PlanOption implements PlanOption {
  const _PlanOption({required this.id, required this.name, required this.monthlyPrice, required final  List<String> features, required this.isPopular}): _features = features;
  

@override final  String id;
@override final  String name;
@override final  double monthlyPrice;
 final  List<String> _features;
@override List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override final  bool isPopular;

/// Create a copy of PlanOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanOptionCopyWith<_PlanOption> get copyWith => __$PlanOptionCopyWithImpl<_PlanOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.monthlyPrice, monthlyPrice) || other.monthlyPrice == monthlyPrice)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,monthlyPrice,const DeepCollectionEquality().hash(_features),isPopular);

@override
String toString() {
  return 'PlanOption(id: $id, name: $name, monthlyPrice: $monthlyPrice, features: $features, isPopular: $isPopular)';
}


}

/// @nodoc
abstract mixin class _$PlanOptionCopyWith<$Res> implements $PlanOptionCopyWith<$Res> {
  factory _$PlanOptionCopyWith(_PlanOption value, $Res Function(_PlanOption) _then) = __$PlanOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double monthlyPrice, List<String> features, bool isPopular
});




}
/// @nodoc
class __$PlanOptionCopyWithImpl<$Res>
    implements _$PlanOptionCopyWith<$Res> {
  __$PlanOptionCopyWithImpl(this._self, this._then);

  final _PlanOption _self;
  final $Res Function(_PlanOption) _then;

/// Create a copy of PlanOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? monthlyPrice = null,Object? features = null,Object? isPopular = null,}) {
  return _then(_PlanOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,monthlyPrice: null == monthlyPrice ? _self.monthlyPrice : monthlyPrice // ignore: cast_nullable_to_non_nullable
as double,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
