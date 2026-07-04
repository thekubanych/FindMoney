// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AiReportModel {
  String get id;
  @JsonKey(name: 'user_id')
  String get userId;
  @JsonKey(name: 'report_type')
  String get reportType;
  String get content;
  @JsonKey(name: 'risk_score')
  int get riskScore;
  @JsonKey(name: 'impulsive_score')
  int get impulsiveScore;
  @JsonKey(name: 'discipline_score')
  int get disciplineScore;
  @JsonKey(name: 'emotional_score')
  int get emotionalScore;
  @JsonKey(name: 'created_at')
  String get createdAt;
  List<AiInsightModel>? get insights;
  AiPredictionModel? get prediction;

  /// Create a copy of AiReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiReportModelCopyWith<AiReportModel> get copyWith =>
      _$AiReportModelCopyWithImpl<AiReportModel>(
          this as AiReportModel, _$identity);

  /// Serializes this AiReportModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiReportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(other.impulsiveScore, impulsiveScore) ||
                other.impulsiveScore == impulsiveScore) &&
            (identical(other.disciplineScore, disciplineScore) ||
                other.disciplineScore == disciplineScore) &&
            (identical(other.emotionalScore, emotionalScore) ||
                other.emotionalScore == emotionalScore) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.insights, insights) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      reportType,
      content,
      riskScore,
      impulsiveScore,
      disciplineScore,
      emotionalScore,
      createdAt,
      const DeepCollectionEquality().hash(insights),
      prediction);

  @override
  String toString() {
    return 'AiReportModel(id: $id, userId: $userId, reportType: $reportType, content: $content, riskScore: $riskScore, impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, emotionalScore: $emotionalScore, createdAt: $createdAt, insights: $insights, prediction: $prediction)';
  }
}

/// @nodoc
abstract mixin class $AiReportModelCopyWith<$Res> {
  factory $AiReportModelCopyWith(
          AiReportModel value, $Res Function(AiReportModel) _then) =
      _$AiReportModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'report_type') String reportType,
      String content,
      @JsonKey(name: 'risk_score') int riskScore,
      @JsonKey(name: 'impulsive_score') int impulsiveScore,
      @JsonKey(name: 'discipline_score') int disciplineScore,
      @JsonKey(name: 'emotional_score') int emotionalScore,
      @JsonKey(name: 'created_at') String createdAt,
      List<AiInsightModel>? insights,
      AiPredictionModel? prediction});

  $AiPredictionModelCopyWith<$Res>? get prediction;
}

