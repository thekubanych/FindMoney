// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardData {
  double get currentBalance;
  double get monthlyIncome;
  double get monthlyExpenses;
  double get savingsRate;
  int get aiRiskScore;
  int get emotionalScore;
  List<BalancePoint> get balanceHistory;
  List<SpendingPoint> get weeklySpending;
  int get streakDays;
  int get xpPoints;
  int get level;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      _$DashboardDataCopyWithImpl<DashboardData>(
          this as DashboardData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardData &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.monthlyExpenses, monthlyExpenses) ||
                other.monthlyExpenses == monthlyExpenses) &&
            (identical(other.savingsRate, savingsRate) ||
                other.savingsRate == savingsRate) &&
            (identical(other.aiRiskScore, aiRiskScore) ||
                other.aiRiskScore == aiRiskScore) &&
            (identical(other.emotionalScore, emotionalScore) ||
                other.emotionalScore == emotionalScore) &&
            const DeepCollectionEquality()
                .equals(other.balanceHistory, balanceHistory) &&
            const DeepCollectionEquality()
                .equals(other.weeklySpending, weeklySpending) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.xpPoints, xpPoints) ||
                other.xpPoints == xpPoints) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentBalance,
      monthlyIncome,
      monthlyExpenses,
      savingsRate,
      aiRiskScore,
      emotionalScore,
      const DeepCollectionEquality().hash(balanceHistory),
      const DeepCollectionEquality().hash(weeklySpending),
      streakDays,
      xpPoints,
      level);

  @override
  String toString() {
    return 'DashboardData(currentBalance: $currentBalance, monthlyIncome: $monthlyIncome, monthlyExpenses: $monthlyExpenses, savingsRate: $savingsRate, aiRiskScore: $aiRiskScore, emotionalScore: $emotionalScore, balanceHistory: $balanceHistory, weeklySpending: $weeklySpending, streakDays: $streakDays, xpPoints: $xpPoints, level: $level)';
  }
}

