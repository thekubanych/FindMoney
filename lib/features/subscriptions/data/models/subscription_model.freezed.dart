// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionStatusModel {
  @JsonKey(name: 'plan_type')
  String get planType;
  String get status;
  @JsonKey(name: 'expires_at')
  String? get expiresAt;
  String? get store;
  @JsonKey(name: 'will_renew')
  bool? get willRenew;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionStatusModelCopyWith<SubscriptionStatusModel> get copyWith =>
      _$SubscriptionStatusModelCopyWithImpl<SubscriptionStatusModel>(
          this as SubscriptionStatusModel, _$identity);

  /// Serializes this SubscriptionStatusModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionStatusModel &&
            (identical(other.planType, planType) ||
                other.planType == planType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.willRenew, willRenew) ||
                other.willRenew == willRenew));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, planType, status, expiresAt, store, willRenew);

  @override
  String toString() {
    return 'SubscriptionStatusModel(planType: $planType, status: $status, expiresAt: $expiresAt, store: $store, willRenew: $willRenew)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionStatusModelCopyWith<$Res> {
  factory $SubscriptionStatusModelCopyWith(SubscriptionStatusModel value,
          $Res Function(SubscriptionStatusModel) _then) =
      _$SubscriptionStatusModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'plan_type') String planType,
      String status,
      @JsonKey(name: 'expires_at') String? expiresAt,
      String? store,
      @JsonKey(name: 'will_renew') bool? willRenew});
}

/// @nodoc
class _$SubscriptionStatusModelCopyWithImpl<$Res>
    implements $SubscriptionStatusModelCopyWith<$Res> {
  _$SubscriptionStatusModelCopyWithImpl(this._self, this._then);

  final SubscriptionStatusModel _self;
  final $Res Function(SubscriptionStatusModel) _then;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planType = null,
    Object? status = null,
    Object? expiresAt = freezed,
    Object? store = freezed,
    Object? willRenew = freezed,
  }) {
    return _then(_self.copyWith(
      planType: null == planType
          ? _self.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      store: freezed == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as String?,
      willRenew: freezed == willRenew
          ? _self.willRenew
          : willRenew // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SubscriptionStatusModel].
extension SubscriptionStatusModelPatterns on SubscriptionStatusModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SubscriptionStatusModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionStatusModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SubscriptionStatusModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionStatusModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SubscriptionStatusModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionStatusModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'plan_type') String planType,
            String status,
            @JsonKey(name: 'expires_at') String? expiresAt,
            String? store,
            @JsonKey(name: 'will_renew') bool? willRenew)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionStatusModel() when $default != null:
        return $default(_that.planType, _that.status, _that.expiresAt,
            _that.store, _that.willRenew);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'plan_type') String planType,
            String status,
            @JsonKey(name: 'expires_at') String? expiresAt,
            String? store,
            @JsonKey(name: 'will_renew') bool? willRenew)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionStatusModel():
        return $default(_that.planType, _that.status, _that.expiresAt,
            _that.store, _that.willRenew);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'plan_type') String planType,
            String status,
            @JsonKey(name: 'expires_at') String? expiresAt,
            String? store,
            @JsonKey(name: 'will_renew') bool? willRenew)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionStatusModel() when $default != null:
        return $default(_that.planType, _that.status, _that.expiresAt,
            _that.store, _that.willRenew);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionStatusModel implements SubscriptionStatusModel {
  const _SubscriptionStatusModel(
      {@JsonKey(name: 'plan_type') required this.planType,
      required this.status,
      @JsonKey(name: 'expires_at') this.expiresAt,
      this.store,
      @JsonKey(name: 'will_renew') this.willRenew});
  factory _SubscriptionStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionStatusModelFromJson(json);

  @override
  @JsonKey(name: 'plan_type')
  final String planType;
  @override
  final String status;
  @override
  @JsonKey(name: 'expires_at')
  final String? expiresAt;
  @override
  final String? store;
  @override
  @JsonKey(name: 'will_renew')
  final bool? willRenew;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionStatusModelCopyWith<_SubscriptionStatusModel> get copyWith =>
      __$SubscriptionStatusModelCopyWithImpl<_SubscriptionStatusModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionStatusModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionStatusModel &&
            (identical(other.planType, planType) ||
                other.planType == planType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.willRenew, willRenew) ||
                other.willRenew == willRenew));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, planType, status, expiresAt, store, willRenew);

  @override
  String toString() {
    return 'SubscriptionStatusModel(planType: $planType, status: $status, expiresAt: $expiresAt, store: $store, willRenew: $willRenew)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionStatusModelCopyWith<$Res>
    implements $SubscriptionStatusModelCopyWith<$Res> {
  factory _$SubscriptionStatusModelCopyWith(_SubscriptionStatusModel value,
          $Res Function(_SubscriptionStatusModel) _then) =
      __$SubscriptionStatusModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plan_type') String planType,
      String status,
      @JsonKey(name: 'expires_at') String? expiresAt,
      String? store,
      @JsonKey(name: 'will_renew') bool? willRenew});
}