/// @nodoc
class _$AiReportModelCopyWithImpl<$Res>
    implements $AiReportModelCopyWith<$Res> {
  _$AiReportModelCopyWithImpl(this._self, this._then);

  final AiReportModel _self;
  final $Res Function(AiReportModel) _then;

  /// Create a copy of AiReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? reportType = null,
    Object? content = null,
    Object? riskScore = null,
    Object? impulsiveScore = null,
    Object? disciplineScore = null,
    Object? emotionalScore = null,
    Object? createdAt = null,
    Object? insights = freezed,
    Object? prediction = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      riskScore: null == riskScore
          ? _self.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as int,
      impulsiveScore: null == impulsiveScore
          ? _self.impulsiveScore
          : impulsiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      disciplineScore: null == disciplineScore
          ? _self.disciplineScore
          : disciplineScore // ignore: cast_nullable_to_non_nullable
              as int,
      emotionalScore: null == emotionalScore
          ? _self.emotionalScore
          : emotionalScore // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      insights: freezed == insights
          ? _self.insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<AiInsightModel>?,
      prediction: freezed == prediction
          ? _self.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as AiPredictionModel?,
    ));
  }

  /// Create a copy of AiReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AiPredictionModelCopyWith<$Res>? get prediction {
    if (_self.prediction == null) {
      return null;
    }

    return $AiPredictionModelCopyWith<$Res>(_self.prediction!, (value) {
      return _then(_self.copyWith(prediction: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AiReportModel].
extension AiReportModelPatterns on AiReportModel {
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
    TResult Function(_AiReportModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiReportModel() when $default != null:
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
    TResult Function(_AiReportModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiReportModel():
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
    TResult? Function(_AiReportModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiReportModel() when $default != null:
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
            String id,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'report_type') String reportType,
            String content,
            @JsonKey(name: 'risk_score') int riskScore,
            @JsonKey(name: 'impulsive_score') int impulsiveScore,
            @JsonKey(name: 'discipline_score') int disciplineScore,
            @JsonKey(name: 'emotional_score') int emotionalScore,
            @JsonKey(name: 'created_at') String createdAt,
            List<AiInsightModel>? insights,
            AiPredictionModel? prediction)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiReportModel() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.reportType,
            _that.content,
            _that.riskScore,
            _that.impulsiveScore,
            _that.disciplineScore,
            _that.emotionalScore,
            _that.createdAt,
            _that.insights,
            _that.prediction);
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
            String id,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'report_type') String reportType,
            String content,
            @JsonKey(name: 'risk_score') int riskScore,
            @JsonKey(name: 'impulsive_score') int impulsiveScore,
            @JsonKey(name: 'discipline_score') int disciplineScore,
            @JsonKey(name: 'emotional_score') int emotionalScore,
            @JsonKey(name: 'created_at') String createdAt,
            List<AiInsightModel>? insights,
            AiPredictionModel? prediction)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiReportModel():
        return $default(
            _that.id,
            _that.userId,
            _that.reportType,
            _that.content,
            _that.riskScore,
            _that.impulsiveScore,
            _that.disciplineScore,
            _that.emotionalScore,
            _that.createdAt,
            _that.insights,
            _that.prediction);
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
            String id,
            @JsonKey(name: 'user_id') String userId,
            @JsonKey(name: 'report_type') String reportType,
            String content,
            @JsonKey(name: 'risk_score') int riskScore,
            @JsonKey(name: 'impulsive_score') int impulsiveScore,
            @JsonKey(name: 'discipline_score') int disciplineScore,
            @JsonKey(name: 'emotional_score') int emotionalScore,
            @JsonKey(name: 'created_at') String createdAt,
            List<AiInsightModel>? insights,
            AiPredictionModel? prediction)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiReportModel() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.reportType,
            _that.content,
            _that.riskScore,
            _that.impulsiveScore,
            _that.disciplineScore,
            _that.emotionalScore,
            _that.createdAt,
            _that.insights,
            _that.prediction);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AiReportModel implements AiReportModel {
  const _AiReportModel(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'report_type') required this.reportType,
      required this.content,
      @JsonKey(name: 'risk_score') required this.riskScore,
      @JsonKey(name: 'impulsive_score') required this.impulsiveScore,
      @JsonKey(name: 'discipline_score') required this.disciplineScore,
      @JsonKey(name: 'emotional_score') required this.emotionalScore,
      @JsonKey(name: 'created_at') required this.createdAt,
      final List<AiInsightModel>? insights,
      this.prediction})
      : _insights = insights;
  factory _AiReportModel.fromJson(Map<String, dynamic> json) =>
      _$AiReportModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'report_type')
  final String reportType;
  @override
  final String content;
  @override
  @JsonKey(name: 'risk_score')
  final int riskScore;
  @override
  @JsonKey(name: 'impulsive_score')
  final int impulsiveScore;
  @override
  @JsonKey(name: 'discipline_score')
  final int disciplineScore;
  @override
  @JsonKey(name: 'emotional_score')
  final int emotionalScore;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  final List<AiInsightModel>? _insights;
  @override
  List<AiInsightModel>? get insights {
    final value = _insights;
    if (value == null) return null;
    if (_insights is EqualUnmodifiableListView) return _insights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AiPredictionModel? prediction;

  /// Create a copy of AiReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AiReportModelCopyWith<_AiReportModel> get copyWith =>
      __$AiReportModelCopyWithImpl<_AiReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiReportModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AiReportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reportType, reportType) ||
                other.reportType == reportType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(other.impulsiveScore, impulsiveScore) ||
                other.impulsiveScore == impulsiveScore) &&
            (identical(other.disciplineScore, disciplineScore) ||
                other.disciplineScore == disciplineScore) &&
            (identical(other.emotionalScore, emotionalScore) ||
                other.emotionalScore == emotionalScore) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._insights, _insights) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      reportType,
      content,
      riskScore,
      impulsiveScore,
      disciplineScore,
      emotionalScore,
      createdAt,
      const DeepCollectionEquality().hash(_insights),
      prediction);

  @override
  String toString() {
    return 'AiReportModel(id: $id, userId: $userId, reportType: $reportType, content: $content, riskScore: $riskScore, impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, emotionalScore: $emotionalScore, createdAt: $createdAt, insights: $insights, prediction: $prediction)';
  }
}

