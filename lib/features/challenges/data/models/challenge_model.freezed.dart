// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChallengeModel {
  String get id;
  String get title;
  String get description;
  @JsonKey(name: 'reward_points')
  int get rewardPoints;
  String get type;
  String get status;
  double get progress;
  @JsonKey(name: 'expires_at')
  String? get expiresAt;

  /// Create a copy of ChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeModelCopyWith<ChallengeModel> get copyWith =>
      _$ChallengeModelCopyWithImpl<ChallengeModel>(
          this as ChallengeModel, _$identity);

  /// Serializes this ChallengeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChallengeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rewardPoints, rewardPoints) ||
                other.rewardPoints == rewardPoints) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      rewardPoints, type, status, progress, expiresAt);

  @override
  String toString() {
    return 'ChallengeModel(id: $id, title: $title, description: $description, rewardPoints: $rewardPoints, type: $type, status: $status, progress: $progress, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $ChallengeModelCopyWith<$Res> {
  factory $ChallengeModelCopyWith(
          ChallengeModel value, $Res Function(ChallengeModel) _then) =
      _$ChallengeModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'reward_points') int rewardPoints,
      String type,
      String status,
      double progress,
      @JsonKey(name: 'expires_at') String? expiresAt});
}

/// @nodoc
class _$ChallengeModelCopyWithImpl<$Res>
    implements $ChallengeModelCopyWith<$Res> {
  _$ChallengeModelCopyWithImpl(this._self, this._then);

  final ChallengeModel _self;
  final $Res Function(ChallengeModel) _then;

  /// Create a copy of ChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rewardPoints = null,
    Object? type = null,
    Object? status = null,
    Object? progress = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPoints: null == rewardPoints
          ? _self.rewardPoints
          : rewardPoints // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChallengeModel].
extension ChallengeModelPatterns on ChallengeModel {
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
    TResult Function(_ChallengeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeModel() when $default != null:
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
    TResult Function(_ChallengeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeModel():
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
    TResult? Function(_ChallengeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeModel() when $default != null:
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
            String title,
            String description,
            @JsonKey(name: 'reward_points') int rewardPoints,
            String type,
            String status,
            double progress,
            @JsonKey(name: 'expires_at') String? expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChallengeModel() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.rewardPoints,
            _that.type,
            _that.status,
            _that.progress,
            _that.expiresAt);
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
            String title,
            String description,
            @JsonKey(name: 'reward_points') int rewardPoints,
            String type,
            String status,
            double progress,
            @JsonKey(name: 'expires_at') String? expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeModel():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.rewardPoints,
            _that.type,
            _that.status,
            _that.progress,
            _that.expiresAt);
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
            String title,
            String description,
            @JsonKey(name: 'reward_points') int rewardPoints,
            String type,
            String status,
            double progress,
            @JsonKey(name: 'expires_at') String? expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChallengeModel() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.rewardPoints,
            _that.type,
            _that.status,
            _that.progress,
            _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChallengeModel implements ChallengeModel {
  const _ChallengeModel(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(name: 'reward_points') required this.rewardPoints,
      required this.type,
      required this.status,
      required this.progress,
      @JsonKey(name: 'expires_at') this.expiresAt});
  factory _ChallengeModel.fromJson(Map<String, dynamic> json) =>
      _$ChallengeModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'reward_points')
  final int rewardPoints;
  @override
  final String type;
  @override
  final String status;
  @override
  final double progress;
  @override
  @JsonKey(name: 'expires_at')
  final String? expiresAt;

  /// Create a copy of ChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeModelCopyWith<_ChallengeModel> get copyWith =>
      __$ChallengeModelCopyWithImpl<_ChallengeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChallengeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChallengeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rewardPoints, rewardPoints) ||
                other.rewardPoints == rewardPoints) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      rewardPoints, type, status, progress, expiresAt);

  @override
  String toString() {
    return 'ChallengeModel(id: $id, title: $title, description: $description, rewardPoints: $rewardPoints, type: $type, status: $status, progress: $progress, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeModelCopyWith<$Res>
    implements $ChallengeModelCopyWith<$Res> {
  factory _$ChallengeModelCopyWith(
          _ChallengeModel value, $Res Function(_ChallengeModel) _then) =
      __$ChallengeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @JsonKey(name: 'reward_points') int rewardPoints,
      String type,
      String status,
      double progress,
      @JsonKey(name: 'expires_at') String? expiresAt});
}

