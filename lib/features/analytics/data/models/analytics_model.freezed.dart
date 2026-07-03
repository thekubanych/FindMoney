// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyticsModel {

 List<HeatmapDayModel> get heatmap;@JsonKey(name: 'category_breakdown') List<CategoryBreakdownModel> get categoryBreakdown;@JsonKey(name: 'emotional_spending') List<EmotionSpendingModel> get emotionalSpending;@JsonKey(name: 'risk_timeline') RiskTimelineModel get riskTimeline; PeerComparisonModel get comparison; AnalyticsScoresModel get scores;
/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsModelCopyWith<AnalyticsModel> get copyWith => _$AnalyticsModelCopyWithImpl<AnalyticsModel>(this as AnalyticsModel, _$identity);

  /// Serializes this AnalyticsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsModel&&const DeepCollectionEquality().equals(other.heatmap, heatmap)&&const DeepCollectionEquality().equals(other.categoryBreakdown, categoryBreakdown)&&const DeepCollectionEquality().equals(other.emotionalSpending, emotionalSpending)&&(identical(other.riskTimeline, riskTimeline) || other.riskTimeline == riskTimeline)&&(identical(other.comparison, comparison) || other.comparison == comparison)&&(identical(other.scores, scores) || other.scores == scores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(heatmap),const DeepCollectionEquality().hash(categoryBreakdown),const DeepCollectionEquality().hash(emotionalSpending),riskTimeline,comparison,scores);

@override
String toString() {
  return 'AnalyticsModel(heatmap: $heatmap, categoryBreakdown: $categoryBreakdown, emotionalSpending: $emotionalSpending, riskTimeline: $riskTimeline, comparison: $comparison, scores: $scores)';
}


}

/// @nodoc
abstract mixin class $AnalyticsModelCopyWith<$Res>  {
  factory $AnalyticsModelCopyWith(AnalyticsModel value, $Res Function(AnalyticsModel) _then) = _$AnalyticsModelCopyWithImpl;
@useResult
$Res call({
 List<HeatmapDayModel> heatmap,@JsonKey(name: 'category_breakdown') List<CategoryBreakdownModel> categoryBreakdown,@JsonKey(name: 'emotional_spending') List<EmotionSpendingModel> emotionalSpending,@JsonKey(name: 'risk_timeline') RiskTimelineModel riskTimeline, PeerComparisonModel comparison, AnalyticsScoresModel scores
});


$RiskTimelineModelCopyWith<$Res> get riskTimeline;$PeerComparisonModelCopyWith<$Res> get comparison;$AnalyticsScoresModelCopyWith<$Res> get scores;

}
/// @nodoc
class _$AnalyticsModelCopyWithImpl<$Res>
    implements $AnalyticsModelCopyWith<$Res> {
  _$AnalyticsModelCopyWithImpl(this._self, this._then);

  final AnalyticsModel _self;
  final $Res Function(AnalyticsModel) _then;

/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? heatmap = null,Object? categoryBreakdown = null,Object? emotionalSpending = null,Object? riskTimeline = null,Object? comparison = null,Object? scores = null,}) {
  return _then(_self.copyWith(
heatmap: null == heatmap ? _self.heatmap : heatmap // ignore: cast_nullable_to_non_nullable
as List<HeatmapDayModel>,categoryBreakdown: null == categoryBreakdown ? _self.categoryBreakdown : categoryBreakdown // ignore: cast_nullable_to_non_nullable
as List<CategoryBreakdownModel>,emotionalSpending: null == emotionalSpending ? _self.emotionalSpending : emotionalSpending // ignore: cast_nullable_to_non_nullable
as List<EmotionSpendingModel>,riskTimeline: null == riskTimeline ? _self.riskTimeline : riskTimeline // ignore: cast_nullable_to_non_nullable
as RiskTimelineModel,comparison: null == comparison ? _self.comparison : comparison // ignore: cast_nullable_to_non_nullable
as PeerComparisonModel,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as AnalyticsScoresModel,
  ));
}
/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskTimelineModelCopyWith<$Res> get riskTimeline {
  
  return $RiskTimelineModelCopyWith<$Res>(_self.riskTimeline, (value) {
    return _then(_self.copyWith(riskTimeline: value));
  });
}/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeerComparisonModelCopyWith<$Res> get comparison {
  
  return $PeerComparisonModelCopyWith<$Res>(_self.comparison, (value) {
    return _then(_self.copyWith(comparison: value));
  });
}/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsScoresModelCopyWith<$Res> get scores {
  
  return $AnalyticsScoresModelCopyWith<$Res>(_self.scores, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyticsModel].
extension AnalyticsModelPatterns on AnalyticsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HeatmapDayModel> heatmap, @JsonKey(name: 'category_breakdown')  List<CategoryBreakdownModel> categoryBreakdown, @JsonKey(name: 'emotional_spending')  List<EmotionSpendingModel> emotionalSpending, @JsonKey(name: 'risk_timeline')  RiskTimelineModel riskTimeline,  PeerComparisonModel comparison,  AnalyticsScoresModel scores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HeatmapDayModel> heatmap, @JsonKey(name: 'category_breakdown')  List<CategoryBreakdownModel> categoryBreakdown, @JsonKey(name: 'emotional_spending')  List<EmotionSpendingModel> emotionalSpending, @JsonKey(name: 'risk_timeline')  RiskTimelineModel riskTimeline,  PeerComparisonModel comparison,  AnalyticsScoresModel scores)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HeatmapDayModel> heatmap, @JsonKey(name: 'category_breakdown')  List<CategoryBreakdownModel> categoryBreakdown, @JsonKey(name: 'emotional_spending')  List<EmotionSpendingModel> emotionalSpending, @JsonKey(name: 'risk_timeline')  RiskTimelineModel riskTimeline,  PeerComparisonModel comparison,  AnalyticsScoresModel scores)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsModel() when $default != null:
return $default(_that.heatmap,_that.categoryBreakdown,_that.emotionalSpending,_that.riskTimeline,_that.comparison,_that.scores);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticsModel implements AnalyticsModel {
  const _AnalyticsModel({required final  List<HeatmapDayModel> heatmap, @JsonKey(name: 'category_breakdown') required final  List<CategoryBreakdownModel> categoryBreakdown, @JsonKey(name: 'emotional_spending') required final  List<EmotionSpendingModel> emotionalSpending, @JsonKey(name: 'risk_timeline') required this.riskTimeline, required this.comparison, required this.scores}): _heatmap = heatmap,_categoryBreakdown = categoryBreakdown,_emotionalSpending = emotionalSpending;
  factory _AnalyticsModel.fromJson(Map<String, dynamic> json) => _$AnalyticsModelFromJson(json);

 final  List<HeatmapDayModel> _heatmap;
@override List<HeatmapDayModel> get heatmap {
  if (_heatmap is EqualUnmodifiableListView) return _heatmap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heatmap);
}

 final  List<CategoryBreakdownModel> _categoryBreakdown;