/// @nodoc
abstract mixin class _$AiReportModelCopyWith<$Res>
    implements $AiReportModelCopyWith<$Res> {
  factory _$AiReportModelCopyWith(
          _AiReportModel value, $Res Function(_AiReportModel) _then) =
      __$AiReportModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'report_type') String reportType,
      String content,
      @JsonKey(name: 'risk_score') int riskScore,
      @JsonKey(name: 'impulsive_score') int impulsiveScore,
      @JsonKey(name: 'discipline_score') int disciplineScore,
      @JsonKey(name: 'emotional_score') int emotionalScore,
      @JsonKey(name: 'created_at') String createdAt,
      List<AiInsightModel>? insights,
      AiPredictionModel? prediction});

  @override
  $AiPredictionModelCopyWith<$Res>? get prediction;
}

/// @nodoc
class __$AiReportModelCopyWithImpl<$Res>
    implements _$AiReportModelCopyWith<$Res> {
  __$AiReportModelCopyWithImpl(this._self, this._then);

  final _AiReportModel _self;
  final $Res Function(_AiReportModel) _then;

  /// Create a copy of AiReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? reportType = null,
    Object? content = null,
    Object? riskScore = null,
    Object? impulsiveScore = null,
    Object? disciplineScore = null,
    Object? emotionalScore = null,
    Object? createdAt = null,
    Object? insights = freezed,
    Object? prediction = freezed,
  }) {
    return _then(_AiReportModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reportType: null == reportType
          ? _self.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      riskScore: null == riskScore
          ? _self.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as int,
      impulsiveScore: null == impulsiveScore
          ? _self.impulsiveScore
          : impulsiveScore // ignore: cast_nullable_to_non_nullable
              as int,
      disciplineScore: null == disciplineScore
          ? _self.disciplineScore
          : disciplineScore // ignore: cast_nullable_to_non_nullable
              as int,
      emotionalScore: null == emotionalScore
          ? _self.emotionalScore
          : emotionalScore // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      insights: freezed == insights
          ? _self._insights
          : insights // ignore: cast_nullable_to_non_nullable
              as List<AiInsightModel>?,
      prediction: freezed == prediction
          ? _self.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as AiPredictionModel?,
    ));
  }

  /// Create a copy of AiReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AiPredictionModelCopyWith<$Res>? get prediction {
    if (_self.prediction == null) {
      return null;
    }

    return $AiPredictionModelCopyWith<$Res>(_self.prediction!, (value) {
      return _then(_self.copyWith(prediction: value));
    });
  }
}

/// @nodoc
mixin _$AiInsightModel {
  String get type;
  String get title;
  String get description;
  String get severity;

  /// Create a copy of AiInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiInsightModelCopyWith<AiInsightModel> get copyWith =>
      _$AiInsightModelCopyWithImpl<AiInsightModel>(
          this as AiInsightModel, _$identity);

  /// Serializes this AiInsightModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiInsightModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, description, severity);

  @override
  String toString() {
    return 'AiInsightModel(type: $type, title: $title, description: $description, severity: $severity)';
  }
}

/// @nodoc
abstract mixin class $AiInsightModelCopyWith<$Res> {
  factory $AiInsightModelCopyWith(
          AiInsightModel value, $Res Function(AiInsightModel) _then) =
      _$AiInsightModelCopyWithImpl;
  @useResult
  $Res call({String type, String title, String description, String severity});
}