/// @nodoc
class __$ChallengeModelCopyWithImpl<$Res>
    implements _$ChallengeModelCopyWith<$Res> {
  __$ChallengeModelCopyWithImpl(this._self, this._then);

  final _ChallengeModel _self;
  final $Res Function(_ChallengeModel) _then;

  /// Create a copy of ChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? rewardPoints = null,
    Object? type = null,
    Object? status = null,
    Object? progress = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_ChallengeModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPoints: null == rewardPoints
          ? _self.rewardPoints
          : rewardPoints // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UserGameStatsModel {
  @JsonKey(name: 'xp_points')
  int get xpPoints;
  int get level;
  @JsonKey(name: 'streak_days')
  int get streakDays;
  @JsonKey(name: 'longest_streak')
  int get longestStreak;
  @JsonKey(name: 'challenges_completed')
  int get challengesCompleted;
  @JsonKey(name: 'active_challenges')
  List<ChallengeModel> get activeChallenges;
  @JsonKey(name: 'completed_challenges')
  List<ChallengeModel> get completedChallenges;

  /// Create a copy of UserGameStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserGameStatsModelCopyWith<UserGameStatsModel> get copyWith =>
      _$UserGameStatsModelCopyWithImpl<UserGameStatsModel>(
          this as UserGameStatsModel, _$identity);

  /// Serializes this UserGameStatsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserGameStatsModel &&
            (identical(other.xpPoints, xpPoints) ||
                other.xpPoints == xpPoints) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.challengesCompleted, challengesCompleted) ||
                other.challengesCompleted == challengesCompleted) &&
            const DeepCollectionEquality()
                .equals(other.activeChallenges, activeChallenges) &&
            const DeepCollectionEquality()
                .equals(other.completedChallenges, completedChallenges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      xpPoints,
      level,
      streakDays,
      longestStreak,
      challengesCompleted,
      const DeepCollectionEquality().hash(activeChallenges),
      const DeepCollectionEquality().hash(completedChallenges));

  @override
  String toString() {
    return 'UserGameStatsModel(xpPoints: $xpPoints, level: $level, streakDays: $streakDays, longestStreak: $longestStreak, challengesCompleted: $challengesCompleted, activeChallenges: $activeChallenges, completedChallenges: $completedChallenges)';
  }
}

/// @nodoc
abstract mixin class $UserGameStatsModelCopyWith<$Res> {
  factory $UserGameStatsModelCopyWith(
          UserGameStatsModel value, $Res Function(UserGameStatsModel) _then) =
      _$UserGameStatsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'xp_points') int xpPoints,
      int level,
      @JsonKey(name: 'streak_days') int streakDays,
      @JsonKey(name: 'longest_streak') int longestStreak,
      @JsonKey(name: 'challenges_completed') int challengesCompleted,
      @JsonKey(name: 'active_challenges') List<ChallengeModel> activeChallenges,
      @JsonKey(name: 'completed_challenges')
      List<ChallengeModel> completedChallenges});
}