/// @nodoc
abstract mixin class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) _then) =
      _$DashboardDataCopyWithImpl;
  @useResult
  $Res call(
      {double currentBalance,
      double monthlyIncome,
      double monthlyExpenses,
      double savingsRate,
      int aiRiskScore,
      int emotionalScore,
      List<BalancePoint> balanceHistory,
      List<SpendingPoint> weeklySpending,
      int streakDays,
      int xpPoints,
      int level});
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._self, this._then);

  final DashboardData _self;
  final $Res Function(DashboardData) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBalance = null,
    Object? monthlyIncome = null,
    Object? monthlyExpenses = null,
    Object? savingsRate = null,
    Object? aiRiskScore = null,
    Object? emotionalScore = null,
    Object? balanceHistory = null,
    Object? weeklySpending = null,
    Object? streakDays = null,
    Object? xpPoints = null,
    Object? level = null,
  }) {
    return _then(_self.copyWith(
      currentBalance: null == currentBalance
          ? _self.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyIncome: null == monthlyIncome
          ? _self.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyExpenses: null == monthlyExpenses
          ? _self.monthlyExpenses
          : monthlyExpenses // ignore: cast_nullable_to_non_nullable
              as double,
      savingsRate: null == savingsRate
          ? _self.savingsRate
          : savingsRate // ignore: cast_nullable_to_non_nullable
              as double,
      aiRiskScore: null == aiRiskScore
          ? _self.aiRiskScore
          : aiRiskScore // ignore: cast_nullable_to_non_nullable
              as int,
      emotionalScore: null == emotionalScore
          ? _self.emotionalScore
          : emotionalScore // ignore: cast_nullable_to_non_nullable
              as int,
      balanceHistory: null == balanceHistory
          ? _self.balanceHistory
          : balanceHistory // ignore: cast_nullable_to_non_nullable
              as List<BalancePoint>,
      weeklySpending: null == weeklySpending
          ? _self.weeklySpending
          : weeklySpending // ignore: cast_nullable_to_non_nullable
              as List<SpendingPoint>,
      streakDays: null == streakDays
          ? _self.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int,
      xpPoints: null == xpPoints
          ? _self.xpPoints
          : xpPoints // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [DashboardData].
extension DashboardDataPatterns on DashboardData {
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
    TResult Function(_DashboardData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardData() when $default != null:
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
    TResult Function(_DashboardData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardData():
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
    TResult? Function(_DashboardData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardData() when $default != null:
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
            double currentBalance,
            double monthlyIncome,
            double monthlyExpenses,
            double savingsRate,
            int aiRiskScore,
            int emotionalScore,
            List<BalancePoint> balanceHistory,
            List<SpendingPoint> weeklySpending,
            int streakDays,
            int xpPoints,
            int level)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardData() when $default != null:
        return $default(
            _that.currentBalance,
            _that.monthlyIncome,
            _that.monthlyExpenses,
            _that.savingsRate,
            _that.aiRiskScore,
            _that.emotionalScore,
            _that.balanceHistory,
            _that.weeklySpending,
            _that.streakDays,
            _that.xpPoints,
            _that.level);
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
            double currentBalance,
            double monthlyIncome,
            double monthlyExpenses,
            double savingsRate,
            int aiRiskScore,
            int emotionalScore,
            List<BalancePoint> balanceHistory,
            List<SpendingPoint> weeklySpending,
            int streakDays,
            int xpPoints,
            int level)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardData():
        return $default(
            _that.currentBalance,
            _that.monthlyIncome,
            _that.monthlyExpenses,
            _that.savingsRate,
            _that.aiRiskScore,
            _that.emotionalScore,
            _that.balanceHistory,
            _that.weeklySpending,
            _that.streakDays,
            _that.xpPoints,
            _that.level);
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
            double currentBalance,
            double monthlyIncome,
            double monthlyExpenses,
            double savingsRate,
            int aiRiskScore,
            int emotionalScore,
            List<BalancePoint> balanceHistory,
            List<SpendingPoint> weeklySpending,
            int streakDays,
            int xpPoints,
            int level)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardData() when $default != null:
        return $default(
            _that.currentBalance,
            _that.monthlyIncome,
            _that.monthlyExpenses,
            _that.savingsRate,
            _that.aiRiskScore,
            _that.emotionalScore,
            _that.balanceHistory,
            _that.weeklySpending,
            _that.streakDays,
            _that.xpPoints,
            _that.level);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DashboardData implements DashboardData {
  const _DashboardData(
      {required this.currentBalance,
      required this.monthlyIncome,
      required this.monthlyExpenses,
      required this.savingsRate,
      required this.aiRiskScore,
      required this.emotionalScore,
      required final List<BalancePoint> balanceHistory,
      required final List<SpendingPoint> weeklySpending,
      required this.streakDays,
      required this.xpPoints,
      required this.level})
      : _balanceHistory = balanceHistory,
        _weeklySpending = weeklySpending;

  @override
  final double currentBalance;
  @override
  final double monthlyIncome;
  @override
  final double monthlyExpenses;
  @override
  final double savingsRate;
  @override
  final int aiRiskScore;
  @override
  final int emotionalScore;
  final List<BalancePoint> _balanceHistory;
  @override
  List<BalancePoint> get balanceHistory {
    if (_balanceHistory is EqualUnmodifiableListView) return _balanceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_balanceHistory);
  }

  final List<SpendingPoint> _weeklySpending;
  @override
  List<SpendingPoint> get weeklySpending {
    if (_weeklySpending is EqualUnmodifiableListView) return _weeklySpending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklySpending);
  }

  @override
  final int streakDays;
  @override
  final int xpPoints;
  @override
  final int level;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DashboardDataCopyWith<_DashboardData> get copyWith =>
      __$DashboardDataCopyWithImpl<_DashboardData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardData &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.monthlyExpenses, monthlyExpenses) ||
                other.monthlyExpenses == monthlyExpenses) &&
            (identical(other.savingsRate, savingsRate) ||
                other.savingsRate == savingsRate) &&
            (identical(other.aiRiskScore, aiRiskScore) ||
                other.aiRiskScore == aiRiskScore) &&
            (identical(other.emotionalScore, emotionalScore) ||
                other.emotionalScore == emotionalScore) &&
            const DeepCollectionEquality()
                .equals(other._balanceHistory, _balanceHistory) &&
            const DeepCollectionEquality()
                .equals(other._weeklySpending, _weeklySpending) &&
            (identical(other.streakDays, streakDays) ||
                other.streakDays == streakDays) &&
            (identical(other.xpPoints, xpPoints) ||
                other.xpPoints == xpPoints) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentBalance,
      monthlyIncome,
      monthlyExpenses,
      savingsRate,
      aiRiskScore,
      emotionalScore,
      const DeepCollectionEquality().hash(_balanceHistory),
      const DeepCollectionEquality().hash(_weeklySpending),
      streakDays,
      xpPoints,
      level);

  @override
  String toString() {
    return 'DashboardData(currentBalance: $currentBalance, monthlyIncome: $monthlyIncome, monthlyExpenses: $monthlyExpenses, savingsRate: $savingsRate, aiRiskScore: $aiRiskScore, emotionalScore: $emotionalScore, balanceHistory: $balanceHistory, weeklySpending: $weeklySpending, streakDays: $streakDays, xpPoints: $xpPoints, level: $level)';
  }
}

