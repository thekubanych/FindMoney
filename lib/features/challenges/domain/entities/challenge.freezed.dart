// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Challenge {
  String get id;
  String get title;
  String get description;
  int get rewardPoints;
  ChallengeType get type;
  ChallengeStatus get status;
  double get progress;
  DateTime? get expiresAt;
  String? get icon;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChallengeCopyWith<Challenge> get copyWith =>
      _$ChallengeCopyWithImpl<Challenge>(this as Challenge, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Challenge &&
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
                other.expiresAt == expiresAt) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      rewardPoints, type, status, progress, expiresAt, icon);

  @override
  String toString() {
    return 'Challenge(id: $id, title: $title, description: $description, rewardPoints: $rewardPoints, type: $type, status: $status, progress: $progress, expiresAt: $expiresAt, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) _then) =
      _$ChallengeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int rewardPoints,
      ChallengeType type,
      ChallengeStatus status,
      double progress,
      DateTime? expiresAt,
      String? icon});
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res> implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._self, this._then);

  final Challenge _self;
  final $Res Function(Challenge) _then;

  /// Create a copy of Challenge
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
    Object? icon = freezed,
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
              as ChallengeType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChallengeStatus,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Challenge].
extension ChallengePatterns on Challenge {
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
    TResult Function(_Challenge value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Challenge() when $default != null:
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
    TResult Function(_Challenge value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Challenge():
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
    TResult? Function(_Challenge value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Challenge() when $default != null:
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
            int rewardPoints,
            ChallengeType type,
            ChallengeStatus status,
            double progress,
            DateTime? expiresAt,
            String? icon)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Challenge() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.rewardPoints,
            _that.type,
            _that.status,
            _that.progress,
            _that.expiresAt,
            _that.icon);
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
            int rewardPoints,
            ChallengeType type,
            ChallengeStatus status,
            double progress,
            DateTime? expiresAt,
            String? icon)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Challenge():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.rewardPoints,
            _that.type,
            _that.status,
            _that.progress,
            _that.expiresAt,
            _that.icon);
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
            int rewardPoints,
            ChallengeType type,
            ChallengeStatus status,
            double progress,
            DateTime? expiresAt,
            String? icon)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Challenge() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.rewardPoints,
            _that.type,
            _that.status,
            _that.progress,
            _that.expiresAt,
            _that.icon);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Challenge implements Challenge {
  const _Challenge(
      {required this.id,
      required this.title,
      required this.description,
      required this.rewardPoints,
      required this.type,
      required this.status,
      required this.progress,
      this.expiresAt,
      this.icon});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int rewardPoints;
  @override
  final ChallengeType type;
  @override
  final ChallengeStatus status;
  @override
  final double progress;
  @override
  final DateTime? expiresAt;
  @override
  final String? icon;

  /// Create a copy of Challenge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChallengeCopyWith<_Challenge> get copyWith =>
      __$ChallengeCopyWithImpl<_Challenge>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Challenge &&
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
                other.expiresAt == expiresAt) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      rewardPoints, type, status, progress, expiresAt, icon);

  @override
  String toString() {
    return 'Challenge(id: $id, title: $title, description: $description, rewardPoints: $rewardPoints, type: $type, status: $status, progress: $progress, expiresAt: $expiresAt, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$ChallengeCopyWith<$Res>
    implements $ChallengeCopyWith<$Res> {
  factory _$ChallengeCopyWith(
          _Challenge value, $Res Function(_Challenge) _then) =
      __$ChallengeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int rewardPoints,
      ChallengeType type,
      ChallengeStatus status,
      double progress,
      DateTime? expiresAt,
      String? icon});
}

/// @nodoc
class __$ChallengeCopyWithImpl<$Res> implements _$ChallengeCopyWith<$Res> {
  __$ChallengeCopyWithImpl(this._self, this._then);

  final _Challenge _self;
  final $Res Function(_Challenge) _then;