/// @nodoc
class __$SubscriptionStatusModelCopyWithImpl<$Res>
    implements _$SubscriptionStatusModelCopyWith<$Res> {
  __$SubscriptionStatusModelCopyWithImpl(this._self, this._then);

  final _SubscriptionStatusModel _self;
  final $Res Function(_SubscriptionStatusModel) _then;

  /// Create a copy of SubscriptionStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? planType = null,
    Object? status = null,
    Object? expiresAt = freezed,
    Object? store = freezed,
    Object? willRenew = freezed,
  }) {
    return _then(_SubscriptionStatusModel(
      planType: null == planType
          ? _self.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
      store: freezed == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as String?,
      willRenew: freezed == willRenew
          ? _self.willRenew
          : willRenew // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$VerifyPurchaseDto {
  String get store;
  @JsonKey(name: 'product_id')
  String get productId;
  @JsonKey(name: 'purchase_token')
  String get purchaseToken;

  /// Create a copy of VerifyPurchaseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifyPurchaseDtoCopyWith<VerifyPurchaseDto> get copyWith =>
      _$VerifyPurchaseDtoCopyWithImpl<VerifyPurchaseDto>(
          this as VerifyPurchaseDto, _$identity);

  /// Serializes this VerifyPurchaseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerifyPurchaseDto &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.purchaseToken, purchaseToken) ||
                other.purchaseToken == purchaseToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, store, productId, purchaseToken);

  @override
  String toString() {
    return 'VerifyPurchaseDto(store: $store, productId: $productId, purchaseToken: $purchaseToken)';
  }
}

/// @nodoc
abstract mixin class $VerifyPurchaseDtoCopyWith<$Res> {
  factory $VerifyPurchaseDtoCopyWith(
          VerifyPurchaseDto value, $Res Function(VerifyPurchaseDto) _then) =
      _$VerifyPurchaseDtoCopyWithImpl;
  @useResult
  $Res call(
      {String store,
      @JsonKey(name: 'product_id') String productId,
      @JsonKey(name: 'purchase_token') String purchaseToken});
}

/// @nodoc
class _$VerifyPurchaseDtoCopyWithImpl<$Res>
    implements $VerifyPurchaseDtoCopyWith<$Res> {
  _$VerifyPurchaseDtoCopyWithImpl(this._self, this._then);

  final VerifyPurchaseDto _self;
  final $Res Function(VerifyPurchaseDto) _then;

  /// Create a copy of VerifyPurchaseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
    Object? productId = null,
    Object? purchaseToken = null,
  }) {
    return _then(_self.copyWith(
      store: null == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseToken: null == purchaseToken
          ? _self.purchaseToken
          : purchaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [VerifyPurchaseDto].
extension VerifyPurchaseDtoPatterns on VerifyPurchaseDto {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VerifyPurchaseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyPurchaseDto() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VerifyPurchaseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyPurchaseDto():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VerifyPurchaseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyPurchaseDto() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String store,
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'purchase_token') String purchaseToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VerifyPurchaseDto() when $default != null:
        return $default(_that.store, _that.productId, _that.purchaseToken);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String store,
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'purchase_token') String purchaseToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyPurchaseDto():
        return $default(_that.store, _that.productId, _that.purchaseToken);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String store,
            @JsonKey(name: 'product_id') String productId,
            @JsonKey(name: 'purchase_token') String purchaseToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VerifyPurchaseDto() when $default != null:
        return $default(_that.store, _that.productId, _that.purchaseToken);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VerifyPurchaseDto implements VerifyPurchaseDto {
  const _VerifyPurchaseDto(
      {required this.store,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'purchase_token') required this.purchaseToken});
  factory _VerifyPurchaseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyPurchaseDtoFromJson(json);

  @override
  final String store;
  @override
  @JsonKey(name: 'product_id')
  final String productId;
  @override
  @JsonKey(name: 'purchase_token')
  final String purchaseToken;

  /// Create a copy of VerifyPurchaseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerifyPurchaseDtoCopyWith<_VerifyPurchaseDto> get copyWith =>
      __$VerifyPurchaseDtoCopyWithImpl<_VerifyPurchaseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerifyPurchaseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyPurchaseDto &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.purchaseToken, purchaseToken) ||
                other.purchaseToken == purchaseToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, store, productId, purchaseToken);

  @override
  String toString() {
    return 'VerifyPurchaseDto(store: $store, productId: $productId, purchaseToken: $purchaseToken)';
  }
}

/// @nodoc
abstract mixin class _$VerifyPurchaseDtoCopyWith<$Res>
    implements $VerifyPurchaseDtoCopyWith<$Res> {
  factory _$VerifyPurchaseDtoCopyWith(
          _VerifyPurchaseDto value, $Res Function(_VerifyPurchaseDto) _then) =
      __$VerifyPurchaseDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String store,
      @JsonKey(name: 'product_id') String productId,
      @JsonKey(name: 'purchase_token') String purchaseToken});
}

/// @nodoc
class __$VerifyPurchaseDtoCopyWithImpl<$Res>
    implements _$VerifyPurchaseDtoCopyWith<$Res> {
  __$VerifyPurchaseDtoCopyWithImpl(this._self, this._then);

  final _VerifyPurchaseDto _self;
  final $Res Function(_VerifyPurchaseDto) _then;

  /// Create a copy of VerifyPurchaseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? store = null,
    Object? productId = null,
    Object? purchaseToken = null,
  }) {
    return _then(_VerifyPurchaseDto(
      store: null == store
          ? _self.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseToken: null == purchaseToken
          ? _self.purchaseToken
          : purchaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