/// @nodoc
class _$AiInsightModelCopyWithImpl<$Res>
    implements $AiInsightModelCopyWith<$Res> {
  _$AiInsightModelCopyWithImpl(this._self, this._then);

  final AiInsightModel _self;
  final $Res Function(AiInsightModel) _then;

  /// Create a copy of AiInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? severity = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AiInsightModel].
extension AiInsightModelPatterns on AiInsightModel {
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
    TResult Function(_AiInsightModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiInsightModel() when $default != null:
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
    TResult Function(_AiInsightModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiInsightModel():
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
    TResult? Function(_AiInsightModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiInsightModel() when $default != null:
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
            String type, String title, String description, String severity)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiInsightModel() when $default != null:
        return $default(
            _that.type, _that.title, _that.description, _that.severity);
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
            String type, String title, String description, String severity)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiInsightModel():
        return $default(
            _that.type, _that.title, _that.description, _that.severity);
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
            String type, String title, String description, String severity)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiInsightModel() when $default != null:
        return $default(
            _that.type, _that.title, _that.description, _that.severity);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AiInsightModel implements AiInsightModel {
  const _AiInsightModel(
      {required this.type,
      required this.title,
      required this.description,
      required this.severity});
  factory _AiInsightModel.fromJson(Map<String, dynamic> json) =>
      _$AiInsightModelFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final String description;
  @override
  final String severity;

  /// Create a copy of AiInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AiInsightModelCopyWith<_AiInsightModel> get copyWith =>
      __$AiInsightModelCopyWithImpl<_AiInsightModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiInsightModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AiInsightModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, description, severity);

  @override
  String toString() {
    return 'AiInsightModel(type: $type, title: $title, description: $description, severity: $severity)';
  }
}

/// @nodoc
abstract mixin class _$AiInsightModelCopyWith<$Res>
    implements $AiInsightModelCopyWith<$Res> {
  factory _$AiInsightModelCopyWith(
          _AiInsightModel value, $Res Function(_AiInsightModel) _then) =
      __$AiInsightModelCopyWithImpl;
  @override
  @useResult
  $Res call({String type, String title, String description, String severity});
}

/// @nodoc
class __$AiInsightModelCopyWithImpl<$Res>
    implements _$AiInsightModelCopyWith<$Res> {
  __$AiInsightModelCopyWithImpl(this._self, this._then);

  final _AiInsightModel _self;
  final $Res Function(_AiInsightModel) _then;

  /// Create a copy of AiInsightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? severity = null,
  }) {
    return _then(_AiInsightModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AiPredictionModel {
  @JsonKey(name: 'months_until_depletion')
  int get monthsUntilDepletion;
  @JsonKey(name: 'debt_probability')
  double get debtProbability;
  @JsonKey(name: 'savings_health_score')
  double get savingsHealthScore;
  @JsonKey(name: 'prediction_summary')
  String get predictionSummary;

  /// Create a copy of AiPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AiPredictionModelCopyWith<AiPredictionModel> get copyWith =>
      _$AiPredictionModelCopyWithImpl<AiPredictionModel>(
          this as AiPredictionModel, _$identity);

  /// Serializes this AiPredictionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AiPredictionModel &&
            (identical(other.monthsUntilDepletion, monthsUntilDepletion) ||
                other.monthsUntilDepletion == monthsUntilDepletion) &&
            (identical(other.debtProbability, debtProbability) ||
                other.debtProbability == debtProbability) &&
            (identical(other.savingsHealthScore, savingsHealthScore) ||
                other.savingsHealthScore == savingsHealthScore) &&
            (identical(other.predictionSummary, predictionSummary) ||
                other.predictionSummary == predictionSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, monthsUntilDepletion,
      debtProbability, savingsHealthScore, predictionSummary);

  @override
  String toString() {
    return 'AiPredictionModel(monthsUntilDepletion: $monthsUntilDepletion, debtProbability: $debtProbability, savingsHealthScore: $savingsHealthScore, predictionSummary: $predictionSummary)';
  }
}

/// @nodoc
abstract mixin class $AiPredictionModelCopyWith<$Res> {
  factory $AiPredictionModelCopyWith(
          AiPredictionModel value, $Res Function(AiPredictionModel) _then) =
      _$AiPredictionModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'months_until_depletion') int monthsUntilDepletion,
      @JsonKey(name: 'debt_probability') double debtProbability,
      @JsonKey(name: 'savings_health_score') double savingsHealthScore,
      @JsonKey(name: 'prediction_summary') String predictionSummary});
}

