// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnalyticsData {

 List<HeatmapDay> get heatmap; List<CategoryBreakdown> get categoryBreakdown; List<EmotionSpending> get emotionalSpending; RiskTimeline get riskTimeline; PeerComparison get comparison; AnalyticsScores get scores;
/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsDataCopyWith<AnalyticsData> get copyWith => _$AnalyticsDataCopyWithImpl<AnalyticsData>(this as AnalyticsData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsData&&const DeepCollectionEquality().equals(other.heatmap, heatmap)&&const DeepCollectionEquality().equals(other.categoryBreakdown, categoryBreakdown)&&const DeepCollectionEquality().equals(other.emotionalSpending, emotionalSpending)&&(identical(other.riskTimeline, riskTimeline) || other.riskTimeline == riskTimeline)&&(identical(other.comparison, comparison) || other.comparison == comparison)&&(identical(other.scores, scores) || other.scores == scores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(heatmap),const DeepCollectionEquality().hash(categoryBreakdown),const DeepCollectionEquality().hash(emotionalSpending),riskTimeline,comparison,scores);

@override
String toString() {
  return 'AnalyticsData(heatmap: $heatmap, categoryBreakdown: $categoryBreakdown, emotionalSpending: $emotionalSpending, riskTimeline: $riskTimeline, comparison: $comparison, scores: $scores)';
}


}