  /// Create a copy of Challenge
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
    Object? icon = freezed,
  }) {
    return _then(_Challenge(
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
              as ChallengeType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChallengeStatus,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: freezed == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UserGameStats {
  int get xpPoints;
  int get level;
  int get streakDays;
  int get longestStreak;
  int get challengesCompleted;
  List<Challenge> get activeChallenges;
  List<Challenge> get completedChallenges;

  /// Create a copy of UserGameStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserGameStatsCopyWith<UserGameStats> get copyWith =>
      _$UserGameStatsCopyWithImpl<UserGameStats>(
          this as UserGameStats, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserGameStats &&
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
    return 'UserGameStats(xpPoints: $xpPoints, level: $level, streakDays: $streakDays, longestStreak: $longestStreak, challengesCompleted: $challengesCompleted, activeChallenges: $activeChallenges, completedChallenges: $completedChallenges)';
  }
}

/// @nodoc
abstract mixin class $UserGameStatsCopyWith<$Res> {
  factory $UserGameStatsCopyWith(
          UserGameStats value, $Res Function(UserGameStats) _then) =
      _$UserGameStatsCopyWithImpl;
  @useResult
  $Res call(
      {int xpPoints,
      int level,
      int streakDays,
      int longestStreak,
      int challengesCompleted,
      List<Challenge> activeChallenges,
      List<Challenge> completedChallenges});
}

/// @nodoc
class _$UserGameStatsCopyWithImpl<$Res>
    implements $UserGameStatsCopyWith<$Res> {
  _$UserGameStatsCopyWithImpl(this._self, this._then);

  final UserGameStats _self;
  final $Res Function(UserGameStats) _then;

  /// Create a copy of UserGameStats
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
              as List<Challenge>,
      completedChallenges: null == completedChallenges
          ? _self.completedChallenges
          : completedChallenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserGameStats].
extension UserGameStatsPatterns on UserGameStats {
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
    TResult Function(_UserGameStats value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserGameStats() when $default != null:
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
    TResult Function(_UserGameStats value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStats():
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
    TResult? Function(_UserGameStats value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStats() when $default != null:
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
            int xpPoints,
            int level,
            int streakDays,
            int longestStreak,
            int challengesCompleted,
            List<Challenge> activeChallenges,
            List<Challenge> completedChallenges)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserGameStats() when $default != null:
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
            int xpPoints,
            int level,
            int streakDays,
            int longestStreak,
            int challengesCompleted,
            List<Challenge> activeChallenges,
            List<Challenge> completedChallenges)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStats():
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
            int xpPoints,
            int level,
            int streakDays,
            int longestStreak,
            int challengesCompleted,
            List<Challenge> activeChallenges,
            List<Challenge> completedChallenges)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserGameStats() when $default != null:
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

class _UserGameStats implements UserGameStats {
  const _UserGameStats(
      {required this.xpPoints,
      required this.level,
      required this.streakDays,
      required this.longestStreak,
      required this.challengesCompleted,
      required final List<Challenge> activeChallenges,
      required final List<Challenge> completedChallenges})
      : _activeChallenges = activeChallenges,
        _completedChallenges = completedChallenges;

  @override
  final int xpPoints;
  @override
  final int level;
  @override
  final int streakDays;
  @override
  final int longestStreak;
  @override
  final int challengesCompleted;
  final List<Challenge> _activeChallenges;
  @override
  List<Challenge> get activeChallenges {
    if (_activeChallenges is EqualUnmodifiableListView)
      return _activeChallenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeChallenges);
  }

  final List<Challenge> _completedChallenges;
  @override
  List<Challenge> get completedChallenges {
    if (_completedChallenges is EqualUnmodifiableListView)
      return _completedChallenges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedChallenges);
  }

  /// Create a copy of UserGameStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserGameStatsCopyWith<_UserGameStats> get copyWith =>
      __$UserGameStatsCopyWithImpl<_UserGameStats>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserGameStats &&
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
    return 'UserGameStats(xpPoints: $xpPoints, level: $level, streakDays: $streakDays, longestStreak: $longestStreak, challengesCompleted: $challengesCompleted, activeChallenges: $activeChallenges, completedChallenges: $completedChallenges)';
  }
}

/// @nodoc
abstract mixin class _$UserGameStatsCopyWith<$Res>
    implements $UserGameStatsCopyWith<$Res> {
  factory _$UserGameStatsCopyWith(
          _UserGameStats value, $Res Function(_UserGameStats) _then) =
      __$UserGameStatsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int xpPoints,
      int level,
      int streakDays,
      int longestStreak,
      int challengesCompleted,
      List<Challenge> activeChallenges,
      List<Challenge> completedChallenges});
}

/// @nodoc
class __$UserGameStatsCopyWithImpl<$Res>
    implements _$UserGameStatsCopyWith<$Res> {
  __$UserGameStatsCopyWithImpl(this._self, this._then);

  final _UserGameStats _self;
  final $Res Function(_UserGameStats) _then;

  /// Create a copy of UserGameStats
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
    return _then(_UserGameStats(
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
              as List<Challenge>,
      completedChallenges: null == completedChallenges
          ? _self._completedChallenges
          : completedChallenges // ignore: cast_nullable_to_non_nullable
              as List<Challenge>,
    ));
  }
}

// dart format on