@override@JsonKey(name: 'category_breakdown') List<CategoryBreakdownModel> get categoryBreakdown {
  if (_categoryBreakdown is EqualUnmodifiableListView) return _categoryBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryBreakdown);
}

 final  List<EmotionSpendingModel> _emotionalSpending;
@override@JsonKey(name: 'emotional_spending') List<EmotionSpendingModel> get emotionalSpending {
  if (_emotionalSpending is EqualUnmodifiableListView) return _emotionalSpending;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_emotionalSpending);
}

@override@JsonKey(name: 'risk_timeline') final  RiskTimelineModel riskTimeline;
@override final  PeerComparisonModel comparison;
@override final  AnalyticsScoresModel scores;

/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsModelCopyWith<_AnalyticsModel> get copyWith => __$AnalyticsModelCopyWithImpl<_AnalyticsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsModel&&const DeepCollectionEquality().equals(other._heatmap, _heatmap)&&const DeepCollectionEquality().equals(other._categoryBreakdown, _categoryBreakdown)&&const DeepCollectionEquality().equals(other._emotionalSpending, _emotionalSpending)&&(identical(other.riskTimeline, riskTimeline) || other.riskTimeline == riskTimeline)&&(identical(other.comparison, comparison) || other.comparison == comparison)&&(identical(other.scores, scores) || other.scores == scores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_heatmap),const DeepCollectionEquality().hash(_categoryBreakdown),const DeepCollectionEquality().hash(_emotionalSpending),riskTimeline,comparison,scores);

@override
String toString() {
  return 'AnalyticsModel(heatmap: $heatmap, categoryBreakdown: $categoryBreakdown, emotionalSpending: $emotionalSpending, riskTimeline: $riskTimeline, comparison: $comparison, scores: $scores)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsModelCopyWith<$Res> implements $AnalyticsModelCopyWith<$Res> {
  factory _$AnalyticsModelCopyWith(_AnalyticsModel value, $Res Function(_AnalyticsModel) _then) = __$AnalyticsModelCopyWithImpl;
@override @useResult
$Res call({
 List<HeatmapDayModel> heatmap,@JsonKey(name: 'category_breakdown') List<CategoryBreakdownModel> categoryBreakdown,@JsonKey(name: 'emotional_spending') List<EmotionSpendingModel> emotionalSpending,@JsonKey(name: 'risk_timeline') RiskTimelineModel riskTimeline, PeerComparisonModel comparison, AnalyticsScoresModel scores
});


@override $RiskTimelineModelCopyWith<$Res> get riskTimeline;@override $PeerComparisonModelCopyWith<$Res> get comparison;@override $AnalyticsScoresModelCopyWith<$Res> get scores;

}
/// @nodoc
class __$AnalyticsModelCopyWithImpl<$Res>
    implements _$AnalyticsModelCopyWith<$Res> {
  __$AnalyticsModelCopyWithImpl(this._self, this._then);

  final _AnalyticsModel _self;
  final $Res Function(_AnalyticsModel) _then;

/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? heatmap = null,Object? categoryBreakdown = null,Object? emotionalSpending = null,Object? riskTimeline = null,Object? comparison = null,Object? scores = null,}) {
  return _then(_AnalyticsModel(
heatmap: null == heatmap ? _self._heatmap : heatmap // ignore: cast_nullable_to_non_nullable
as List<HeatmapDayModel>,categoryBreakdown: null == categoryBreakdown ? _self._categoryBreakdown : categoryBreakdown // ignore: cast_nullable_to_non_nullable
as List<CategoryBreakdownModel>,emotionalSpending: null == emotionalSpending ? _self._emotionalSpending : emotionalSpending // ignore: cast_nullable_to_non_nullable
as List<EmotionSpendingModel>,riskTimeline: null == riskTimeline ? _self.riskTimeline : riskTimeline // ignore: cast_nullable_to_non_nullable
as RiskTimelineModel,comparison: null == comparison ? _self.comparison : comparison // ignore: cast_nullable_to_non_nullable
as PeerComparisonModel,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as AnalyticsScoresModel,
  ));
}

