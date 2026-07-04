// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {
  @JsonKey(name: 'current_balance')
  double get currentBalance;
  @JsonKey(name: 'monthly_income')
  double get monthlyIncome;
  @JsonKey(name: 'monthly_expenses')
  double get monthlyExpenses;
  @JsonKey(name: 'savings_rate')
  double get savingsRate;
  @JsonKey(name: 'ai_risk_score')
  int get aiRiskScore;
  @JsonKey(name: 'emotional_score')
  int get emotionalScore;
  @JsonKey(name: 'balance_history')
  List<BalancePointModel> get balanceHistory;
  @JsonKey(name: 'weekly_spending')
  List<SpendingPointModel> get weeklySpending;
  @JsonKey(name: 'streak_days')
  int get streakDays;
  @JsonKey(name: 'xp_points')
  int get xpPoints;
  int get level;

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DashboardModelCopyWith<DashboardModel> get copyWith =>
      _$DashboardModelCopyWithImpl<DashboardModel>(
          this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DashboardModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'DashboardModel(currentBalance: $currentBalance, monthlyIncome: $monthlyIncome, monthlyExpenses: $monthlyExpenses, savingsRate: $savingsRate, aiRiskScore: $aiRiskScore, emotionalScore: $emotionalScore, balanceHistory: $balanceHistory, weeklySpending: $weeklySpending, streakDays: $streakDays, xpPoints: $xpPoints, level: $level)';
  }
}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res> {
  factory $DashboardModelCopyWith(
          DashboardModel value, $Res Function(DashboardModel) _then) =
      _$DashboardModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_balance') double currentBalance,
      @JsonKey(name: 'monthly_income') double monthlyIncome,
      @JsonKey(name: 'monthly_expenses') double monthlyExpenses,
      @JsonKey(name: 'savings_rate') double savingsRate,
      @JsonKey(name: 'ai_risk_score') int aiRiskScore,
      @JsonKey(name: 'emotional_score') int emotionalScore,
      @JsonKey(name: 'balance_history') List<BalancePointModel> balanceHistory,
      @JsonKey(name: 'weekly_spending') List<SpendingPointModel> weeklySpending,
      @JsonKey(name: 'streak_days') int streakDays,
      @JsonKey(name: 'xp_points') int xpPoints,
      int level});
}

/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

  /// Create a copy of DashboardModel
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
              as List<BalancePointModel>,
      weeklySpending: null == weeklySpending
          ? _self.weeklySpending
          : weeklySpending // ignore: cast_nullable_to_non_nullable
              as List<SpendingPointModel>,
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