/// @nodoc
class _$AiPredictionModelCopyWithImpl<$Res>
    implements $AiPredictionModelCopyWith<$Res> {
  _$AiPredictionModelCopyWithImpl(this._self, this._then);

  final AiPredictionModel _self;
  final $Res Function(AiPredictionModel) _then;

  /// Create a copy of AiPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monthsUntilDepletion = null,
    Object? debtProbability = null,
    Object? savingsHealthScore = null,
    Object? predictionSummary = null,
  }) {
    return _then(_self.copyWith(
      monthsUntilDepletion: null == monthsUntilDepletion
          ? _self.monthsUntilDepletion
          : monthsUntilDepletion // ignore: cast_nullable_to_non_nullable
              as int,
      debtProbability: null == debtProbability
          ? _self.debtProbability
          : debtProbability // ignore: cast_nullable_to_non_nullable
              as double,
      savingsHealthScore: null == savingsHealthScore
          ? _self.savingsHealthScore
          : savingsHealthScore // ignore: cast_nullable_to_non_nullable
              as double,
      predictionSummary: null == predictionSummary
          ? _self.predictionSummary
          : predictionSummary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AiPredictionModel].
extension AiPredictionModelPatterns on AiPredictionModel {
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
    TResult Function(_AiPredictionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiPredictionModel() when $default != null:
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
    TResult Function(_AiPredictionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiPredictionModel():
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
    TResult? Function(_AiPredictionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiPredictionModel() when $default != null:
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
            @JsonKey(name: 'months_until_depletion') int monthsUntilDepletion,
            @JsonKey(name: 'debt_probability') double debtProbability,
            @JsonKey(name: 'savings_health_score') double savingsHealthScore,
            @JsonKey(name: 'prediction_summary') String predictionSummary)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AiPredictionModel() when $default != null:
        return $default(_that.monthsUntilDepletion, _that.debtProbability,
            _that.savingsHealthScore, _that.predictionSummary);
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
            @JsonKey(name: 'months_until_depletion') int monthsUntilDepletion,
            @JsonKey(name: 'debt_probability') double debtProbability,
            @JsonKey(name: 'savings_health_score') double savingsHealthScore,
            @JsonKey(name: 'prediction_summary') String predictionSummary)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiPredictionModel():
        return $default(_that.monthsUntilDepletion, _that.debtProbability,
            _that.savingsHealthScore, _that.predictionSummary);
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
            @JsonKey(name: 'months_until_depletion') int monthsUntilDepletion,
            @JsonKey(name: 'debt_probability') double debtProbability,
            @JsonKey(name: 'savings_health_score') double savingsHealthScore,
            @JsonKey(name: 'prediction_summary') String predictionSummary)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AiPredictionModel() when $default != null:
        return $default(_that.monthsUntilDepletion, _that.debtProbability,
            _that.savingsHealthScore, _that.predictionSummary);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AiPredictionModel implements AiPredictionModel {
  const _AiPredictionModel(
      {@JsonKey(name: 'months_until_depletion')
      required this.monthsUntilDepletion,
      @JsonKey(name: 'debt_probability') required this.debtProbability,
      @JsonKey(name: 'savings_health_score') required this.savingsHealthScore,
      @JsonKey(name: 'prediction_summary') required this.predictionSummary});
  factory _AiPredictionModel.fromJson(Map<String, dynamic> json) =>
      _$AiPredictionModelFromJson(json);

  @override
  @JsonKey(name: 'months_until_depletion')
  final int monthsUntilDepletion;
  @override
  @JsonKey(name: 'debt_probability')
  final double debtProbability;
  @override
  @JsonKey(name: 'savings_health_score')
  final double savingsHealthScore;
  @override
  @JsonKey(name: 'prediction_summary')
  final String predictionSummary;

  /// Create a copy of AiPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AiPredictionModelCopyWith<_AiPredictionModel> get copyWith =>
      __$AiPredictionModelCopyWithImpl<_AiPredictionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AiPredictionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AiPredictionModel &&
            (identical(other.monthsUntilDepletion, monthsUntilDepletion) ||
                other.monthsUntilDepletion == monthsUntilDepletion) &&
            (identical(other.debtProbability, debtProbability) ||
                other.debtProbability == debtProbability) &&
            (identical(other.savingsHealthScore, savingsHealthScore) ||
                other.savingsHealthScore == savingsHealthScore) &&
            (identical(other.predictionSummary, predictionSummary) ||
                other.predictionSummary == predictionSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, monthsUntilDepletion,
      debtProbability, savingsHealthScore, predictionSummary);

  @override
  String toString() {
    return 'AiPredictionModel(monthsUntilDepletion: $monthsUntilDepletion, debtProbability: $debtProbability, savingsHealthScore: $savingsHealthScore, predictionSummary: $predictionSummary)';
  }
}

/// @nodoc
abstract mixin class _$AiPredictionModelCopyWith<$Res>
    implements $AiPredictionModelCopyWith<$Res> {
  factory _$AiPredictionModelCopyWith(
          _AiPredictionModel value, $Res Function(_AiPredictionModel) _then) =
      __$AiPredictionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'months_until_depletion') int monthsUntilDepletion,
      @JsonKey(name: 'debt_probability') double debtProbability,
      @JsonKey(name: 'savings_health_score') double savingsHealthScore,
      @JsonKey(name: 'prediction_summary') String predictionSummary});
}