/// @nodoc
class _$UserGameStatsModelCopyWithImpl<$Res>
    implements $UserGameStatsModelCopyWith<$Res> {
  _$UserGameStatsModelCopyWithImpl(this._self, this._then);

  final UserGameStatsModel _self;
  final $Res Function(UserGameStatsModel) _then;

  /// Create a copy of UserGameStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xpPoints = null,
    Object? level = null,
    Object? streakDays = null,
    Object? longestStreak = null,
    Object? challengesCompleted = null,
    Object? activeChallenges = null,
    Object? completedChallenges = null,
  }) {
    return _then(_self.copyWith(
      xpPoints: null == xpPoints
          ? _self.xpPoints
          : xpPoints // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      streakDays: null == streakDays
          ? _self.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _self.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      challengesCompleted: null == challengesCompleted
          ? _self.challengesCompleted
          : challengesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      activeChallenges: null == activeChallenges
          ? _self.activeChallenges
          : activeChallenges // ignore: cast_nullable_to_non_nullable
              as List<ChallengeModel>,
      completedChallenges: null == completedChallenges
          ? _self.completedChallenges
          : completedChallenges // ignore: cast_nullable_to_non_nullable
              as List<ChallengeModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserGameStatsModel].
extension UserGameStatsModelPatterns on UserGameStatsModel {
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
    TResult Function(_UserGameStatsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserGameStatsModel() when $default != null:
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
    TResult Function(_UserGameStatsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStatsModel():
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
    TResult? Function(_UserGameStatsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStatsModel() when $default != null:
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
            @JsonKey(name: 'xp_points') int xpPoints,
            int level,
            @JsonKey(name: 'streak_days') int streakDays,
            @JsonKey(name: 'longest_streak') int longestStreak,
            @JsonKey(name: 'challenges_completed') int challengesCompleted,
            @JsonKey(name: 'active_challenges')
            List<ChallengeModel> activeChallenges,
            @JsonKey(name: 'completed_challenges')
            List<ChallengeModel> completedChallenges)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserGameStatsModel() when $default != null:
        return $default(
            _that.xpPoints,
            _that.level,
            _that.streakDays,
            _that.longestStreak,
            _that.challengesCompleted,
            _that.activeChallenges,
            _that.completedChallenges);
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
            @JsonKey(name: 'xp_points') int xpPoints,
            int level,
            @JsonKey(name: 'streak_days') int streakDays,
            @JsonKey(name: 'longest_streak') int longestStreak,
            @JsonKey(name: 'challenges_completed') int challengesCompleted,
            @JsonKey(name: 'active_challenges')
            List<ChallengeModel> activeChallenges,
            @JsonKey(name: 'completed_challenges')
            List<ChallengeModel> completedChallenges)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStatsModel():
        return $default(
            _that.xpPoints,
            _that.level,
            _that.streakDays,
            _that.longestStreak,
            _that.challengesCompleted,
            _that.activeChallenges,
            _that.completedChallenges);
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
            @JsonKey(name: 'xp_points') int xpPoints,
            int level,
            @JsonKey(name: 'streak_days') int streakDays,
            @JsonKey(name: 'longest_streak') int longestStreak,
            @JsonKey(name: 'challenges_completed') int challengesCompleted,
            @JsonKey(name: 'active_challenges')
            List<ChallengeModel> activeChallenges,
            @JsonKey(name: 'completed_challenges')
            List<ChallengeModel> completedChallenges)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStatsModel() when $default != null:
        return $default(
            _that.xpPoints,
            _that.level,
            _that.streakDays,
            _that.longestStreak,
            _that.challengesCompleted,
            _that.activeChallenges,
            _that.completedChallenges);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserGameStatsModel implements UserGameStatsModel {
  const _UserGameStatsModel(
      {@JsonKey(name: 'xp_points') required this.xpPoints,
      required this.level,
      @JsonKey(name: 'streak_days') required this.streakDays,
      @JsonKey(name: 'longest_streak') required this.longestStreak,
      @JsonKey(name: 'challenges_completed') required this.challengesCompleted,
      @JsonKey(name: 'active_challenges')
      required final List<ChallengeModel> activeChallenges,
      @JsonKey(name: 'completed_challenges')
      required final List<ChallengeModel> completedChallenges})
      : _activeChallenges = activeChallenges,
        _completedChallenges = completedChallenges;
  factory _UserGameStatsModel.fromJson(Map<String, dynamic> json) =>
      _$UserGameStatsModelFromJson(json);

  @override
  @JsonKey(name: 'xp_points')
  final int xpPoints;
  @override
  final int level;
  @override
  @JsonKey(name: 'streak_days')
  final int streakDays;
  @override
  @JsonKey(name: 'longest_streak')
  final int longestStreak;
  @override
  @JsonKey(name: 'challenges_completed')
  final int challengesCompleted;
  final List<ChallengeModel> _activeChallenges;
  @override
  @JsonKey(name: 'active_challenges')
  List<ChallengeModel> get activeChallenges {
    if (_activeChallenges is EqualUnmodifiableListView)
      return _activeChallenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeChallenges);
  }

  final List<ChallengeModel> _completedChallenges;
  @override
  @JsonKey(name: 'completed_challenges')
  List<ChallengeModel> get completedChallenges {
    if (_completedChallenges is EqualUnmodifiableListView)
      return _completedChallenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedChallenges);
  }

  /// Create a copy of UserGameStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserGameStatsModelCopyWith<_UserGameStatsModel> get copyWith =>
      __$UserGameStatsModelCopyWithImpl<_UserGameStatsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserGameStatsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGameStatsModel &&
            (identical(other.xpPoints, xpPoints) ||
                other.xpPoints == xpPoints) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.challengesCompleted, challengesCompleted) ||
                other.challengesCompleted == challengesCompleted) &&
            const DeepCollectionEquality()
                .equals(other._activeChallenges, _activeChallenges) &&
            const DeepCollectionEquality()
                .equals(other._completedChallenges, _completedChallenges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      xpPoints,
      level,
      streakDays,
      longestStreak,
      challengesCompleted,
      const DeepCollectionEquality().hash(_activeChallenges),
      const DeepCollectionEquality().hash(_completedChallenges));

  @override
  String toString() {
    return 'UserGameStatsModel(xpPoints: $xpPoints, level: $level, streakDays: $streakDays, longestStreak: $longestStreak, challengesCompleted: $challengesCompleted, activeChallenges: $activeChallenges, completedChallenges: $completedChallenges)';
  }
}