/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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
    TResult Function(_DashboardModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardModel() when $default != null:
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
    TResult Function(_DashboardModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardModel():
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
    TResult? Function(_DashboardModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardModel() when $default != null:
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
            @JsonKey(name: 'current_balance') double currentBalance,
            @JsonKey(name: 'monthly_income') double monthlyIncome,
            @JsonKey(name: 'monthly_expenses') double monthlyExpenses,
            @JsonKey(name: 'savings_rate') double savingsRate,
            @JsonKey(name: 'ai_risk_score') int aiRiskScore,
            @JsonKey(name: 'emotional_score') int emotionalScore,
            @JsonKey(name: 'balance_history')
            List<BalancePointModel> balanceHistory,
            @JsonKey(name: 'weekly_spending')
            List<SpendingPointModel> weeklySpending,
            @JsonKey(name: 'streak_days') int streakDays,
            @JsonKey(name: 'xp_points') int xpPoints,
            int level)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DashboardModel() when $default != null:
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
            @JsonKey(name: 'current_balance') double currentBalance,
            @JsonKey(name: 'monthly_income') double monthlyIncome,
            @JsonKey(name: 'monthly_expenses') double monthlyExpenses,
            @JsonKey(name: 'savings_rate') double savingsRate,
            @JsonKey(name: 'ai_risk_score') int aiRiskScore,
            @JsonKey(name: 'emotional_score') int emotionalScore,
            @JsonKey(name: 'balance_history')
            List<BalancePointModel> balanceHistory,
            @JsonKey(name: 'weekly_spending')
            List<SpendingPointModel> weeklySpending,
            @JsonKey(name: 'streak_days') int streakDays,
            @JsonKey(name: 'xp_points') int xpPoints,
            int level)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardModel():
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
            @JsonKey(name: 'current_balance') double currentBalance,
            @JsonKey(name: 'monthly_income') double monthlyIncome,
            @JsonKey(name: 'monthly_expenses') double monthlyExpenses,
            @JsonKey(name: 'savings_rate') double savingsRate,
            @JsonKey(name: 'ai_risk_score') int aiRiskScore,
            @JsonKey(name: 'emotional_score') int emotionalScore,
            @JsonKey(name: 'balance_history')
            List<BalancePointModel> balanceHistory,
            @JsonKey(name: 'weekly_spending')
            List<SpendingPointModel> weeklySpending,
            @JsonKey(name: 'streak_days') int streakDays,
            @JsonKey(name: 'xp_points') int xpPoints,
            int level)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DashboardModel() when $default != null:
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
@JsonSerializable()
class _DashboardModel implements DashboardModel {
  const _DashboardModel(
      {@JsonKey(name: 'current_balance') required this.currentBalance,
      @JsonKey(name: 'monthly_income') required this.monthlyIncome,
      @JsonKey(name: 'monthly_expenses') required this.monthlyExpenses,
      @JsonKey(name: 'savings_rate') required this.savingsRate,
      @JsonKey(name: 'ai_risk_score') required this.aiRiskScore,
      @JsonKey(name: 'emotional_score') required this.emotionalScore,
      @JsonKey(name: 'balance_history')
      required final List<BalancePointModel> balanceHistory,
      @JsonKey(name: 'weekly_spending')
      required final List<SpendingPointModel> weeklySpending,
      @JsonKey(name: 'streak_days') required this.streakDays,
      @JsonKey(name: 'xp_points') required this.xpPoints,
      required this.level})
      : _balanceHistory = balanceHistory,
        _weeklySpending = weeklySpending;
  factory _DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);

  @override
  @JsonKey(name: 'current_balance')
  final double currentBalance;
  @override
  @JsonKey(name: 'monthly_income')
  final double monthlyIncome;
  @override
  @JsonKey(name: 'monthly_expenses')
  final double monthlyExpenses;
  @override
  @JsonKey(name: 'savings_rate')
  final double savingsRate;
  @override
  @JsonKey(name: 'ai_risk_score')
  final int aiRiskScore;
  @override
  @JsonKey(name: 'emotional_score')
  final int emotionalScore;
  final List<BalancePointModel> _balanceHistory;
  @override
  @JsonKey(name: 'balance_history')
  List<BalancePointModel> get balanceHistory {
    if (_balanceHistory is EqualUnmodifiableListView) return _balanceHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_balanceHistory);
  }

  final List<SpendingPointModel> _weeklySpending;
  @override
  @JsonKey(name: 'weekly_spending')
  List<SpendingPointModel> get weeklySpending {
    if (_weeklySpending is EqualUnmodifiableListView) return _weeklySpending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeklySpending);
  }

  @override
  @JsonKey(name: 'streak_days')
  final int streakDays;
  @override
  @JsonKey(name: 'xp_points')
  final int xpPoints;
  @override
  final int level;

  /// Create a copy of DashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DashboardModelCopyWith<_DashboardModel> get copyWith =>
      __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DashboardModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'DashboardModel(currentBalance: $currentBalance, monthlyIncome: $monthlyIncome, monthlyExpenses: $monthlyExpenses, savingsRate: $savingsRate, aiRiskScore: $aiRiskScore, emotionalScore: $emotionalScore, balanceHistory: $balanceHistory, weeklySpending: $weeklySpending, streakDays: $streakDays, xpPoints: $xpPoints, level: $level)';
  }
}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res>
    implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(
          _DashboardModel value, $Res Function(_DashboardModel) _then) =
      __$DashboardModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_balance') double currentBalance,
      @JsonKey(name: 'monthly_income') double monthlyIncome,
      @JsonKey(name: 'monthly_expenses') double monthlyExpenses,
      @JsonKey(name: 'savings_rate') double savingsRate,
      @JsonKey(name: 'ai_risk_score') int aiRiskScore,
      @JsonKey(name: 'emotional_score') int emotionalScore,
      @JsonKey(name: 'balance_history') List<BalancePointModel> balanceHistory,
      @JsonKey(name: 'weekly_spending') List<SpendingPointModel> weeklySpending,
      @JsonKey(name: 'streak_days') int streakDays,
      @JsonKey(name: 'xp_points') int xpPoints,
      int level});
}