/// @nodoc
abstract mixin class _$DashboardDataCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$DashboardDataCopyWith(
          _DashboardData value, $Res Function(_DashboardData) _then) =
      __$DashboardDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double currentBalance,
      double monthlyIncome,
      double monthlyExpenses,
      double savingsRate,
      int aiRiskScore,
      int emotionalScore,
      List<BalancePoint> balanceHistory,
      List<SpendingPoint> weeklySpending,
      int streakDays,
      int xpPoints,
      int level});
}

/// @nodoc
class __$DashboardDataCopyWithImpl<$Res>
    implements _$DashboardDataCopyWith<$Res> {
  __$DashboardDataCopyWithImpl(this._self, this._then);

  final _DashboardData _self;
  final $Res Function(_DashboardData) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentBalance = null,
    Object? monthlyIncome = null,
    Object? monthlyExpenses = null,
    Object? savingsRate = null,
    Object? aiRiskScore = null,
    Object? emotionalScore = null,
    Object? balanceHistory = null,
    Object? weeklySpending = null,
    Object? streakDays = null,
    Object? xpPoints = null,
    Object? level = null,
  }) {
    return _then(_DashboardData(
      currentBalance: null == currentBalance
          ? _self.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyIncome: null == monthlyIncome
          ? _self.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyExpenses: null == monthlyExpenses
          ? _self.monthlyExpenses
          : monthlyExpenses // ignore: cast_nullable_to_non_nullable
              as double,
      savingsRate: null == savingsRate
          ? _self.savingsRate
          : savingsRate // ignore: cast_nullable_to_non_nullable
              as double,
      aiRiskScore: null == aiRiskScore
          ? _self.aiRiskScore
          : aiRiskScore // ignore: cast_nullable_to_non_nullable
              as int,
      emotionalScore: null == emotionalScore
          ? _self.emotionalScore
          : emotionalScore // ignore: cast_nullable_to_non_nullable
              as int,
      balanceHistory: null == balanceHistory
          ? _self._balanceHistory
          : balanceHistory // ignore: cast_nullable_to_non_nullable
              as List<BalancePoint>,
      weeklySpending: null == weeklySpending
          ? _self._weeklySpending
          : weeklySpending // ignore: cast_nullable_to_non_nullable
              as List<SpendingPoint>,
      streakDays: null == streakDays
          ? _self.streakDays
          : streakDays // ignore: cast_nullable_to_non_nullable
              as int,
      xpPoints: null == xpPoints
          ? _self.xpPoints
          : xpPoints // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$BalancePoint {
  DateTime get date;
  double get balance;

  /// Create a copy of BalancePoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BalancePointCopyWith<BalancePoint> get copyWith =>
      _$BalancePointCopyWithImpl<BalancePoint>(
          this as BalancePoint, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BalancePoint &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, balance);

  @override
  String toString() {
    return 'BalancePoint(date: $date, balance: $balance)';
  }
}

/// @nodoc
abstract mixin class $BalancePointCopyWith<$Res> {
  factory $BalancePointCopyWith(
          BalancePoint value, $Res Function(BalancePoint) _then) =
      _$BalancePointCopyWithImpl;
  @useResult
  $Res call({DateTime date, double balance});
}

/// @nodoc
class _$BalancePointCopyWithImpl<$Res> implements $BalancePointCopyWith<$Res> {
  _$BalancePointCopyWithImpl(this._self, this._then);

  final BalancePoint _self;
  final $Res Function(BalancePoint) _then;

  /// Create a copy of BalancePoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? balance = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [BalancePoint].
extension BalancePointPatterns on BalancePoint {
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
    TResult Function(_BalancePoint value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalancePoint() when $default != null:
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
    TResult Function(_BalancePoint value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePoint():
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
    TResult? Function(_BalancePoint value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePoint() when $default != null:
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
    TResult Function(DateTime date, double balance)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalancePoint() when $default != null:
        return $default(_that.date, _that.balance);
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
    TResult Function(DateTime date, double balance) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePoint():
        return $default(_that.date, _that.balance);
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
    TResult? Function(DateTime date, double balance)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePoint() when $default != null:
        return $default(_that.date, _that.balance);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BalancePoint implements BalancePoint {
  const _BalancePoint({required this.date, required this.balance});

  @override
  final DateTime date;
  @override
  final double balance;

  /// Create a copy of BalancePoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalancePointCopyWith<_BalancePoint> get copyWith =>
      __$BalancePointCopyWithImpl<_BalancePoint>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalancePoint &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, balance);

  @override
  String toString() {
    return 'BalancePoint(date: $date, balance: $balance)';
  }
}

/// @nodoc
abstract mixin class _$BalancePointCopyWith<$Res>
    implements $BalancePointCopyWith<$Res> {
  factory _$BalancePointCopyWith(
          _BalancePoint value, $Res Function(_BalancePoint) _then) =
      __$BalancePointCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date, double balance});
}

/// @nodoc
class __$BalancePointCopyWithImpl<$Res>
    implements _$BalancePointCopyWith<$Res> {
  __$BalancePointCopyWithImpl(this._self, this._then);

  final _BalancePoint _self;
  final $Res Function(_BalancePoint) _then;

  /// Create a copy of BalancePoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? balance = null,
  }) {
    return _then(_BalancePoint(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$SpendingPoint {
  String get day;
  double get amount;
  double get impulsive;

  /// Create a copy of SpendingPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpendingPointCopyWith<SpendingPoint> get copyWith =>
      _$SpendingPointCopyWithImpl<SpendingPoint>(
          this as SpendingPoint, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpendingPoint &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.impulsive, impulsive) ||
                other.impulsive == impulsive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, amount, impulsive);

  @override
  String toString() {
    return 'SpendingPoint(day: $day, amount: $amount, impulsive: $impulsive)';
  }
}

/// @nodoc
abstract mixin class $SpendingPointCopyWith<$Res> {
  factory $SpendingPointCopyWith(
          SpendingPoint value, $Res Function(SpendingPoint) _then) =
      _$SpendingPointCopyWithImpl;
  @useResult
  $Res call({String day, double amount, double impulsive});
}

/// @nodoc
class _$SpendingPointCopyWithImpl<$Res>
    implements $SpendingPointCopyWith<$Res> {
  _$SpendingPointCopyWithImpl(this._self, this._then);

  final SpendingPoint _self;
  final $Res Function(SpendingPoint) _then;

  /// Create a copy of SpendingPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? amount = null,
    Object? impulsive = null,
  }) {
    return _then(_self.copyWith(
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      impulsive: null == impulsive
          ? _self.impulsive
          : impulsive // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpendingPoint].
extension SpendingPointPatterns on SpendingPoint {
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
    TResult Function(_SpendingPoint value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpendingPoint() when $default != null:
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
    TResult Function(_SpendingPoint value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpendingPoint():
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
    TResult? Function(_SpendingPoint value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpendingPoint() when $default != null:
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
    TResult Function(String day, double amount, double impulsive)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpendingPoint() when $default != null:
        return $default(_that.day, _that.amount, _that.impulsive);
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
    TResult Function(String day, double amount, double impulsive) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpendingPoint():
        return $default(_that.day, _that.amount, _that.impulsive);
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
    TResult? Function(String day, double amount, double impulsive)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpendingPoint() when $default != null:
        return $default(_that.day, _that.amount, _that.impulsive);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SpendingPoint implements SpendingPoint {
  const _SpendingPoint(
      {required this.day, required this.amount, required this.impulsive});

  @override
  final String day;
  @override
  final double amount;
  @override
  final double impulsive;

  /// Create a copy of SpendingPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpendingPointCopyWith<_SpendingPoint> get copyWith =>
      __$SpendingPointCopyWithImpl<_SpendingPoint>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpendingPoint &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.impulsive, impulsive) ||
                other.impulsive == impulsive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, amount, impulsive);

  @override
  String toString() {
    return 'SpendingPoint(day: $day, amount: $amount, impulsive: $impulsive)';
  }
}

/// @nodoc
abstract mixin class _$SpendingPointCopyWith<$Res>
    implements $SpendingPointCopyWith<$Res> {
  factory _$SpendingPointCopyWith(
          _SpendingPoint value, $Res Function(_SpendingPoint) _then) =
      __$SpendingPointCopyWithImpl;
  @override
  @useResult
  $Res call({String day, double amount, double impulsive});
}

/// @nodoc
class __$SpendingPointCopyWithImpl<$Res>
    implements _$SpendingPointCopyWith<$Res> {
  __$SpendingPointCopyWithImpl(this._self, this._then);

  final _SpendingPoint _self;
  final $Res Function(_SpendingPoint) _then;

  /// Create a copy of SpendingPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = null,
    Object? amount = null,
    Object? impulsive = null,
  }) {
    return _then(_SpendingPoint(
      day: null == day
          ? _self.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      impulsive: null == impulsive
          ? _self.impulsive
          : impulsive // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