/// @nodoc
class __$AiPredictionModelCopyWithImpl<$Res>
    implements _$AiPredictionModelCopyWith<$Res> {
  __$AiPredictionModelCopyWithImpl(this._self, this._then);

  final _AiPredictionModel _self;
  final $Res Function(_AiPredictionModel) _then;

  /// Create a copy of AiPredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? monthsUntilDepletion = null,
    Object? debtProbability = null,
    Object? savingsHealthScore = null,
    Object? predictionSummary = null,
  }) {
    return _then(_AiPredictionModel(
      monthsUntilDepletion: null == monthsUntilDepletion
          ? _self.monthsUntilDepletion
          : monthsUntilDepletion // ignore: cast_nullable_to_non_nullable
              as int,
      debtProbability: null == debtProbability
          ? _self.debtProbability
          : debtProbability // ignore: cast_nullable_to_non_nullable
              as double,
      savingsHealthScore: null == savingsHealthScore
          ? _self.savingsHealthScore
          : savingsHealthScore // ignore: cast_nullable_to_non_nullable
              as double,
      predictionSummary: null == predictionSummary
          ? _self.predictionSummary
          : predictionSummary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$BehaviorScoreModel {
  @JsonKey(name: 'impulsive_score')
  double get impulsiveScore;
  @JsonKey(name: 'discipline_score')
  double get disciplineScore;
  @JsonKey(name: 'risk_score')
  double get riskScore;
  @JsonKey(name: 'emotional_dependency_score')
  double get emotionalDependencyScore;
  @JsonKey(name: 'savings_health_score')
  double get savingsHealthScore;
  @JsonKey(name: 'calculated_at')
  String get calculatedAt;

  /// Create a copy of BehaviorScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BehaviorScoreModelCopyWith<BehaviorScoreModel> get copyWith =>
      _$BehaviorScoreModelCopyWithImpl<BehaviorScoreModel>(
          this as BehaviorScoreModel, _$identity);

  /// Serializes this BehaviorScoreModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BehaviorScoreModel &&
            (identical(other.impulsiveScore, impulsiveScore) ||
                other.impulsiveScore == impulsiveScore) &&
            (identical(other.disciplineScore, disciplineScore) ||
                other.disciplineScore == disciplineScore) &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(
                    other.emotionalDependencyScore, emotionalDependencyScore) ||
                other.emotionalDependencyScore == emotionalDependencyScore) &&
            (identical(other.savingsHealthScore, savingsHealthScore) ||
                other.savingsHealthScore == savingsHealthScore) &&
            (identical(other.calculatedAt, calculatedAt) ||
                other.calculatedAt == calculatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, impulsiveScore, disciplineScore,
      riskScore, emotionalDependencyScore, savingsHealthScore, calculatedAt);

  @override
  String toString() {
    return 'BehaviorScoreModel(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore, calculatedAt: $calculatedAt)';
  }
}

/// @nodoc
abstract mixin class $BehaviorScoreModelCopyWith<$Res> {
  factory $BehaviorScoreModelCopyWith(
          BehaviorScoreModel value, $Res Function(BehaviorScoreModel) _then) =
      _$BehaviorScoreModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'impulsive_score') double impulsiveScore,
      @JsonKey(name: 'discipline_score') double disciplineScore,
      @JsonKey(name: 'risk_score') double riskScore,
      @JsonKey(name: 'emotional_dependency_score')
      double emotionalDependencyScore,
      @JsonKey(name: 'savings_health_score') double savingsHealthScore,
      @JsonKey(name: 'calculated_at') String calculatedAt});
}