/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

  /// Create a copy of DashboardModel
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
    return _then(_DashboardModel(
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
              as List<BalancePointModel>,
      weeklySpending: null == weeklySpending
          ? _self._weeklySpending
          : weeklySpending // ignore: cast_nullable_to_non_nullable
              as List<SpendingPointModel>,
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
mixin _$BalancePointModel {
  String get date;
  double get balance;

  /// Create a copy of BalancePointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BalancePointModelCopyWith<BalancePointModel> get copyWith =>
      _$BalancePointModelCopyWithImpl<BalancePointModel>(
          this as BalancePointModel, _$identity);

  /// Serializes this BalancePointModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BalancePointModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, balance);

  @override
  String toString() {
    return 'BalancePointModel(date: $date, balance: $balance)';
  }
}

/// @nodoc
abstract mixin class $BalancePointModelCopyWith<$Res> {
  factory $BalancePointModelCopyWith(
          BalancePointModel value, $Res Function(BalancePointModel) _then) =
      _$BalancePointModelCopyWithImpl;
  @useResult
  $Res call({String date, double balance});
}

/// @nodoc
class _$BalancePointModelCopyWithImpl<$Res>
    implements $BalancePointModelCopyWith<$Res> {
  _$BalancePointModelCopyWithImpl(this._self, this._then);

  final BalancePointModel _self;
  final $Res Function(BalancePointModel) _then;

  /// Create a copy of BalancePointModel
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
              as String,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [BalancePointModel].
extension BalancePointModelPatterns on BalancePointModel {
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
    TResult Function(_BalancePointModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalancePointModel() when $default != null:
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
    TResult Function(_BalancePointModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePointModel():
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
    TResult? Function(_BalancePointModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePointModel() when $default != null:
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
    TResult Function(String date, double balance)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalancePointModel() when $default != null:
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
    TResult Function(String date, double balance) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePointModel():
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
    TResult? Function(String date, double balance)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancePointModel() when $default != null:
        return $default(_that.date, _that.balance);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BalancePointModel implements BalancePointModel {
  const _BalancePointModel({required this.date, required this.balance});
  factory _BalancePointModel.fromJson(Map<String, dynamic> json) =>
      _$BalancePointModelFromJson(json);

  @override
  final String date;
  @override
  final double balance;

  /// Create a copy of BalancePointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalancePointModelCopyWith<_BalancePointModel> get copyWith =>
      __$BalancePointModelCopyWithImpl<_BalancePointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BalancePointModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalancePointModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, balance);

  @override
  String toString() {
    return 'BalancePointModel(date: $date, balance: $balance)';
  }
}

/// @nodoc
abstract mixin class _$BalancePointModelCopyWith<$Res>
    implements $BalancePointModelCopyWith<$Res> {
  factory _$BalancePointModelCopyWith(
          _BalancePointModel value, $Res Function(_BalancePointModel) _then) =
      __$BalancePointModelCopyWithImpl;
  @override
  @useResult
  $Res call({String date, double balance});
}

/// @nodoc
class __$BalancePointModelCopyWithImpl<$Res>
    implements _$BalancePointModelCopyWith<$Res> {
  __$BalancePointModelCopyWithImpl(this._self, this._then);

  final _BalancePointModel _self;
  final $Res Function(_BalancePointModel) _then;

  /// Create a copy of BalancePointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? balance = null,
  }) {
    return _then(_BalancePointModel(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$SpendingPointModel {
  String get day;
  double get amount;
  double get impulsive;

  /// Create a copy of SpendingPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpendingPointModelCopyWith<SpendingPointModel> get copyWith =>
      _$SpendingPointModelCopyWithImpl<SpendingPointModel>(
          this as SpendingPointModel, _$identity);

  /// Serializes this SpendingPointModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpendingPointModel &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.impulsive, impulsive) ||
                other.impulsive == impulsive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, amount, impulsive);

  @override
  String toString() {
    return 'SpendingPointModel(day: $day, amount: $amount, impulsive: $impulsive)';
  }
}

/// @nodoc
abstract mixin class $SpendingPointModelCopyWith<$Res> {
  factory $SpendingPointModelCopyWith(
          SpendingPointModel value, $Res Function(SpendingPointModel) _then) =
      _$SpendingPointModelCopyWithImpl;
  @useResult
  $Res call({String day, double amount, double impulsive});
}

/// @nodoc
class _$SpendingPointModelCopyWithImpl<$Res>
    implements $SpendingPointModelCopyWith<$Res> {
  _$SpendingPointModelCopyWithImpl(this._self, this._then);

  final SpendingPointModel _self;
  final $Res Function(SpendingPointModel) _then;

  /// Create a copy of SpendingPointModel
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

/// Adds pattern-matching-related methods to [SpendingPointModel].
extension SpendingPointModelPatterns on SpendingPointModel {
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
    TResult Function(_SpendingPointModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpendingPointModel() when $default != null:
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
    TResult Function(_SpendingPointModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpendingPointModel():
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
    TResult? Function(_SpendingPointModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpendingPointModel() when $default != null:
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
      case _SpendingPointModel() when $default != null:
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
      case _SpendingPointModel():
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
      case _SpendingPointModel() when $default != null:
        return $default(_that.day, _that.amount, _that.impulsive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SpendingPointModel implements SpendingPointModel {
  const _SpendingPointModel(
      {required this.day, required this.amount, required this.impulsive});
  factory _SpendingPointModel.fromJson(Map<String, dynamic> json) =>
      _$SpendingPointModelFromJson(json);

  @override
  final String day;
  @override
  final double amount;
  @override
  final double impulsive;

  /// Create a copy of SpendingPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpendingPointModelCopyWith<_SpendingPointModel> get copyWith =>
      __$SpendingPointModelCopyWithImpl<_SpendingPointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpendingPointModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpendingPointModel &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.impulsive, impulsive) ||
                other.impulsive == impulsive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, amount, impulsive);

  @override
  String toString() {
    return 'SpendingPointModel(day: $day, amount: $amount, impulsive: $impulsive)';
  }
}

/// @nodoc
abstract mixin class _$SpendingPointModelCopyWith<$Res>
    implements $SpendingPointModelCopyWith<$Res> {
  factory _$SpendingPointModelCopyWith(
          _SpendingPointModel value, $Res Function(_SpendingPointModel) _then) =
      __$SpendingPointModelCopyWithImpl;
  @override
  @useResult
  $Res call({String day, double amount, double impulsive});
}

/// @nodoc
class __$SpendingPointModelCopyWithImpl<$Res>
    implements _$SpendingPointModelCopyWith<$Res> {
  __$SpendingPointModelCopyWithImpl(this._self, this._then);

  final _SpendingPointModel _self;
  final $Res Function(_SpendingPointModel) _then;

  /// Create a copy of SpendingPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? day = null,
    Object? amount = null,
    Object? impulsive = null,
  }) {
    return _then(_SpendingPointModel(
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