/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskTimelineModelCopyWith<$Res> get riskTimeline {
  
  return $RiskTimelineModelCopyWith<$Res>(_self.riskTimeline, (value) {
    return _then(_self.copyWith(riskTimeline: value));
  });
}/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeerComparisonModelCopyWith<$Res> get comparison {
  
  return $PeerComparisonModelCopyWith<$Res>(_self.comparison, (value) {
    return _then(_self.copyWith(comparison: value));
  });
}/// Create a copy of AnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsScoresModelCopyWith<$Res> get scores {
  
  return $AnalyticsScoresModelCopyWith<$Res>(_self.scores, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// @nodoc
mixin _$HeatmapDayModel {

 String get date; double get amount; int get intensity;
/// Create a copy of HeatmapDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeatmapDayModelCopyWith<HeatmapDayModel> get copyWith => _$HeatmapDayModelCopyWithImpl<HeatmapDayModel>(this as HeatmapDayModel, _$identity);

  /// Serializes this HeatmapDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeatmapDayModel&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.intensity, intensity) || other.intensity == intensity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,amount,intensity);

@override
String toString() {
  return 'HeatmapDayModel(date: $date, amount: $amount, intensity: $intensity)';
}


}

/// @nodoc
abstract mixin class $HeatmapDayModelCopyWith<$Res>  {
  factory $HeatmapDayModelCopyWith(HeatmapDayModel value, $Res Function(HeatmapDayModel) _then) = _$HeatmapDayModelCopyWithImpl;
@useResult
$Res call({
 String date, double amount, int intensity
});




}
/// @nodoc
class _$HeatmapDayModelCopyWithImpl<$Res>
    implements $HeatmapDayModelCopyWith<$Res> {
  _$HeatmapDayModelCopyWithImpl(this._self, this._then);

  final HeatmapDayModel _self;
  final $Res Function(HeatmapDayModel) _then;

/// Create a copy of HeatmapDayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? amount = null,Object? intensity = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HeatmapDayModel].
extension HeatmapDayModelPatterns on HeatmapDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeatmapDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeatmapDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeatmapDayModel value)  $default,){
final _that = this;
switch (_that) {
case _HeatmapDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeatmapDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _HeatmapDayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  double amount,  int intensity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeatmapDayModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  double amount,  int intensity)  $default,) {final _that = this;
switch (_that) {
case _HeatmapDayModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  double amount,  int intensity)?  $default,) {final _that = this;
switch (_that) {
case _HeatmapDayModel() when $default != null:
return $default(_that.date,_that.amount,_that.intensity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HeatmapDayModel implements HeatmapDayModel {
  const _HeatmapDayModel({required this.date, required this.amount, required this.intensity});
  factory _HeatmapDayModel.fromJson(Map<String, dynamic> json) => _$HeatmapDayModelFromJson(json);

@override final  String date;
@override final  double amount;
@override final  int intensity;

/// Create a copy of HeatmapDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeatmapDayModelCopyWith<_HeatmapDayModel> get copyWith => __$HeatmapDayModelCopyWithImpl<_HeatmapDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HeatmapDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeatmapDayModel&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.intensity, intensity) || other.intensity == intensity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,amount,intensity);

@override
String toString() {
  return 'HeatmapDayModel(date: $date, amount: $amount, intensity: $intensity)';
}


}

/// @nodoc
abstract mixin class _$HeatmapDayModelCopyWith<$Res> implements $HeatmapDayModelCopyWith<$Res> {
  factory _$HeatmapDayModelCopyWith(_HeatmapDayModel value, $Res Function(_HeatmapDayModel) _then) = __$HeatmapDayModelCopyWithImpl;
@override @useResult
$Res call({
 String date, double amount, int intensity
});




}
/// @nodoc
class __$HeatmapDayModelCopyWithImpl<$Res>
    implements _$HeatmapDayModelCopyWith<$Res> {
  __$HeatmapDayModelCopyWithImpl(this._self, this._then);

  final _HeatmapDayModel _self;
  final $Res Function(_HeatmapDayModel) _then;

/// Create a copy of HeatmapDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? amount = null,Object? intensity = null,}) {
  return _then(_HeatmapDayModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CategoryBreakdownModel {

 String get category; double get amount; double get percentage;
/// Create a copy of CategoryBreakdownModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryBreakdownModelCopyWith<CategoryBreakdownModel> get copyWith => _$CategoryBreakdownModelCopyWithImpl<CategoryBreakdownModel>(this as CategoryBreakdownModel, _$identity);

  /// Serializes this CategoryBreakdownModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryBreakdownModel&&(identical(other.category, category) || other.category == category)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,amount,percentage);

@override
String toString() {
  return 'CategoryBreakdownModel(category: $category, amount: $amount, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class $CategoryBreakdownModelCopyWith<$Res>  {
  factory $CategoryBreakdownModelCopyWith(CategoryBreakdownModel value, $Res Function(CategoryBreakdownModel) _then) = _$CategoryBreakdownModelCopyWithImpl;
@useResult
$Res call({
 String category, double amount, double percentage
});




}
/// @nodoc
class _$CategoryBreakdownModelCopyWithImpl<$Res>
    implements $CategoryBreakdownModelCopyWith<$Res> {
  _$CategoryBreakdownModelCopyWithImpl(this._self, this._then);

  final CategoryBreakdownModel _self;
  final $Res Function(CategoryBreakdownModel) _then;

/// Create a copy of CategoryBreakdownModel
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


/// Adds pattern-matching-related methods to [CategoryBreakdownModel].
extension CategoryBreakdownModelPatterns on CategoryBreakdownModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryBreakdownModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryBreakdownModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryBreakdownModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryBreakdownModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryBreakdownModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryBreakdownModel() when $default != null:
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
case _CategoryBreakdownModel() when $default != null:
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
case _CategoryBreakdownModel():
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
case _CategoryBreakdownModel() when $default != null:
return $default(_that.category,_that.amount,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryBreakdownModel implements CategoryBreakdownModel {
  const _CategoryBreakdownModel({required this.category, required this.amount, required this.percentage});
  factory _CategoryBreakdownModel.fromJson(Map<String, dynamic> json) => _$CategoryBreakdownModelFromJson(json);

@override final  String category;
@override final  double amount;
@override final  double percentage;

/// Create a copy of CategoryBreakdownModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryBreakdownModelCopyWith<_CategoryBreakdownModel> get copyWith => __$CategoryBreakdownModelCopyWithImpl<_CategoryBreakdownModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryBreakdownModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryBreakdownModel&&(identical(other.category, category) || other.category == category)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,amount,percentage);

@override
String toString() {
  return 'CategoryBreakdownModel(category: $category, amount: $amount, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$CategoryBreakdownModelCopyWith<$Res> implements $CategoryBreakdownModelCopyWith<$Res> {
  factory _$CategoryBreakdownModelCopyWith(_CategoryBreakdownModel value, $Res Function(_CategoryBreakdownModel) _then) = __$CategoryBreakdownModelCopyWithImpl;
@override @useResult
$Res call({
 String category, double amount, double percentage
});




}
/// @nodoc
class __$CategoryBreakdownModelCopyWithImpl<$Res>
    implements _$CategoryBreakdownModelCopyWith<$Res> {
  __$CategoryBreakdownModelCopyWithImpl(this._self, this._then);

  final _CategoryBreakdownModel _self;
  final $Res Function(_CategoryBreakdownModel) _then;

/// Create a copy of CategoryBreakdownModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? amount = null,Object? percentage = null,}) {
  return _then(_CategoryBreakdownModel(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$EmotionSpendingModel {

 String get emotion;@JsonKey(name: 'total_amount') double get totalAmount;@JsonKey(name: 'transaction_count') int get transactionCount;
/// Create a copy of EmotionSpendingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmotionSpendingModelCopyWith<EmotionSpendingModel> get copyWith => _$EmotionSpendingModelCopyWithImpl<EmotionSpendingModel>(this as EmotionSpendingModel, _$identity);

  /// Serializes this EmotionSpendingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmotionSpendingModel&&(identical(other.emotion, emotion) || other.emotion == emotion)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emotion,totalAmount,transactionCount);

@override
String toString() {
  return 'EmotionSpendingModel(emotion: $emotion, totalAmount: $totalAmount, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class $EmotionSpendingModelCopyWith<$Res>  {
  factory $EmotionSpendingModelCopyWith(EmotionSpendingModel value, $Res Function(EmotionSpendingModel) _then) = _$EmotionSpendingModelCopyWithImpl;
@useResult
$Res call({
 String emotion,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'transaction_count') int transactionCount
});




}
/// @nodoc
class _$EmotionSpendingModelCopyWithImpl<$Res>
    implements $EmotionSpendingModelCopyWith<$Res> {
  _$EmotionSpendingModelCopyWithImpl(this._self, this._then);

  final EmotionSpendingModel _self;
  final $Res Function(EmotionSpendingModel) _then;

/// Create a copy of EmotionSpendingModel
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


/// Adds pattern-matching-related methods to [EmotionSpendingModel].
extension EmotionSpendingModelPatterns on EmotionSpendingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmotionSpendingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmotionSpendingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmotionSpendingModel value)  $default,){
final _that = this;
switch (_that) {
case _EmotionSpendingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmotionSpendingModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmotionSpendingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String emotion, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'transaction_count')  int transactionCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmotionSpendingModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String emotion, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'transaction_count')  int transactionCount)  $default,) {final _that = this;
switch (_that) {
case _EmotionSpendingModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String emotion, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'transaction_count')  int transactionCount)?  $default,) {final _that = this;
switch (_that) {
case _EmotionSpendingModel() when $default != null:
return $default(_that.emotion,_that.totalAmount,_that.transactionCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmotionSpendingModel implements EmotionSpendingModel {
  const _EmotionSpendingModel({required this.emotion, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'transaction_count') required this.transactionCount});
  factory _EmotionSpendingModel.fromJson(Map<String, dynamic> json) => _$EmotionSpendingModelFromJson(json);

@override final  String emotion;
@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey(name: 'transaction_count') final  int transactionCount;

/// Create a copy of EmotionSpendingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmotionSpendingModelCopyWith<_EmotionSpendingModel> get copyWith => __$EmotionSpendingModelCopyWithImpl<_EmotionSpendingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmotionSpendingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmotionSpendingModel&&(identical(other.emotion, emotion) || other.emotion == emotion)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.transactionCount, transactionCount) || other.transactionCount == transactionCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emotion,totalAmount,transactionCount);

@override
String toString() {
  return 'EmotionSpendingModel(emotion: $emotion, totalAmount: $totalAmount, transactionCount: $transactionCount)';
}


}

/// @nodoc
abstract mixin class _$EmotionSpendingModelCopyWith<$Res> implements $EmotionSpendingModelCopyWith<$Res> {
  factory _$EmotionSpendingModelCopyWith(_EmotionSpendingModel value, $Res Function(_EmotionSpendingModel) _then) = __$EmotionSpendingModelCopyWithImpl;
@override @useResult
$Res call({
 String emotion,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'transaction_count') int transactionCount
});




}
/// @nodoc
class __$EmotionSpendingModelCopyWithImpl<$Res>
    implements _$EmotionSpendingModelCopyWith<$Res> {
  __$EmotionSpendingModelCopyWithImpl(this._self, this._then);

  final _EmotionSpendingModel _self;
  final $Res Function(_EmotionSpendingModel) _then;

/// Create a copy of EmotionSpendingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emotion = null,Object? totalAmount = null,Object? transactionCount = null,}) {
  return _then(_EmotionSpendingModel(
emotion: null == emotion ? _self.emotion : emotion // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,transactionCount: null == transactionCount ? _self.transactionCount : transactionCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RiskTimelineModel {

 List<RiskPointModel> get points; String get trend;
/// Create a copy of RiskTimelineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskTimelineModelCopyWith<RiskTimelineModel> get copyWith => _$RiskTimelineModelCopyWithImpl<RiskTimelineModel>(this as RiskTimelineModel, _$identity);

  /// Serializes this RiskTimelineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskTimelineModel&&const DeepCollectionEquality().equals(other.points, points)&&(identical(other.trend, trend) || other.trend == trend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(points),trend);

@override
String toString() {
  return 'RiskTimelineModel(points: $points, trend: $trend)';
}


}

/// @nodoc
abstract mixin class $RiskTimelineModelCopyWith<$Res>  {
  factory $RiskTimelineModelCopyWith(RiskTimelineModel value, $Res Function(RiskTimelineModel) _then) = _$RiskTimelineModelCopyWithImpl;
@useResult
$Res call({
 List<RiskPointModel> points, String trend
});




}
/// @nodoc
class _$RiskTimelineModelCopyWithImpl<$Res>
    implements $RiskTimelineModelCopyWith<$Res> {
  _$RiskTimelineModelCopyWithImpl(this._self, this._then);

  final RiskTimelineModel _self;
  final $Res Function(RiskTimelineModel) _then;

/// Create a copy of RiskTimelineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? trend = null,}) {
  return _then(_self.copyWith(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<RiskPointModel>,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskTimelineModel].
extension RiskTimelineModelPatterns on RiskTimelineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskTimelineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskTimelineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskTimelineModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskTimelineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskTimelineModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskTimelineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RiskPointModel> points,  String trend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskTimelineModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RiskPointModel> points,  String trend)  $default,) {final _that = this;
switch (_that) {
case _RiskTimelineModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RiskPointModel> points,  String trend)?  $default,) {final _that = this;
switch (_that) {
case _RiskTimelineModel() when $default != null:
return $default(_that.points,_that.trend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskTimelineModel implements RiskTimelineModel {
  const _RiskTimelineModel({required final  List<RiskPointModel> points, required this.trend}): _points = points;
  factory _RiskTimelineModel.fromJson(Map<String, dynamic> json) => _$RiskTimelineModelFromJson(json);

 final  List<RiskPointModel> _points;
@override List<RiskPointModel> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override final  String trend;

/// Create a copy of RiskTimelineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskTimelineModelCopyWith<_RiskTimelineModel> get copyWith => __$RiskTimelineModelCopyWithImpl<_RiskTimelineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskTimelineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskTimelineModel&&const DeepCollectionEquality().equals(other._points, _points)&&(identical(other.trend, trend) || other.trend == trend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),trend);

@override
String toString() {
  return 'RiskTimelineModel(points: $points, trend: $trend)';
}


}

/// @nodoc
abstract mixin class _$RiskTimelineModelCopyWith<$Res> implements $RiskTimelineModelCopyWith<$Res> {
  factory _$RiskTimelineModelCopyWith(_RiskTimelineModel value, $Res Function(_RiskTimelineModel) _then) = __$RiskTimelineModelCopyWithImpl;
@override @useResult
$Res call({
 List<RiskPointModel> points, String trend
});




}
/// @nodoc
class __$RiskTimelineModelCopyWithImpl<$Res>
    implements _$RiskTimelineModelCopyWith<$Res> {
  __$RiskTimelineModelCopyWithImpl(this._self, this._then);

  final _RiskTimelineModel _self;
  final $Res Function(_RiskTimelineModel) _then;

/// Create a copy of RiskTimelineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? trend = null,}) {
  return _then(_RiskTimelineModel(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<RiskPointModel>,trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RiskPointModel {

 String get date;@JsonKey(name: 'risk_score') int get riskScore;
/// Create a copy of RiskPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskPointModelCopyWith<RiskPointModel> get copyWith => _$RiskPointModelCopyWithImpl<RiskPointModel>(this as RiskPointModel, _$identity);

  /// Serializes this RiskPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,riskScore);

@override
String toString() {
  return 'RiskPointModel(date: $date, riskScore: $riskScore)';
}


}

/// @nodoc
abstract mixin class $RiskPointModelCopyWith<$Res>  {
  factory $RiskPointModelCopyWith(RiskPointModel value, $Res Function(RiskPointModel) _then) = _$RiskPointModelCopyWithImpl;
@useResult
$Res call({
 String date,@JsonKey(name: 'risk_score') int riskScore
});




}
/// @nodoc
class _$RiskPointModelCopyWithImpl<$Res>
    implements $RiskPointModelCopyWith<$Res> {
  _$RiskPointModelCopyWithImpl(this._self, this._then);

  final RiskPointModel _self;
  final $Res Function(RiskPointModel) _then;

/// Create a copy of RiskPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? riskScore = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskPointModel].
extension RiskPointModelPatterns on RiskPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskPointModel value)  $default,){
final _that = this;
switch (_that) {
case _RiskPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _RiskPointModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'risk_score')  int riskScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskPointModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'risk_score')  int riskScore)  $default,) {final _that = this;
switch (_that) {
case _RiskPointModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date, @JsonKey(name: 'risk_score')  int riskScore)?  $default,) {final _that = this;
switch (_that) {
case _RiskPointModel() when $default != null:
return $default(_that.date,_that.riskScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RiskPointModel implements RiskPointModel {
  const _RiskPointModel({required this.date, @JsonKey(name: 'risk_score') required this.riskScore});
  factory _RiskPointModel.fromJson(Map<String, dynamic> json) => _$RiskPointModelFromJson(json);

@override final  String date;
@override@JsonKey(name: 'risk_score') final  int riskScore;

/// Create a copy of RiskPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskPointModelCopyWith<_RiskPointModel> get copyWith => __$RiskPointModelCopyWithImpl<_RiskPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskPointModel&&(identical(other.date, date) || other.date == date)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,riskScore);

@override
String toString() {
  return 'RiskPointModel(date: $date, riskScore: $riskScore)';
}


}

/// @nodoc
abstract mixin class _$RiskPointModelCopyWith<$Res> implements $RiskPointModelCopyWith<$Res> {
  factory _$RiskPointModelCopyWith(_RiskPointModel value, $Res Function(_RiskPointModel) _then) = __$RiskPointModelCopyWithImpl;
@override @useResult
$Res call({
 String date,@JsonKey(name: 'risk_score') int riskScore
});




}
/// @nodoc
class __$RiskPointModelCopyWithImpl<$Res>
    implements _$RiskPointModelCopyWith<$Res> {
  __$RiskPointModelCopyWithImpl(this._self, this._then);

  final _RiskPointModel _self;
  final $Res Function(_RiskPointModel) _then;

/// Create a copy of RiskPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? riskScore = null,}) {
  return _then(_RiskPointModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PeerComparisonModel {

@JsonKey(name: 'age_group') String get ageGroup;@JsonKey(name: 'your_savings_rate') double get yourSavingsRate;@JsonKey(name: 'peer_avg_savings_rate') double get peerAvgSavingsRate;@JsonKey(name: 'your_impulsive_spending') double get yourImpulsiveSpending;@JsonKey(name: 'peer_avg_impulsive_spending') double get peerAvgImpulsiveSpending;@JsonKey(name: 'percentile_rank') int get percentileRank;
/// Create a copy of PeerComparisonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeerComparisonModelCopyWith<PeerComparisonModel> get copyWith => _$PeerComparisonModelCopyWithImpl<PeerComparisonModel>(this as PeerComparisonModel, _$identity);

  /// Serializes this PeerComparisonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeerComparisonModel&&(identical(other.ageGroup, ageGroup) || other.ageGroup == ageGroup)&&(identical(other.yourSavingsRate, yourSavingsRate) || other.yourSavingsRate == yourSavingsRate)&&(identical(other.peerAvgSavingsRate, peerAvgSavingsRate) || other.peerAvgSavingsRate == peerAvgSavingsRate)&&(identical(other.yourImpulsiveSpending, yourImpulsiveSpending) || other.yourImpulsiveSpending == yourImpulsiveSpending)&&(identical(other.peerAvgImpulsiveSpending, peerAvgImpulsiveSpending) || other.peerAvgImpulsiveSpending == peerAvgImpulsiveSpending)&&(identical(other.percentileRank, percentileRank) || other.percentileRank == percentileRank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageGroup,yourSavingsRate,peerAvgSavingsRate,yourImpulsiveSpending,peerAvgImpulsiveSpending,percentileRank);

@override
String toString() {
  return 'PeerComparisonModel(ageGroup: $ageGroup, yourSavingsRate: $yourSavingsRate, peerAvgSavingsRate: $peerAvgSavingsRate, yourImpulsiveSpending: $yourImpulsiveSpending, peerAvgImpulsiveSpending: $peerAvgImpulsiveSpending, percentileRank: $percentileRank)';
}


}

/// @nodoc
abstract mixin class $PeerComparisonModelCopyWith<$Res>  {
  factory $PeerComparisonModelCopyWith(PeerComparisonModel value, $Res Function(PeerComparisonModel) _then) = _$PeerComparisonModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'age_group') String ageGroup,@JsonKey(name: 'your_savings_rate') double yourSavingsRate,@JsonKey(name: 'peer_avg_savings_rate') double peerAvgSavingsRate,@JsonKey(name: 'your_impulsive_spending') double yourImpulsiveSpending,@JsonKey(name: 'peer_avg_impulsive_spending') double peerAvgImpulsiveSpending,@JsonKey(name: 'percentile_rank') int percentileRank
});




}
/// @nodoc
class _$PeerComparisonModelCopyWithImpl<$Res>
    implements $PeerComparisonModelCopyWith<$Res> {
  _$PeerComparisonModelCopyWithImpl(this._self, this._then);

  final PeerComparisonModel _self;
  final $Res Function(PeerComparisonModel) _then;

/// Create a copy of PeerComparisonModel
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


/// Adds pattern-matching-related methods to [PeerComparisonModel].
extension PeerComparisonModelPatterns on PeerComparisonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeerComparisonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeerComparisonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeerComparisonModel value)  $default,){
final _that = this;
switch (_that) {
case _PeerComparisonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeerComparisonModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeerComparisonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'age_group')  String ageGroup, @JsonKey(name: 'your_savings_rate')  double yourSavingsRate, @JsonKey(name: 'peer_avg_savings_rate')  double peerAvgSavingsRate, @JsonKey(name: 'your_impulsive_spending')  double yourImpulsiveSpending, @JsonKey(name: 'peer_avg_impulsive_spending')  double peerAvgImpulsiveSpending, @JsonKey(name: 'percentile_rank')  int percentileRank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeerComparisonModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'age_group')  String ageGroup, @JsonKey(name: 'your_savings_rate')  double yourSavingsRate, @JsonKey(name: 'peer_avg_savings_rate')  double peerAvgSavingsRate, @JsonKey(name: 'your_impulsive_spending')  double yourImpulsiveSpending, @JsonKey(name: 'peer_avg_impulsive_spending')  double peerAvgImpulsiveSpending, @JsonKey(name: 'percentile_rank')  int percentileRank)  $default,) {final _that = this;
switch (_that) {
case _PeerComparisonModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'age_group')  String ageGroup, @JsonKey(name: 'your_savings_rate')  double yourSavingsRate, @JsonKey(name: 'peer_avg_savings_rate')  double peerAvgSavingsRate, @JsonKey(name: 'your_impulsive_spending')  double yourImpulsiveSpending, @JsonKey(name: 'peer_avg_impulsive_spending')  double peerAvgImpulsiveSpending, @JsonKey(name: 'percentile_rank')  int percentileRank)?  $default,) {final _that = this;
switch (_that) {
case _PeerComparisonModel() when $default != null:
return $default(_that.ageGroup,_that.yourSavingsRate,_that.peerAvgSavingsRate,_that.yourImpulsiveSpending,_that.peerAvgImpulsiveSpending,_that.percentileRank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PeerComparisonModel implements PeerComparisonModel {
  const _PeerComparisonModel({@JsonKey(name: 'age_group') required this.ageGroup, @JsonKey(name: 'your_savings_rate') required this.yourSavingsRate, @JsonKey(name: 'peer_avg_savings_rate') required this.peerAvgSavingsRate, @JsonKey(name: 'your_impulsive_spending') required this.yourImpulsiveSpending, @JsonKey(name: 'peer_avg_impulsive_spending') required this.peerAvgImpulsiveSpending, @JsonKey(name: 'percentile_rank') required this.percentileRank});
  factory _PeerComparisonModel.fromJson(Map<String, dynamic> json) => _$PeerComparisonModelFromJson(json);

@override@JsonKey(name: 'age_group') final  String ageGroup;
@override@JsonKey(name: 'your_savings_rate') final  double yourSavingsRate;
@override@JsonKey(name: 'peer_avg_savings_rate') final  double peerAvgSavingsRate;
@override@JsonKey(name: 'your_impulsive_spending') final  double yourImpulsiveSpending;
@override@JsonKey(name: 'peer_avg_impulsive_spending') final  double peerAvgImpulsiveSpending;
@override@JsonKey(name: 'percentile_rank') final  int percentileRank;

/// Create a copy of PeerComparisonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeerComparisonModelCopyWith<_PeerComparisonModel> get copyWith => __$PeerComparisonModelCopyWithImpl<_PeerComparisonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeerComparisonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeerComparisonModel&&(identical(other.ageGroup, ageGroup) || other.ageGroup == ageGroup)&&(identical(other.yourSavingsRate, yourSavingsRate) || other.yourSavingsRate == yourSavingsRate)&&(identical(other.peerAvgSavingsRate, peerAvgSavingsRate) || other.peerAvgSavingsRate == peerAvgSavingsRate)&&(identical(other.yourImpulsiveSpending, yourImpulsiveSpending) || other.yourImpulsiveSpending == yourImpulsiveSpending)&&(identical(other.peerAvgImpulsiveSpending, peerAvgImpulsiveSpending) || other.peerAvgImpulsiveSpending == peerAvgImpulsiveSpending)&&(identical(other.percentileRank, percentileRank) || other.percentileRank == percentileRank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageGroup,yourSavingsRate,peerAvgSavingsRate,yourImpulsiveSpending,peerAvgImpulsiveSpending,percentileRank);

@override
String toString() {
  return 'PeerComparisonModel(ageGroup: $ageGroup, yourSavingsRate: $yourSavingsRate, peerAvgSavingsRate: $peerAvgSavingsRate, yourImpulsiveSpending: $yourImpulsiveSpending, peerAvgImpulsiveSpending: $peerAvgImpulsiveSpending, percentileRank: $percentileRank)';
}


}

/// @nodoc
abstract mixin class _$PeerComparisonModelCopyWith<$Res> implements $PeerComparisonModelCopyWith<$Res> {
  factory _$PeerComparisonModelCopyWith(_PeerComparisonModel value, $Res Function(_PeerComparisonModel) _then) = __$PeerComparisonModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'age_group') String ageGroup,@JsonKey(name: 'your_savings_rate') double yourSavingsRate,@JsonKey(name: 'peer_avg_savings_rate') double peerAvgSavingsRate,@JsonKey(name: 'your_impulsive_spending') double yourImpulsiveSpending,@JsonKey(name: 'peer_avg_impulsive_spending') double peerAvgImpulsiveSpending,@JsonKey(name: 'percentile_rank') int percentileRank
});




}
/// @nodoc
class __$PeerComparisonModelCopyWithImpl<$Res>
    implements _$PeerComparisonModelCopyWith<$Res> {
  __$PeerComparisonModelCopyWithImpl(this._self, this._then);

  final _PeerComparisonModel _self;
  final $Res Function(_PeerComparisonModel) _then;

/// Create a copy of PeerComparisonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ageGroup = null,Object? yourSavingsRate = null,Object? peerAvgSavingsRate = null,Object? yourImpulsiveSpending = null,Object? peerAvgImpulsiveSpending = null,Object? percentileRank = null,}) {
  return _then(_PeerComparisonModel(
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
mixin _$AnalyticsScoresModel {

@JsonKey(name: 'impulsive_score') double get impulsiveScore;@JsonKey(name: 'discipline_score') double get disciplineScore;@JsonKey(name: 'risk_score') double get riskScore;@JsonKey(name: 'emotional_dependency_score') double get emotionalDependencyScore;@JsonKey(name: 'savings_health_score') double get savingsHealthScore;
/// Create a copy of AnalyticsScoresModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsScoresModelCopyWith<AnalyticsScoresModel> get copyWith => _$AnalyticsScoresModelCopyWithImpl<AnalyticsScoresModel>(this as AnalyticsScoresModel, _$identity);

  /// Serializes this AnalyticsScoresModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsScoresModel&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.emotionalDependencyScore, emotionalDependencyScore) || other.emotionalDependencyScore == emotionalDependencyScore)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,impulsiveScore,disciplineScore,riskScore,emotionalDependencyScore,savingsHealthScore);

@override
String toString() {
  return 'AnalyticsScoresModel(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore)';
}


}

/// @nodoc
abstract mixin class $AnalyticsScoresModelCopyWith<$Res>  {
  factory $AnalyticsScoresModelCopyWith(AnalyticsScoresModel value, $Res Function(AnalyticsScoresModel) _then) = _$AnalyticsScoresModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'impulsive_score') double impulsiveScore,@JsonKey(name: 'discipline_score') double disciplineScore,@JsonKey(name: 'risk_score') double riskScore,@JsonKey(name: 'emotional_dependency_score') double emotionalDependencyScore,@JsonKey(name: 'savings_health_score') double savingsHealthScore
});




}
/// @nodoc
class _$AnalyticsScoresModelCopyWithImpl<$Res>
    implements $AnalyticsScoresModelCopyWith<$Res> {
  _$AnalyticsScoresModelCopyWithImpl(this._self, this._then);

  final AnalyticsScoresModel _self;
  final $Res Function(AnalyticsScoresModel) _then;

/// Create a copy of AnalyticsScoresModel
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


/// Adds pattern-matching-related methods to [AnalyticsScoresModel].
extension AnalyticsScoresModelPatterns on AnalyticsScoresModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsScoresModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsScoresModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsScoresModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsScoresModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsScoresModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsScoresModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'impulsive_score')  double impulsiveScore, @JsonKey(name: 'discipline_score')  double disciplineScore, @JsonKey(name: 'risk_score')  double riskScore, @JsonKey(name: 'emotional_dependency_score')  double emotionalDependencyScore, @JsonKey(name: 'savings_health_score')  double savingsHealthScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsScoresModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'impulsive_score')  double impulsiveScore, @JsonKey(name: 'discipline_score')  double disciplineScore, @JsonKey(name: 'risk_score')  double riskScore, @JsonKey(name: 'emotional_dependency_score')  double emotionalDependencyScore, @JsonKey(name: 'savings_health_score')  double savingsHealthScore)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsScoresModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'impulsive_score')  double impulsiveScore, @JsonKey(name: 'discipline_score')  double disciplineScore, @JsonKey(name: 'risk_score')  double riskScore, @JsonKey(name: 'emotional_dependency_score')  double emotionalDependencyScore, @JsonKey(name: 'savings_health_score')  double savingsHealthScore)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsScoresModel() when $default != null:
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticsScoresModel implements AnalyticsScoresModel {
  const _AnalyticsScoresModel({@JsonKey(name: 'impulsive_score') required this.impulsiveScore, @JsonKey(name: 'discipline_score') required this.disciplineScore, @JsonKey(name: 'risk_score') required this.riskScore, @JsonKey(name: 'emotional_dependency_score') required this.emotionalDependencyScore, @JsonKey(name: 'savings_health_score') required this.savingsHealthScore});
  factory _AnalyticsScoresModel.fromJson(Map<String, dynamic> json) => _$AnalyticsScoresModelFromJson(json);

@override@JsonKey(name: 'impulsive_score') final  double impulsiveScore;
@override@JsonKey(name: 'discipline_score') final  double disciplineScore;
@override@JsonKey(name: 'risk_score') final  double riskScore;
@override@JsonKey(name: 'emotional_dependency_score') final  double emotionalDependencyScore;
@override@JsonKey(name: 'savings_health_score') final  double savingsHealthScore;

/// Create a copy of AnalyticsScoresModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsScoresModelCopyWith<_AnalyticsScoresModel> get copyWith => __$AnalyticsScoresModelCopyWithImpl<_AnalyticsScoresModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticsScoresModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsScoresModel&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.emotionalDependencyScore, emotionalDependencyScore) || other.emotionalDependencyScore == emotionalDependencyScore)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,impulsiveScore,disciplineScore,riskScore,emotionalDependencyScore,savingsHealthScore);

@override
String toString() {
  return 'AnalyticsScoresModel(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsScoresModelCopyWith<$Res> implements $AnalyticsScoresModelCopyWith<$Res> {
  factory _$AnalyticsScoresModelCopyWith(_AnalyticsScoresModel value, $Res Function(_AnalyticsScoresModel) _then) = __$AnalyticsScoresModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'impulsive_score') double impulsiveScore,@JsonKey(name: 'discipline_score') double disciplineScore,@JsonKey(name: 'risk_score') double riskScore,@JsonKey(name: 'emotional_dependency_score') double emotionalDependencyScore,@JsonKey(name: 'savings_health_score') double savingsHealthScore
});




}
/// @nodoc
class __$AnalyticsScoresModelCopyWithImpl<$Res>
    implements _$AnalyticsScoresModelCopyWith<$Res> {
  __$AnalyticsScoresModelCopyWithImpl(this._self, this._then);

  final _AnalyticsScoresModel _self;
  final $Res Function(_AnalyticsScoresModel) _then;

/// Create a copy of AnalyticsScoresModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? impulsiveScore = null,Object? disciplineScore = null,Object? riskScore = null,Object? emotionalDependencyScore = null,Object? savingsHealthScore = null,}) {
  return _then(_AnalyticsScoresModel(
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