/// @nodoc
class _$BehaviorScoreModelCopyWithImpl<$Res>
    implements $BehaviorScoreModelCopyWith<$Res> {
  _$BehaviorScoreModelCopyWithImpl(this._self, this._then);

  final BehaviorScoreModel _self;
  final $Res Function(BehaviorScoreModel) _then;

  /// Create a copy of BehaviorScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impulsiveScore = null,
    Object? disciplineScore = null,
    Object? riskScore = null,
    Object? emotionalDependencyScore = null,
    Object? savingsHealthScore = null,
    Object? calculatedAt = null,
  }) {
    return _then(_self.copyWith(
      impulsiveScore: null == impulsiveScore
          ? _self.impulsiveScore
          : impulsiveScore // ignore: cast_nullable_to_non_nullable
              as double,
      disciplineScore: null == disciplineScore
          ? _self.disciplineScore
          : disciplineScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskScore: null == riskScore
          ? _self.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      emotionalDependencyScore: null == emotionalDependencyScore
          ? _self.emotionalDependencyScore
          : emotionalDependencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      savingsHealthScore: null == savingsHealthScore
          ? _self.savingsHealthScore
          : savingsHealthScore // ignore: cast_nullable_to_non_nullable
              as double,
      calculatedAt: null == calculatedAt
          ? _self.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BehaviorScoreModel].
extension BehaviorScoreModelPatterns on BehaviorScoreModel {
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
    TResult Function(_BehaviorScoreModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BehaviorScoreModel() when $default != null:
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
    TResult Function(_BehaviorScoreModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorScoreModel():
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
    TResult? Function(_BehaviorScoreModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorScoreModel() when $default != null:
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
            @JsonKey(name: 'impulsive_score') double impulsiveScore,
            @JsonKey(name: 'discipline_score') double disciplineScore,
            @JsonKey(name: 'risk_score') double riskScore,
            @JsonKey(name: 'emotional_dependency_score')
            double emotionalDependencyScore,
            @JsonKey(name: 'savings_health_score') double savingsHealthScore,
            @JsonKey(name: 'calculated_at') String calculatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BehaviorScoreModel() when $default != null:
        return $default(
            _that.impulsiveScore,
            _that.disciplineScore,
            _that.riskScore,
            _that.emotionalDependencyScore,
            _that.savingsHealthScore,
            _that.calculatedAt);
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
            @JsonKey(name: 'impulsive_score') double impulsiveScore,
            @JsonKey(name: 'discipline_score') double disciplineScore,
            @JsonKey(name: 'risk_score') double riskScore,
            @JsonKey(name: 'emotional_dependency_score')
            double emotionalDependencyScore,
            @JsonKey(name: 'savings_health_score') double savingsHealthScore,
            @JsonKey(name: 'calculated_at') String calculatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorScoreModel():
        return $default(
            _that.impulsiveScore,
            _that.disciplineScore,
            _that.riskScore,
            _that.emotionalDependencyScore,
            _that.savingsHealthScore,
            _that.calculatedAt);
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
            @JsonKey(name: 'impulsive_score') double impulsiveScore,
            @JsonKey(name: 'discipline_score') double disciplineScore,
            @JsonKey(name: 'risk_score') double riskScore,
            @JsonKey(name: 'emotional_dependency_score')
            double emotionalDependencyScore,
            @JsonKey(name: 'savings_health_score') double savingsHealthScore,
            @JsonKey(name: 'calculated_at') String calculatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BehaviorScoreModel() when $default != null:
        return $default(
            _that.impulsiveScore,
            _that.disciplineScore,
            _that.riskScore,
            _that.emotionalDependencyScore,
            _that.savingsHealthScore,
            _that.calculatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BehaviorScoreModel implements BehaviorScoreModel {
  const _BehaviorScoreModel(
      {@JsonKey(name: 'impulsive_score') required this.impulsiveScore,
      @JsonKey(name: 'discipline_score') required this.disciplineScore,
      @JsonKey(name: 'risk_score') required this.riskScore,
      @JsonKey(name: 'emotional_dependency_score')
      required this.emotionalDependencyScore,
      @JsonKey(name: 'savings_health_score') required this.savingsHealthScore,
      @JsonKey(name: 'calculated_at') required this.calculatedAt});
  factory _BehaviorScoreModel.fromJson(Map<String, dynamic> json) =>
      _$BehaviorScoreModelFromJson(json);

  @override
  @JsonKey(name: 'impulsive_score')
  final double impulsiveScore;
  @override
  @JsonKey(name: 'discipline_score')
  final double disciplineScore;
  @override
  @JsonKey(name: 'risk_score')
  final double riskScore;
  @override
  @JsonKey(name: 'emotional_dependency_score')
  final double emotionalDependencyScore;
  @override
  @JsonKey(name: 'savings_health_score')
  final double savingsHealthScore;
  @override
  @JsonKey(name: 'calculated_at')
  final String calculatedAt;

  /// Create a copy of BehaviorScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BehaviorScoreModelCopyWith<_BehaviorScoreModel> get copyWith =>
      __$BehaviorScoreModelCopyWithImpl<_BehaviorScoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BehaviorScoreModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BehaviorScoreModel &&
            (identical(other.impulsiveScore, impulsiveScore) ||
                other.impulsiveScore == impulsiveScore) &&
            (identical(other.disciplineScore, disciplineScore) ||
                other.disciplineScore == disciplineScore) &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(
                    other.emotionalDependencyScore, emotionalDependencyScore) ||
                other.emotionalDependencyScore == emotionalDependencyScore) &&
            (identical(other.savingsHealthScore, savingsHealthScore) ||
                other.savingsHealthScore == savingsHealthScore) &&
            (identical(other.calculatedAt, calculatedAt) ||
                other.calculatedAt == calculatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, impulsiveScore, disciplineScore,
      riskScore, emotionalDependencyScore, savingsHealthScore, calculatedAt);

  @override
  String toString() {
    return 'BehaviorScoreModel(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore, calculatedAt: $calculatedAt)';
  }
}

/// @nodoc
abstract mixin class _$BehaviorScoreModelCopyWith<$Res>
    implements $BehaviorScoreModelCopyWith<$Res> {
  factory _$BehaviorScoreModelCopyWith(
          _BehaviorScoreModel value, $Res Function(_BehaviorScoreModel) _then) =
      __$BehaviorScoreModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'impulsive_score') double impulsiveScore,
      @JsonKey(name: 'discipline_score') double disciplineScore,
      @JsonKey(name: 'risk_score') double riskScore,
      @JsonKey(name: 'emotional_dependency_score')
      double emotionalDependencyScore,
      @JsonKey(name: 'savings_health_score') double savingsHealthScore,
      @JsonKey(name: 'calculated_at') String calculatedAt});
}

/// @nodoc
class __$BehaviorScoreModelCopyWithImpl<$Res>
    implements _$BehaviorScoreModelCopyWith<$Res> {
  __$BehaviorScoreModelCopyWithImpl(this._self, this._then);

  final _BehaviorScoreModel _self;
  final $Res Function(_BehaviorScoreModel) _then;

  /// Create a copy of BehaviorScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? impulsiveScore = null,
    Object? disciplineScore = null,
    Object? riskScore = null,
    Object? emotionalDependencyScore = null,
    Object? savingsHealthScore = null,
    Object? calculatedAt = null,
  }) {
    return _then(_BehaviorScoreModel(
      impulsiveScore: null == impulsiveScore
          ? _self.impulsiveScore
          : impulsiveScore // ignore: cast_nullable_to_non_nullable
              as double,
      disciplineScore: null == disciplineScore
          ? _self.disciplineScore
          : disciplineScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskScore: null == riskScore
          ? _self.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      emotionalDependencyScore: null == emotionalDependencyScore
          ? _self.emotionalDependencyScore
          : emotionalDependencyScore // ignore: cast_nullable_to_non_nullable
              as double,
      savingsHealthScore: null == savingsHealthScore
          ? _self.savingsHealthScore
          : savingsHealthScore // ignore: cast_nullable_to_non_nullable
              as double,
      calculatedAt: null == calculatedAt
          ? _self.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