/// @nodoc
abstract mixin class _$UserGameStatsModelCopyWith<$Res>
    implements $UserGameStatsModelCopyWith<$Res> {
  factory _$UserGameStatsModelCopyWith(
          _UserGameStatsModel value, $Res Function(_UserGameStatsModel) _then) =
      __$UserGameStatsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'xp_points') int xpPoints,
      int level,
      @JsonKey(name: 'streak_days') int streakDays,
      @JsonKey(name: 'longest_streak') int longestStreak,
      @JsonKey(name: 'challenges_completed') int challengesCompleted,
      @JsonKey(name: 'active_challenges') List<ChallengeModel> activeChallenges,
      @JsonKey(name: 'completed_challenges')
      List<ChallengeModel> completedChallenges});
}

/// @nodoc
class __$UserGameStatsModelCopyWithImpl<$Res>
    implements _$UserGameStatsModelCopyWith<$Res> {
  __$UserGameStatsModelCopyWithImpl(this._self, this._then);

  final _UserGameStatsModel _self;
  final $Res Function(_UserGameStatsModel) _then;

  /// Create a copy of UserGameStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? xpPoints = null,
    Object? level = null,
    Object? streakDays = null,
    Object? longestStreak = null,
    Object? challengesCompleted = null,
    Object? activeChallenges = null,
    Object? completedChallenges = null,
  }) {
    return _then(_UserGameStatsModel(
      xpPoints: null == xpPoints
          ? _self.xpPoints
          : xpPoints // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      streakDays: null == streakDays
          ? _self.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _self.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      challengesCompleted: null == challengesCompleted
          ? _self.challengesCompleted
          : challengesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      activeChallenges: null == activeChallenges
          ? _self._activeChallenges
          : activeChallenges // ignore: cast_nullable_to_non_nullable
              as List<ChallengeModel>,
      completedChallenges: null == completedChallenges
          ? _self._completedChallenges
          : completedChallenges // ignore: cast_nullable_to_non_nullable
              as List<ChallengeModel>,
    ));
  }
}

// dart format on