/// @nodoc
abstract mixin class $AnalyticsDataCopyWith<$Res>  {
  factory $AnalyticsDataCopyWith(AnalyticsData value, $Res Function(AnalyticsData) _then) = _$AnalyticsDataCopyWithImpl;
@useResult
$Res call({
 List<HeatmapDay> heatmap, List<CategoryBreakdown> categoryBreakdown, List<EmotionSpending> emotionalSpending, RiskTimeline riskTimeline, PeerComparison comparison, AnalyticsScores scores
});


$RiskTimelineCopyWith<$Res> get riskTimeline;$PeerComparisonCopyWith<$Res> get comparison;$AnalyticsScoresCopyWith<$Res> get scores;

}
/// @nodoc
class _$AnalyticsDataCopyWithImpl<$Res>
    implements $AnalyticsDataCopyWith<$Res> {
  _$AnalyticsDataCopyWithImpl(this._self, this._then);

  final AnalyticsData _self;
  final $Res Function(AnalyticsData) _then;

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? heatmap = null,Object? categoryBreakdown = null,Object? emotionalSpending = null,Object? riskTimeline = null,Object? comparison = null,Object? scores = null,}) {
  return _then(_self.copyWith(
heatmap: null == heatmap ? _self.heatmap : heatmap // ignore: cast_nullable_to_non_nullable
as List<HeatmapDay>,categoryBreakdown: null == categoryBreakdown ? _self.categoryBreakdown : categoryBreakdown // ignore: cast_nullable_to_non_nullable
as List<CategoryBreakdown>,emotionalSpending: null == emotionalSpending ? _self.emotionalSpending : emotionalSpending // ignore: cast_nullable_to_non_nullable
as List<EmotionSpending>,riskTimeline: null == riskTimeline ? _self.riskTimeline : riskTimeline // ignore: cast_nullable_to_non_nullable
as RiskTimeline,comparison: null == comparison ? _self.comparison : comparison // ignore: cast_nullable_to_non_nullable
as PeerComparison,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as AnalyticsScores,
  ));
}
/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskTimelineCopyWith<$Res> get riskTimeline {
  
  return $RiskTimelineCopyWith<$Res>(_self.riskTimeline, (value) {
    return _then(_self.copyWith(riskTimeline: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeerComparisonCopyWith<$Res> get comparison {
  
  return $PeerComparisonCopyWith<$Res>(_self.comparison, (value) {
    return _then(_self.copyWith(comparison: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsScoresCopyWith<$Res> get scores {
  
  return $AnalyticsScoresCopyWith<$Res>(_self.scores, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyticsData].
extension AnalyticsDataPatterns on AnalyticsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsData value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsData value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HeatmapDay> heatmap,  List<CategoryBreakdown> categoryBreakdown,  List<EmotionSpending> emotionalSpending,  RiskTimeline riskTimeline,  PeerComparison comparison,  AnalyticsScores scores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
return $default(_that.heatmap,_that.categoryBreakdown,_that.emotionalSpending,_that.riskTimeline,_that.comparison,_that.scores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HeatmapDay> heatmap,  List<CategoryBreakdown> categoryBreakdown,  List<EmotionSpending> emotionalSpending,  RiskTimeline riskTimeline,  PeerComparison comparison,  AnalyticsScores scores)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsData():
return $default(_that.heatmap,_that.categoryBreakdown,_that.emotionalSpending,_that.riskTimeline,_that.comparison,_that.scores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HeatmapDay> heatmap,  List<CategoryBreakdown> categoryBreakdown,  List<EmotionSpending> emotionalSpending,  RiskTimeline riskTimeline,  PeerComparison comparison,  AnalyticsScores scores)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsData() when $default != null:
return $default(_that.heatmap,_that.categoryBreakdown,_that.emotionalSpending,_that.riskTimeline,_that.comparison,_that.scores);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyticsData implements AnalyticsData {
  const _AnalyticsData({required final  List<HeatmapDay> heatmap, required final  List<CategoryBreakdown> categoryBreakdown, required final  List<EmotionSpending> emotionalSpending, required this.riskTimeline, required this.comparison, required this.scores}): _heatmap = heatmap,_categoryBreakdown = categoryBreakdown,_emotionalSpending = emotionalSpending;
  

 final  List<HeatmapDay> _heatmap;
@override List<HeatmapDay> get heatmap {
  if (_heatmap is EqualUnmodifiableListView) return _heatmap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heatmap);
}

 final  List<CategoryBreakdown> _categoryBreakdown;
@override List<CategoryBreakdown> get categoryBreakdown {
  if (_categoryBreakdown is EqualUnmodifiableListView) return _categoryBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryBreakdown);
}

 final  List<EmotionSpending> _emotionalSpending;
@override List<EmotionSpending> get emotionalSpending {
  if (_emotionalSpending is EqualUnmodifiableListView) return _emotionalSpending;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_emotionalSpending);
}

@override final  RiskTimeline riskTimeline;
@override final  PeerComparison comparison;
@override final  AnalyticsScores scores;

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsDataCopyWith<_AnalyticsData> get copyWith => __$AnalyticsDataCopyWithImpl<_AnalyticsData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsData&&const DeepCollectionEquality().equals(other._heatmap, _heatmap)&&const DeepCollectionEquality().equals(other._categoryBreakdown, _categoryBreakdown)&&const DeepCollectionEquality().equals(other._emotionalSpending, _emotionalSpending)&&(identical(other.riskTimeline, riskTimeline) || other.riskTimeline == riskTimeline)&&(identical(other.comparison, comparison) || other.comparison == comparison)&&(identical(other.scores, scores) || other.scores == scores));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_heatmap),const DeepCollectionEquality().hash(_categoryBreakdown),const DeepCollectionEquality().hash(_emotionalSpending),riskTimeline,comparison,scores);

@override
String toString() {
  return 'AnalyticsData(heatmap: $heatmap, categoryBreakdown: $categoryBreakdown, emotionalSpending: $emotionalSpending, riskTimeline: $riskTimeline, comparison: $comparison, scores: $scores)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsDataCopyWith<$Res> implements $AnalyticsDataCopyWith<$Res> {
  factory _$AnalyticsDataCopyWith(_AnalyticsData value, $Res Function(_AnalyticsData) _then) = __$AnalyticsDataCopyWithImpl;
@override @useResult
$Res call({
 List<HeatmapDay> heatmap, List<CategoryBreakdown> categoryBreakdown, List<EmotionSpending> emotionalSpending, RiskTimeline riskTimeline, PeerComparison comparison, AnalyticsScores scores
});


@override $RiskTimelineCopyWith<$Res> get riskTimeline;@override $PeerComparisonCopyWith<$Res> get comparison;@override $AnalyticsScoresCopyWith<$Res> get scores;

}
/// @nodoc
class __$AnalyticsDataCopyWithImpl<$Res>
    implements _$AnalyticsDataCopyWith<$Res> {
  __$AnalyticsDataCopyWithImpl(this._self, this._then);

  final _AnalyticsData _self;
  final $Res Function(_AnalyticsData) _then;

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? heatmap = null,Object? categoryBreakdown = null,Object? emotionalSpending = null,Object? riskTimeline = null,Object? comparison = null,Object? scores = null,}) {
  return _then(_AnalyticsData(
heatmap: null == heatmap ? _self._heatmap : heatmap // ignore: cast_nullable_to_non_nullable
as List<HeatmapDay>,categoryBreakdown: null == categoryBreakdown ? _self._categoryBreakdown : categoryBreakdown // ignore: cast_nullable_to_non_nullable
as List<CategoryBreakdown>,emotionalSpending: null == emotionalSpending ? _self._emotionalSpending : emotionalSpending // ignore: cast_nullable_to_non_nullable
as List<EmotionSpending>,riskTimeline: null == riskTimeline ? _self.riskTimeline : riskTimeline // ignore: cast_nullable_to_non_nullable
as RiskTimeline,comparison: null == comparison ? _self.comparison : comparison // ignore: cast_nullable_to_non_nullable
as PeerComparison,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as AnalyticsScores,
  ));
}

/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskTimelineCopyWith<$Res> get riskTimeline {
  
  return $RiskTimelineCopyWith<$Res>(_self.riskTimeline, (value) {
    return _then(_self.copyWith(riskTimeline: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeerComparisonCopyWith<$Res> get comparison {
  
  return $PeerComparisonCopyWith<$Res>(_self.comparison, (value) {
    return _then(_self.copyWith(comparison: value));
  });
}/// Create a copy of AnalyticsData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsScoresCopyWith<$Res> get scores {
  
  return $AnalyticsScoresCopyWith<$Res>(_self.scores, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}

/// @nodoc
mixin _$HeatmapDay {

 DateTime get date; double get amount; int get intensity;
/// Create a copy of HeatmapDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeatmapDayCopyWith<HeatmapDay> get copyWith => _$HeatmapDayCopyWithImpl<HeatmapDay>(this as HeatmapDay, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeatmapDay&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.intensity, intensity) || other.intensity == intensity));
}


@override
int get hashCode => Object.hash(runtimeType,date,amount,intensity);

@override
String toString() {
  return 'HeatmapDay(date: $date, amount: $amount, intensity: $intensity)';
}


}

/// @nodoc
abstract mixin class $HeatmapDayCopyWith<$Res>  {
  factory $HeatmapDayCopyWith(HeatmapDay value, $Res Function(HeatmapDay) _then) = _$HeatmapDayCopyWithImpl;
@useResult
$Res call({
 DateTime date, double amount, int intensity
});




}
/// @nodoc
class _$HeatmapDayCopyWithImpl<$Res>
    implements $HeatmapDayCopyWith<$Res> {
  _$HeatmapDayCopyWithImpl(this._self, this._then);

  final HeatmapDay _self;
  final $Res Function(HeatmapDay) _then;

/// Create a copy of HeatmapDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? amount = null,Object? intensity = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HeatmapDay].
extension HeatmapDayPatterns on HeatmapDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeatmapDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeatmapDay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeatmapDay value)  $default,){
final _that = this;
switch (_that) {
case _HeatmapDay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeatmapDay value)?  $default,){
final _that = this;
switch (_that) {
case _HeatmapDay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  double amount,  int intensity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeatmapDay() when $default != null:
return $default(_that.date,_that.amount,_that.intensity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  double amount,  int intensity)  $default,) {final _that = this;
switch (_that) {
case _HeatmapDay():
return $default(_that.date,_that.amount,_that.intensity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  double amount,  int intensity)?  $default,) {final _that = this;
switch (_that) {
case _HeatmapDay() when $default != null:
return $default(_that.date,_that.amount,_that.intensity);case _:
  return null;

}
}

}

/// @nodoc


class _HeatmapDay implements HeatmapDay {
  const _HeatmapDay({required this.date, required this.amount, required this.intensity});
  

@override final  DateTime date;
@override final  double amount;
@override final  int intensity;

/// Create a copy of HeatmapDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeatmapDayCopyWith<_HeatmapDay> get copyWith => __$HeatmapDayCopyWithImpl<_HeatmapDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeatmapDay&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.intensity, intensity) || other.intensity == intensity));
}


@override
int get hashCode => Object.hash(runtimeType,date,amount,intensity);

@override
String toString() {
  return 'HeatmapDay(date: $date, amount: $amount, intensity: $intensity)';
}


}

/// @nodoc
abstract mixin class _$HeatmapDayCopyWith<$Res> implements $HeatmapDayCopyWith<$Res> {
  factory _$HeatmapDayCopyWith(_HeatmapDay value, $Res Function(_HeatmapDay) _then) = __$HeatmapDayCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, double amount, int intensity
});




}
/// @nodoc
class __$HeatmapDayCopyWithImpl<$Res>
    implements _$HeatmapDayCopyWith<$Res> {
  __$HeatmapDayCopyWithImpl(this._self, this._then);

  final _HeatmapDay _self;
  final $Res Function(_HeatmapDay) _then;

/// Create a copy of HeatmapDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? amount = null,Object? intensity = null,}) {
  return _then(_HeatmapDay(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CategoryBreakdown {

 String get category; double get amount; double get percentage;
/// Create a copy of CategoryBreakdown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryBreakdownCopyWith<CategoryBreakdown> get copyWith => _$CategoryBreakdownCopyWithImpl<CategoryBreakdown>(this as CategoryBreakdown, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryBreakdown&&(identical(other.category, category) || other.category == category)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}


@override
int get hashCode => Object.hash(runtimeType,category,amount,percentage);

@override
String toString() {
  return 'CategoryBreakdown(category: $category, amount: $amount, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class $CategoryBreakdownCopyWith<$Res>  {
  factory $CategoryBreakdownCopyWith(CategoryBreakdown value, $Res Function(CategoryBreakdown) _then) = _$CategoryBreakdownCopyWithImpl;
@useResult
$Res call({
 String category, double amount, double percentage
});




}
/// @nodoc
class _$CategoryBreakdownCopyWithImpl<$Res>
    implements $CategoryBreakdownCopyWith<$Res> {
  _$CategoryBreakdownCopyWithImpl(this._self, this._then);

  final CategoryBreakdown _self;
  final $Res Function(CategoryBreakdown) _then;

/// Create a copy of CategoryBreakdown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? amount = null,Object? percentage = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryBreakdown].
extension CategoryBreakdownPatterns on CategoryBreakdown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryBreakdown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryBreakdown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryBreakdown value)  $default,){
final _that = this;
switch (_that) {
case _CategoryBreakdown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryBreakdown value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryBreakdown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category,  double amount,  double percentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryBreakdown() when $default != null:
return $default(_that.category,_that.amount,_that.percentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category,  double amount,  double percentage)  $default,) {final _that = this;
switch (_that) {
case _CategoryBreakdown():
return $default(_that.category,_that.amount,_that.percentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category,  double amount,  double percentage)?  $default,) {final _that = this;
switch (_that) {
case _CategoryBreakdown() when $default != null:
return $default(_that.category,_that.amount,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryBreakdown implements CategoryBreakdown {
  const _CategoryBreakdown({required this.category, required this.amount, required this.percentage});
  

@override final  String category;
@override final  double amount;
@override final  double percentage;

/// Create a copy of CategoryBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryBreakdownCopyWith<_CategoryBreakdown> get copyWith => __$CategoryBreakdownCopyWithImpl<_CategoryBreakdown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryBreakdown&&(identical(other.category, category) || other.category == category)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}


@override
int get hashCode => Object.hash(runtimeType,category,amount,percentage);

@override
String toString() {
  return 'CategoryBreakdown(category: $category, amount: $amount, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$CategoryBreakdownCopyWith<$Res> implements $CategoryBreakdownCopyWith<$Res> {
  factory _$CategoryBreakdownCopyWith(_CategoryBreakdown value, $Res Function(_CategoryBreakdown) _then) = __$CategoryBreakdownCopyWithImpl;
@override @useResult
$Res call({
 String category, double amount, double percentage
});




}
/// @nodoc
class __$CategoryBreakdownCopyWithImpl<$Res>
    implements _$CategoryBreakdownCopyWith<$Res> {
  __$CategoryBreakdownCopyWithImpl(this._self, this._then);

  final _CategoryBreakdown _self;
  final $Res Function(_CategoryBreakdown) _then;

/// Create a copy of CategoryBreakdown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? amount = null,Object? percentage = null,}) {
  return _then(_CategoryBreakdown(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$EmotionSpending {

 String get emotion; double get totalAmount; int get transactionCount;
/// Create a copy of EmotionSpending
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmotionSpendingCopyWith<EmotionSpending> get copyWith => _$EmotionSpendingCopyWithImpl<EmotionSpending>(this as EmotionSpending, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmotionSpending&&(identical(other.emotion, emotion) || other.emotion == emotion)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}


@override
int get hashCode => Object.hash(runtimeType,emotion,totalAmount,transactionCount);

@override
String toString() {
  return 'EmotionSpending(emotion: $emotion, totalAmount: $totalAmount, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class $EmotionSpendingCopyWith<$Res>  {
  factory $EmotionSpendingCopyWith(EmotionSpending value, $Res Function(EmotionSpending) _then) = _$EmotionSpendingCopyWithImpl;
@useResult
$Res call({
 String emotion, double totalAmount, int transactionCount
});




}
/// @nodoc
class _$EmotionSpendingCopyWithImpl<$Res>
    implements $EmotionSpendingCopyWith<$Res> {
  _$EmotionSpendingCopyWithImpl(this._self, this._then);

  final EmotionSpending _self;
  final $Res Function(EmotionSpending) _then;

/// Create a copy of EmotionSpending
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emotion = null,Object? totalAmount = null,Object? transactionCount = null,}) {
  return _then(_self.copyWith(
emotion: null == emotion ? _self.emotion : emotion // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EmotionSpending].
extension EmotionSpendingPatterns on EmotionSpending {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmotionSpending value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmotionSpending() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmotionSpending value)  $default,){
final _that = this;
switch (_that) {
case _EmotionSpending():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmotionSpending value)?  $default,){
final _that = this;
switch (_that) {
case _EmotionSpending() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String emotion,  double totalAmount,  int transactionCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmotionSpending() when $default != null:
return $default(_that.emotion,_that.totalAmount,_that.transactionCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String emotion,  double totalAmount,  int transactionCount)  $default,) {final _that = this;
switch (_that) {
case _EmotionSpending():
return $default(_that.emotion,_that.totalAmount,_that.transactionCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String emotion,  double totalAmount,  int transactionCount)?  $default,) {final _that = this;
switch (_that) {
case _EmotionSpending() when $default != null:
return $default(_that.emotion,_that.totalAmount,_that.transactionCount);case _:
  return null;

}
}

}

/// @nodoc


class _EmotionSpending implements EmotionSpending {
  const _EmotionSpending({required this.emotion, required this.totalAmount, required this.transactionCount});
  

@override final  String emotion;
@override final  double totalAmount;
@override final  int transactionCount;

/// Create a copy of EmotionSpending
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmotionSpendingCopyWith<_EmotionSpending> get copyWith => __$EmotionSpendingCopyWithImpl<_EmotionSpending>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmotionSpending&&(identical(other.emotion, emotion) || other.emotion == emotion)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}


@override
int get hashCode => Object.hash(runtimeType,emotion,totalAmount,transactionCount);

@override
String toString() {
  return 'EmotionSpending(emotion: $emotion, totalAmount: $totalAmount, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class _$EmotionSpendingCopyWith<$Res> implements $EmotionSpendingCopyWith<$Res> {
  factory _$EmotionSpendingCopyWith(_EmotionSpending value, $Res Function(_EmotionSpending) _then) = __$EmotionSpendingCopyWithImpl;
@override @useResult
$Res call({
 String emotion, double totalAmount, int transactionCount
});




}
/// @nodoc
class __$EmotionSpendingCopyWithImpl<$Res>
    implements _$EmotionSpendingCopyWith<$Res> {
  __$EmotionSpendingCopyWithImpl(this._self, this._then);

  final _EmotionSpending _self;
  final $Res Function(_EmotionSpending) _then;

/// Create a copy of EmotionSpending
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emotion = null,Object? totalAmount = null,Object? transactionCount = null,}) {
  return _then(_EmotionSpending(
emotion: null == emotion ? _self.emotion : emotion // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$RiskTimeline {

 List<RiskPoint> get points; String get trend;
/// Create a copy of RiskTimeline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskTimelineCopyWith<RiskTimeline> get copyWith => _$RiskTimelineCopyWithImpl<RiskTimeline>(this as RiskTimeline, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskTimeline&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.trend, trend) || other.trend == trend));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points),trend);

@override
String toString() {
  return 'RiskTimeline(points: $points, trend: $trend)';
}


}

/// @nodoc
abstract mixin class $RiskTimelineCopyWith<$Res>  {
  factory $RiskTimelineCopyWith(RiskTimeline value, $Res Function(RiskTimeline) _then) = _$RiskTimelineCopyWithImpl;
@useResult
$Res call({
 List<RiskPoint> points, String trend
});




}
/// @nodoc
class _$RiskTimelineCopyWithImpl<$Res>
    implements $RiskTimelineCopyWith<$Res> {
  _$RiskTimelineCopyWithImpl(this._self, this._then);

  final RiskTimeline _self;
  final $Res Function(RiskTimeline) _then;

/// Create a copy of RiskTimeline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? trend = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<RiskPoint>,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskTimeline].
extension RiskTimelinePatterns on RiskTimeline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskTimeline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskTimeline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskTimeline value)  $default,){
final _that = this;
switch (_that) {
case _RiskTimeline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskTimeline value)?  $default,){
final _that = this;
switch (_that) {
case _RiskTimeline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RiskPoint> points,  String trend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskTimeline() when $default != null:
return $default(_that.points,_that.trend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RiskPoint> points,  String trend)  $default,) {final _that = this;
switch (_that) {
case _RiskTimeline():
return $default(_that.points,_that.trend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RiskPoint> points,  String trend)?  $default,) {final _that = this;
switch (_that) {
case _RiskTimeline() when $default != null:
return $default(_that.points,_that.trend);case _:
  return null;

}
}

}

/// @nodoc


class _RiskTimeline implements RiskTimeline {
  const _RiskTimeline({required final  List<RiskPoint> points, required this.trend}): _points = points;
  

 final  List<RiskPoint> _points;
@override List<RiskPoint> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override final  String trend;

/// Create a copy of RiskTimeline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskTimelineCopyWith<_RiskTimeline> get copyWith => __$RiskTimelineCopyWithImpl<_RiskTimeline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskTimeline&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.trend, trend) || other.trend == trend));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),trend);

@override
String toString() {
  return 'RiskTimeline(points: $points, trend: $trend)';
}


}

/// @nodoc
abstract mixin class _$RiskTimelineCopyWith<$Res> implements $RiskTimelineCopyWith<$Res> {
  factory _$RiskTimelineCopyWith(_RiskTimeline value, $Res Function(_RiskTimeline) _then) = __$RiskTimelineCopyWithImpl;
@override @useResult
$Res call({
 List<RiskPoint> points, String trend
});




}
/// @nodoc
class __$RiskTimelineCopyWithImpl<$Res>
    implements _$RiskTimelineCopyWith<$Res> {
  __$RiskTimelineCopyWithImpl(this._self, this._then);

  final _RiskTimeline _self;
  final $Res Function(_RiskTimeline) _then;

/// Create a copy of RiskTimeline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? trend = null,}) {
  return _then(_RiskTimeline(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<RiskPoint>,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RiskPoint {

 DateTime get date; int get riskScore;
/// Create a copy of RiskPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskPointCopyWith<RiskPoint> get copyWith => _$RiskPointCopyWithImpl<RiskPoint>(this as RiskPoint, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore));
}


@override
int get hashCode => Object.hash(runtimeType,date,riskScore);

@override
String toString() {
  return 'RiskPoint(date: $date, riskScore: $riskScore)';
}


}

/// @nodoc
abstract mixin class $RiskPointCopyWith<$Res>  {
  factory $RiskPointCopyWith(RiskPoint value, $Res Function(RiskPoint) _then) = _$RiskPointCopyWithImpl;
@useResult
$Res call({
 DateTime date, int riskScore
});




}
/// @nodoc
class _$RiskPointCopyWithImpl<$Res>
    implements $RiskPointCopyWith<$Res> {
  _$RiskPointCopyWithImpl(this._self, this._then);

  final RiskPoint _self;
  final $Res Function(RiskPoint) _then;

/// Create a copy of RiskPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? riskScore = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskPoint].
extension RiskPointPatterns on RiskPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskPoint value)  $default,){
final _that = this;
switch (_that) {
case _RiskPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskPoint value)?  $default,){
final _that = this;
switch (_that) {
case _RiskPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  int riskScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskPoint() when $default != null:
return $default(_that.date,_that.riskScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  int riskScore)  $default,) {final _that = this;
switch (_that) {
case _RiskPoint():
return $default(_that.date,_that.riskScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  int riskScore)?  $default,) {final _that = this;
switch (_that) {
case _RiskPoint() when $default != null:
return $default(_that.date,_that.riskScore);case _:
  return null;

}
}

}

/// @nodoc


class _RiskPoint implements RiskPoint {
  const _RiskPoint({required this.date, required this.riskScore});
  

@override final  DateTime date;
@override final  int riskScore;

/// Create a copy of RiskPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskPointCopyWith<_RiskPoint> get copyWith => __$RiskPointCopyWithImpl<_RiskPoint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore));
}


@override
int get hashCode => Object.hash(runtimeType,date,riskScore);

@override
String toString() {
  return 'RiskPoint(date: $date, riskScore: $riskScore)';
}


}

/// @nodoc
abstract mixin class _$RiskPointCopyWith<$Res> implements $RiskPointCopyWith<$Res> {
  factory _$RiskPointCopyWith(_RiskPoint value, $Res Function(_RiskPoint) _then) = __$RiskPointCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, int riskScore
});




}
/// @nodoc
class __$RiskPointCopyWithImpl<$Res>
    implements _$RiskPointCopyWith<$Res> {
  __$RiskPointCopyWithImpl(this._self, this._then);

  final _RiskPoint _self;
  final $Res Function(_RiskPoint) _then;

/// Create a copy of RiskPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? riskScore = null,}) {
  return _then(_RiskPoint(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PeerComparison {

 String get ageGroup; double get yourSavingsRate; double get peerAvgSavingsRate; double get yourImpulsiveSpending; double get peerAvgImpulsiveSpending; int get percentileRank;
/// Create a copy of PeerComparison
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeerComparisonCopyWith<PeerComparison> get copyWith => _$PeerComparisonCopyWithImpl<PeerComparison>(this as PeerComparison, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeerComparison&&(identical(other.ageGroup, ageGroup) || other.ageGroup == ageGroup)&&(identical(other.yourSavingsRate, yourSavingsRate) || other.yourSavingsRate == yourSavingsRate)&&(identical(other.peerAvgSavingsRate, peerAvgSavingsRate) || other.peerAvgSavingsRate == peerAvgSavingsRate)&&(identical(other.yourImpulsiveSpending, yourImpulsiveSpending) || other.yourImpulsiveSpending == yourImpulsiveSpending)&&(identical(other.peerAvgImpulsiveSpending, peerAvgImpulsiveSpending) || other.peerAvgImpulsiveSpending == peerAvgImpulsiveSpending)&&(identical(other.percentileRank, percentileRank) || other.percentileRank == percentileRank));
}


@override
int get hashCode => Object.hash(runtimeType,ageGroup,yourSavingsRate,peerAvgSavingsRate,yourImpulsiveSpending,peerAvgImpulsiveSpending,percentileRank);

@override
String toString() {
  return 'PeerComparison(ageGroup: $ageGroup, yourSavingsRate: $yourSavingsRate, peerAvgSavingsRate: $peerAvgSavingsRate, yourImpulsiveSpending: $yourImpulsiveSpending, peerAvgImpulsiveSpending: $peerAvgImpulsiveSpending, percentileRank: $percentileRank)';
}


}

/// @nodoc
abstract mixin class $PeerComparisonCopyWith<$Res>  {
  factory $PeerComparisonCopyWith(PeerComparison value, $Res Function(PeerComparison) _then) = _$PeerComparisonCopyWithImpl;
@useResult
$Res call({
 String ageGroup, double yourSavingsRate, double peerAvgSavingsRate, double yourImpulsiveSpending, double peerAvgImpulsiveSpending, int percentileRank
});




}
/// @nodoc
class _$PeerComparisonCopyWithImpl<$Res>
    implements $PeerComparisonCopyWith<$Res> {
  _$PeerComparisonCopyWithImpl(this._self, this._then);

  final PeerComparison _self;
  final $Res Function(PeerComparison) _then;

/// Create a copy of PeerComparison
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ageGroup = null,Object? yourSavingsRate = null,Object? peerAvgSavingsRate = null,Object? yourImpulsiveSpending = null,Object? peerAvgImpulsiveSpending = null,Object? percentileRank = null,}) {
  return _then(_self.copyWith(
ageGroup: null == ageGroup ? _self.ageGroup : ageGroup // ignore: cast_nullable_to_non_nullable
as String,yourSavingsRate: null == yourSavingsRate ? _self.yourSavingsRate : yourSavingsRate // ignore: cast_nullable_to_non_nullable
as double,peerAvgSavingsRate: null == peerAvgSavingsRate ? _self.peerAvgSavingsRate : peerAvgSavingsRate // ignore: cast_nullable_to_non_nullable
as double,yourImpulsiveSpending: null == yourImpulsiveSpending ? _self.yourImpulsiveSpending : yourImpulsiveSpending // ignore: cast_nullable_to_non_nullable
as double,peerAvgImpulsiveSpending: null == peerAvgImpulsiveSpending ? _self.peerAvgImpulsiveSpending : peerAvgImpulsiveSpending // ignore: cast_nullable_to_non_nullable
as double,percentileRank: null == percentileRank ? _self.percentileRank : percentileRank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PeerComparison].
extension PeerComparisonPatterns on PeerComparison {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeerComparison value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeerComparison() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeerComparison value)  $default,){
final _that = this;
switch (_that) {
case _PeerComparison():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeerComparison value)?  $default,){
final _that = this;
switch (_that) {
case _PeerComparison() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ageGroup,  double yourSavingsRate,  double peerAvgSavingsRate,  double yourImpulsiveSpending,  double peerAvgImpulsiveSpending,  int percentileRank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeerComparison() when $default != null:
return $default(_that.ageGroup,_that.yourSavingsRate,_that.peerAvgSavingsRate,_that.yourImpulsiveSpending,_that.peerAvgImpulsiveSpending,_that.percentileRank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ageGroup,  double yourSavingsRate,  double peerAvgSavingsRate,  double yourImpulsiveSpending,  double peerAvgImpulsiveSpending,  int percentileRank)  $default,) {final _that = this;
switch (_that) {
case _PeerComparison():
return $default(_that.ageGroup,_that.yourSavingsRate,_that.peerAvgSavingsRate,_that.yourImpulsiveSpending,_that.peerAvgImpulsiveSpending,_that.percentileRank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ageGroup,  double yourSavingsRate,  double peerAvgSavingsRate,  double yourImpulsiveSpending,  double peerAvgImpulsiveSpending,  int percentileRank)?  $default,) {final _that = this;
switch (_that) {
case _PeerComparison() when $default != null:
return $default(_that.ageGroup,_that.yourSavingsRate,_that.peerAvgSavingsRate,_that.yourImpulsiveSpending,_that.peerAvgImpulsiveSpending,_that.percentileRank);case _:
  return null;

}
}

}

/// @nodoc


class _PeerComparison implements PeerComparison {
  const _PeerComparison({required this.ageGroup, required this.yourSavingsRate, required this.peerAvgSavingsRate, required this.yourImpulsiveSpending, required this.peerAvgImpulsiveSpending, required this.percentileRank});
  

@override final  String ageGroup;
@override final  double yourSavingsRate;
@override final  double peerAvgSavingsRate;
@override final  double yourImpulsiveSpending;
@override final  double peerAvgImpulsiveSpending;
@override final  int percentileRank;

/// Create a copy of PeerComparison
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeerComparisonCopyWith<_PeerComparison> get copyWith => __$PeerComparisonCopyWithImpl<_PeerComparison>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeerComparison&&(identical(other.ageGroup, ageGroup) || other.ageGroup == ageGroup)&&(identical(other.yourSavingsRate, yourSavingsRate) || other.yourSavingsRate == yourSavingsRate)&&(identical(other.peerAvgSavingsRate, peerAvgSavingsRate) || other.peerAvgSavingsRate == peerAvgSavingsRate)&&(identical(other.yourImpulsiveSpending, yourImpulsiveSpending) || other.yourImpulsiveSpending == yourImpulsiveSpending)&&(identical(other.peerAvgImpulsiveSpending, peerAvgImpulsiveSpending) || other.peerAvgImpulsiveSpending == peerAvgImpulsiveSpending)&&(identical(other.percentileRank, percentileRank) || other.percentileRank == percentileRank));
}


@override
int get hashCode => Object.hash(runtimeType,ageGroup,yourSavingsRate,peerAvgSavingsRate,yourImpulsiveSpending,peerAvgImpulsiveSpending,percentileRank);

@override
String toString() {
  return 'PeerComparison(ageGroup: $ageGroup, yourSavingsRate: $yourSavingsRate, peerAvgSavingsRate: $peerAvgSavingsRate, yourImpulsiveSpending: $yourImpulsiveSpending, peerAvgImpulsiveSpending: $peerAvgImpulsiveSpending, percentileRank: $percentileRank)';
}


}

/// @nodoc
abstract mixin class _$PeerComparisonCopyWith<$Res> implements $PeerComparisonCopyWith<$Res> {
  factory _$PeerComparisonCopyWith(_PeerComparison value, $Res Function(_PeerComparison) _then) = __$PeerComparisonCopyWithImpl;
@override @useResult
$Res call({
 String ageGroup, double yourSavingsRate, double peerAvgSavingsRate, double yourImpulsiveSpending, double peerAvgImpulsiveSpending, int percentileRank
});




}
/// @nodoc
class __$PeerComparisonCopyWithImpl<$Res>
    implements _$PeerComparisonCopyWith<$Res> {
  __$PeerComparisonCopyWithImpl(this._self, this._then);

  final _PeerComparison _self;
  final $Res Function(_PeerComparison) _then;

/// Create a copy of PeerComparison
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ageGroup = null,Object? yourSavingsRate = null,Object? peerAvgSavingsRate = null,Object? yourImpulsiveSpending = null,Object? peerAvgImpulsiveSpending = null,Object? percentileRank = null,}) {
  return _then(_PeerComparison(
ageGroup: null == ageGroup ? _self.ageGroup : ageGroup // ignore: cast_nullable_to_non_nullable
as String,yourSavingsRate: null == yourSavingsRate ? _self.yourSavingsRate : yourSavingsRate // ignore: cast_nullable_to_non_nullable
as double,peerAvgSavingsRate: null == peerAvgSavingsRate ? _self.peerAvgSavingsRate : peerAvgSavingsRate // ignore: cast_nullable_to_non_nullable
as double,yourImpulsiveSpending: null == yourImpulsiveSpending ? _self.yourImpulsiveSpending : yourImpulsiveSpending // ignore: cast_nullable_to_non_nullable
as double,peerAvgImpulsiveSpending: null == peerAvgImpulsiveSpending ? _self.peerAvgImpulsiveSpending : peerAvgImpulsiveSpending // ignore: cast_nullable_to_non_nullable
as double,percentileRank: null == percentileRank ? _self.percentileRank : percentileRank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AnalyticsScores {

 double get impulsiveScore; double get disciplineScore; double get riskScore; double get emotionalDependencyScore; double get savingsHealthScore;
/// Create a copy of AnalyticsScores
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsScoresCopyWith<AnalyticsScores> get copyWith => _$AnalyticsScoresCopyWithImpl<AnalyticsScores>(this as AnalyticsScores, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsScores&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.emotionalDependencyScore, emotionalDependencyScore) || other.emotionalDependencyScore == emotionalDependencyScore)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore));
}


@override
int get hashCode => Object.hash(runtimeType,impulsiveScore,disciplineScore,riskScore,emotionalDependencyScore,savingsHealthScore);

@override
String toString() {
  return 'AnalyticsScores(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore)';
}


}

/// @nodoc
abstract mixin class $AnalyticsScoresCopyWith<$Res>  {
  factory $AnalyticsScoresCopyWith(AnalyticsScores value, $Res Function(AnalyticsScores) _then) = _$AnalyticsScoresCopyWithImpl;
@useResult
$Res call({
 double impulsiveScore, double disciplineScore, double riskScore, double emotionalDependencyScore, double savingsHealthScore
});




}
/// @nodoc
class _$AnalyticsScoresCopyWithImpl<$Res>
    implements $AnalyticsScoresCopyWith<$Res> {
  _$AnalyticsScoresCopyWithImpl(this._self, this._then);

  final AnalyticsScores _self;
  final $Res Function(AnalyticsScores) _then;

/// Create a copy of AnalyticsScores
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? impulsiveScore = null,Object? disciplineScore = null,Object? riskScore = null,Object? emotionalDependencyScore = null,Object? savingsHealthScore = null,}) {
  return _then(_self.copyWith(
impulsiveScore: null == impulsiveScore ? _self.impulsiveScore : impulsiveScore // ignore: cast_nullable_to_non_nullable
as double,disciplineScore: null == disciplineScore ? _self.disciplineScore : disciplineScore // ignore: cast_nullable_to_non_nullable
as double,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,emotionalDependencyScore: null == emotionalDependencyScore ? _self.emotionalDependencyScore : emotionalDependencyScore // ignore: cast_nullable_to_non_nullable
as double,savingsHealthScore: null == savingsHealthScore ? _self.savingsHealthScore : savingsHealthScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticsScores].
extension AnalyticsScoresPatterns on AnalyticsScores {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsScores value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsScores() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsScores value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsScores():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsScores value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsScores() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double impulsiveScore,  double disciplineScore,  double riskScore,  double emotionalDependencyScore,  double savingsHealthScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsScores() when $default != null:
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double impulsiveScore,  double disciplineScore,  double riskScore,  double emotionalDependencyScore,  double savingsHealthScore)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsScores():
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double impulsiveScore,  double disciplineScore,  double riskScore,  double emotionalDependencyScore,  double savingsHealthScore)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsScores() when $default != null:
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore);case _:
  return null;

}
}

}

/// @nodoc


class _AnalyticsScores implements AnalyticsScores {
  const _AnalyticsScores({required this.impulsiveScore, required this.disciplineScore, required this.riskScore, required this.emotionalDependencyScore, required this.savingsHealthScore});
  

@override final  double impulsiveScore;
@override final  double disciplineScore;
@override final  double riskScore;
@override final  double emotionalDependencyScore;
@override final  double savingsHealthScore;

/// Create a copy of AnalyticsScores
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsScoresCopyWith<_AnalyticsScores> get copyWith => __$AnalyticsScoresCopyWithImpl<_AnalyticsScores>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsScores&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.emotionalDependencyScore, emotionalDependencyScore) || other.emotionalDependencyScore == emotionalDependencyScore)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore));
}


@override
int get hashCode => Object.hash(runtimeType,impulsiveScore,disciplineScore,riskScore,emotionalDependencyScore,savingsHealthScore);

@override
String toString() {
  return 'AnalyticsScores(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsScoresCopyWith<$Res> implements $AnalyticsScoresCopyWith<$Res> {
  factory _$AnalyticsScoresCopyWith(_AnalyticsScores value, $Res Function(_AnalyticsScores) _then) = __$AnalyticsScoresCopyWithImpl;
@override @useResult
$Res call({
 double impulsiveScore, double disciplineScore, double riskScore, double emotionalDependencyScore, double savingsHealthScore
});




}
/// @nodoc
class __$AnalyticsScoresCopyWithImpl<$Res>
    implements _$AnalyticsScoresCopyWith<$Res> {
  __$AnalyticsScoresCopyWithImpl(this._self, this._then);

  final _AnalyticsScores _self;
  final $Res Function(_AnalyticsScores) _then;

/// Create a copy of AnalyticsScores
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? impulsiveScore = null,Object? disciplineScore = null,Object? riskScore = null,Object? emotionalDependencyScore = null,Object? savingsHealthScore = null,}) {
  return _then(_AnalyticsScores(
impulsiveScore: null == impulsiveScore ? _self.impulsiveScore : impulsiveScore // ignore: cast_nullable_to_non_nullable
as double,disciplineScore: null == disciplineScore ? _self.disciplineScore : disciplineScore // ignore: cast_nullable_to_non_nullable
as double,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,emotionalDependencyScore: null == emotionalDependencyScore ? _self.emotionalDependencyScore : emotionalDependencyScore // ignore: cast_nullable_to_non_nullable
as double,savingsHealthScore: null == savingsHealthScore ? _self.savingsHealthScore : savingsHealthScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
