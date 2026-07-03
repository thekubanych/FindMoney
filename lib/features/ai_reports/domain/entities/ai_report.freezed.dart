// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiReport {

 String get id; String get userId; AiReportType get reportType; String get content; int get riskScore; int get impulsiveScore; int get disciplineScore; int get emotionalScore; DateTime get createdAt; List<AiInsight>? get insights; AiPrediction? get prediction;
/// Create a copy of AiReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiReportCopyWith<AiReport> get copyWith => _$AiReportCopyWithImpl<AiReport>(this as AiReport, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiReport&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reportType, reportType) || other.reportType == reportType)&&(identical(other.content, content) || other.content == content)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.emotionalScore, emotionalScore) || other.emotionalScore == emotionalScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.insights, insights)&&(identical(other.prediction, prediction) || other.prediction == prediction));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,reportType,content,riskScore,impulsiveScore,disciplineScore,emotionalScore,createdAt,const DeepCollectionEquality().hash(insights),prediction);

@override
String toString() {
  return 'AiReport(id: $id, userId: $userId, reportType: $reportType, content: $content, riskScore: $riskScore, impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, emotionalScore: $emotionalScore, createdAt: $createdAt, insights: $insights, prediction: $prediction)';
}


}

/// @nodoc
abstract mixin class $AiReportCopyWith<$Res>  {
  factory $AiReportCopyWith(AiReport value, $Res Function(AiReport) _then) = _$AiReportCopyWithImpl;
@useResult
$Res call({
 String id, String userId, AiReportType reportType, String content, int riskScore, int impulsiveScore, int disciplineScore, int emotionalScore, DateTime createdAt, List<AiInsight>? insights, AiPrediction? prediction
});


$AiPredictionCopyWith<$Res>? get prediction;

}
/// @nodoc
class _$AiReportCopyWithImpl<$Res>
    implements $AiReportCopyWith<$Res> {
  _$AiReportCopyWithImpl(this._self, this._then);

  final AiReport _self;
  final $Res Function(AiReport) _then;

/// Create a copy of AiReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? reportType = null,Object? content = null,Object? riskScore = null,Object? impulsiveScore = null,Object? disciplineScore = null,Object? emotionalScore = null,Object? createdAt = null,Object? insights = freezed,Object? prediction = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,reportType: null == reportType ? _self.reportType : reportType // ignore: cast_nullable_to_non_nullable
as AiReportType,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,impulsiveScore: null == impulsiveScore ? _self.impulsiveScore : impulsiveScore // ignore: cast_nullable_to_non_nullable
as int,disciplineScore: null == disciplineScore ? _self.disciplineScore : disciplineScore // ignore: cast_nullable_to_non_nullable
as int,emotionalScore: null == emotionalScore ? _self.emotionalScore : emotionalScore // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,insights: freezed == insights ? _self.insights : insights // ignore: cast_nullable_to_non_nullable
as List<AiInsight>?,prediction: freezed == prediction ? _self.prediction : prediction // ignore: cast_nullable_to_non_nullable
as AiPrediction?,
  ));
}
/// Create a copy of AiReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiPredictionCopyWith<$Res>? get prediction {
    if (_self.prediction == null) {
    return null;
  }

  return $AiPredictionCopyWith<$Res>(_self.prediction!, (value) {
    return _then(_self.copyWith(prediction: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiReport].
extension AiReportPatterns on AiReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiReport value)  $default,){
final _that = this;
switch (_that) {
case _AiReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiReport value)?  $default,){
final _that = this;
switch (_that) {
case _AiReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  AiReportType reportType,  String content,  int riskScore,  int impulsiveScore,  int disciplineScore,  int emotionalScore,  DateTime createdAt,  List<AiInsight>? insights,  AiPrediction? prediction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiReport() when $default != null:
return $default(_that.id,_that.userId,_that.reportType,_that.content,_that.riskScore,_that.impulsiveScore,_that.disciplineScore,_that.emotionalScore,_that.createdAt,_that.insights,_that.prediction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  AiReportType reportType,  String content,  int riskScore,  int impulsiveScore,  int disciplineScore,  int emotionalScore,  DateTime createdAt,  List<AiInsight>? insights,  AiPrediction? prediction)  $default,) {final _that = this;
switch (_that) {
case _AiReport():
return $default(_that.id,_that.userId,_that.reportType,_that.content,_that.riskScore,_that.impulsiveScore,_that.disciplineScore,_that.emotionalScore,_that.createdAt,_that.insights,_that.prediction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  AiReportType reportType,  String content,  int riskScore,  int impulsiveScore,  int disciplineScore,  int emotionalScore,  DateTime createdAt,  List<AiInsight>? insights,  AiPrediction? prediction)?  $default,) {final _that = this;
switch (_that) {
case _AiReport() when $default != null:
return $default(_that.id,_that.userId,_that.reportType,_that.content,_that.riskScore,_that.impulsiveScore,_that.disciplineScore,_that.emotionalScore,_that.createdAt,_that.insights,_that.prediction);case _:
  return null;

}
}

}

/// @nodoc


class _AiReport implements AiReport {
  const _AiReport({required this.id, required this.userId, required this.reportType, required this.content, required this.riskScore, required this.impulsiveScore, required this.disciplineScore, required this.emotionalScore, required this.createdAt, final  List<AiInsight>? insights, this.prediction}): _insights = insights;
  

@override final  String id;
@override final  String userId;
@override final  AiReportType reportType;
@override final  String content;
@override final  int riskScore;
@override final  int impulsiveScore;
@override final  int disciplineScore;
@override final  int emotionalScore;
@override final  DateTime createdAt;
 final  List<AiInsight>? _insights;
@override List<AiInsight>? get insights {
  final value = _insights;
  if (value == null) return null;
  if (_insights is EqualUnmodifiableListView) return _insights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  AiPrediction? prediction;

/// Create a copy of AiReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiReportCopyWith<_AiReport> get copyWith => __$AiReportCopyWithImpl<_AiReport>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiReport&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.reportType, reportType) || other.reportType == reportType)&&(identical(other.content, content) || other.content == content)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.emotionalScore, emotionalScore) || other.emotionalScore == emotionalScore)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._insights, _insights)&&(identical(other.prediction, prediction) || other.prediction == prediction));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,reportType,content,riskScore,impulsiveScore,disciplineScore,emotionalScore,createdAt,const DeepCollectionEquality().hash(_insights),prediction);

@override
String toString() {
  return 'AiReport(id: $id, userId: $userId, reportType: $reportType, content: $content, riskScore: $riskScore, impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, emotionalScore: $emotionalScore, createdAt: $createdAt, insights: $insights, prediction: $prediction)';
}


}

/// @nodoc
abstract mixin class _$AiReportCopyWith<$Res> implements $AiReportCopyWith<$Res> {
  factory _$AiReportCopyWith(_AiReport value, $Res Function(_AiReport) _then) = __$AiReportCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, AiReportType reportType, String content, int riskScore, int impulsiveScore, int disciplineScore, int emotionalScore, DateTime createdAt, List<AiInsight>? insights, AiPrediction? prediction
});


@override $AiPredictionCopyWith<$Res>? get prediction;

}
/// @nodoc
class __$AiReportCopyWithImpl<$Res>
    implements _$AiReportCopyWith<$Res> {
  __$AiReportCopyWithImpl(this._self, this._then);

  final _AiReport _self;
  final $Res Function(_AiReport) _then;

/// Create a copy of AiReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? reportType = null,Object? content = null,Object? riskScore = null,Object? impulsiveScore = null,Object? disciplineScore = null,Object? emotionalScore = null,Object? createdAt = null,Object? insights = freezed,Object? prediction = freezed,}) {
  return _then(_AiReport(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,reportType: null == reportType ? _self.reportType : reportType // ignore: cast_nullable_to_non_nullable
as AiReportType,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as int,impulsiveScore: null == impulsiveScore ? _self.impulsiveScore : impulsiveScore // ignore: cast_nullable_to_non_nullable
as int,disciplineScore: null == disciplineScore ? _self.disciplineScore : disciplineScore // ignore: cast_nullable_to_non_nullable
as int,emotionalScore: null == emotionalScore ? _self.emotionalScore : emotionalScore // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,insights: freezed == insights ? _self._insights : insights // ignore: cast_nullable_to_non_nullable
as List<AiInsight>?,prediction: freezed == prediction ? _self.prediction : prediction // ignore: cast_nullable_to_non_nullable
as AiPrediction?,
  ));
}

/// Create a copy of AiReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiPredictionCopyWith<$Res>? get prediction {
    if (_self.prediction == null) {
    return null;
  }

  return $AiPredictionCopyWith<$Res>(_self.prediction!, (value) {
    return _then(_self.copyWith(prediction: value));
  });
}
}

/// @nodoc
mixin _$AiInsight {

 AiInsightType get type; String get title; String get description; InsightSeverity get severity;
/// Create a copy of AiInsight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiInsightCopyWith<AiInsight> get copyWith => _$AiInsightCopyWithImpl<AiInsight>(this as AiInsight, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiInsight&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.severity, severity) || other.severity == severity));
}


@override
int get hashCode => Object.hash(runtimeType,type,title,description,severity);

@override
String toString() {
  return 'AiInsight(type: $type, title: $title, description: $description, severity: $severity)';
}


}

/// @nodoc
abstract mixin class $AiInsightCopyWith<$Res>  {
  factory $AiInsightCopyWith(AiInsight value, $Res Function(AiInsight) _then) = _$AiInsightCopyWithImpl;
@useResult
$Res call({
 AiInsightType type, String title, String description, InsightSeverity severity
});




}
/// @nodoc
class _$AiInsightCopyWithImpl<$Res>
    implements $AiInsightCopyWith<$Res> {
  _$AiInsightCopyWithImpl(this._self, this._then);

  final AiInsight _self;
  final $Res Function(AiInsight) _then;

/// Create a copy of AiInsight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? description = null,Object? severity = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AiInsightType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as InsightSeverity,
  ));
}

}


/// Adds pattern-matching-related methods to [AiInsight].
extension AiInsightPatterns on AiInsight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiInsight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiInsight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiInsight value)  $default,){
final _that = this;
switch (_that) {
case _AiInsight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiInsight value)?  $default,){
final _that = this;
switch (_that) {
case _AiInsight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiInsightType type,  String title,  String description,  InsightSeverity severity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiInsight() when $default != null:
return $default(_that.type,_that.title,_that.description,_that.severity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiInsightType type,  String title,  String description,  InsightSeverity severity)  $default,) {final _that = this;
switch (_that) {
case _AiInsight():
return $default(_that.type,_that.title,_that.description,_that.severity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiInsightType type,  String title,  String description,  InsightSeverity severity)?  $default,) {final _that = this;
switch (_that) {
case _AiInsight() when $default != null:
return $default(_that.type,_that.title,_that.description,_that.severity);case _:
  return null;

}
}

}

/// @nodoc


class _AiInsight implements AiInsight {
  const _AiInsight({required this.type, required this.title, required this.description, required this.severity});
  

@override final  AiInsightType type;
@override final  String title;
@override final  String description;
@override final  InsightSeverity severity;

/// Create a copy of AiInsight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiInsightCopyWith<_AiInsight> get copyWith => __$AiInsightCopyWithImpl<_AiInsight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiInsight&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.severity, severity) || other.severity == severity));
}


@override
int get hashCode => Object.hash(runtimeType,type,title,description,severity);

@override
String toString() {
  return 'AiInsight(type: $type, title: $title, description: $description, severity: $severity)';
}


}

/// @nodoc
abstract mixin class _$AiInsightCopyWith<$Res> implements $AiInsightCopyWith<$Res> {
  factory _$AiInsightCopyWith(_AiInsight value, $Res Function(_AiInsight) _then) = __$AiInsightCopyWithImpl;
@override @useResult
$Res call({
 AiInsightType type, String title, String description, InsightSeverity severity
});




}
/// @nodoc
class __$AiInsightCopyWithImpl<$Res>
    implements _$AiInsightCopyWith<$Res> {
  __$AiInsightCopyWithImpl(this._self, this._then);

  final _AiInsight _self;
  final $Res Function(_AiInsight) _then;

/// Create a copy of AiInsight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? description = null,Object? severity = null,}) {
  return _then(_AiInsight(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AiInsightType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as InsightSeverity,
  ));
}


}

/// @nodoc
mixin _$AiPrediction {

 int get monthsUntilDepletion; double get debtProbability; double get savingsHealthScore; String get predictionSummary;
/// Create a copy of AiPrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiPredictionCopyWith<AiPrediction> get copyWith => _$AiPredictionCopyWithImpl<AiPrediction>(this as AiPrediction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiPrediction&&(identical(other.monthsUntilDepletion, monthsUntilDepletion) || other.monthsUntilDepletion == monthsUntilDepletion)&&(identical(other.debtProbability, debtProbability) || other.debtProbability == debtProbability)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore)&&(identical(other.predictionSummary, predictionSummary) || other.predictionSummary == predictionSummary));
}


@override
int get hashCode => Object.hash(runtimeType,monthsUntilDepletion,debtProbability,savingsHealthScore,predictionSummary);

@override
String toString() {
  return 'AiPrediction(monthsUntilDepletion: $monthsUntilDepletion, debtProbability: $debtProbability, savingsHealthScore: $savingsHealthScore, predictionSummary: $predictionSummary)';
}


}

/// @nodoc
abstract mixin class $AiPredictionCopyWith<$Res>  {
  factory $AiPredictionCopyWith(AiPrediction value, $Res Function(AiPrediction) _then) = _$AiPredictionCopyWithImpl;
@useResult
$Res call({
 int monthsUntilDepletion, double debtProbability, double savingsHealthScore, String predictionSummary
});




}
/// @nodoc
class _$AiPredictionCopyWithImpl<$Res>
    implements $AiPredictionCopyWith<$Res> {
  _$AiPredictionCopyWithImpl(this._self, this._then);

  final AiPrediction _self;
  final $Res Function(AiPrediction) _then;

/// Create a copy of AiPrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthsUntilDepletion = null,Object? debtProbability = null,Object? savingsHealthScore = null,Object? predictionSummary = null,}) {
  return _then(_self.copyWith(
monthsUntilDepletion: null == monthsUntilDepletion ? _self.monthsUntilDepletion : monthsUntilDepletion // ignore: cast_nullable_to_non_nullable
as int,debtProbability: null == debtProbability ? _self.debtProbability : debtProbability // ignore: cast_nullable_to_non_nullable
as double,savingsHealthScore: null == savingsHealthScore ? _self.savingsHealthScore : savingsHealthScore // ignore: cast_nullable_to_non_nullable
as double,predictionSummary: null == predictionSummary ? _self.predictionSummary : predictionSummary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AiPrediction].
extension AiPredictionPatterns on AiPrediction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiPrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiPrediction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiPrediction value)  $default,){
final _that = this;
switch (_that) {
case _AiPrediction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiPrediction value)?  $default,){
final _that = this;
switch (_that) {
case _AiPrediction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int monthsUntilDepletion,  double debtProbability,  double savingsHealthScore,  String predictionSummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiPrediction() when $default != null:
return $default(_that.monthsUntilDepletion,_that.debtProbability,_that.savingsHealthScore,_that.predictionSummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int monthsUntilDepletion,  double debtProbability,  double savingsHealthScore,  String predictionSummary)  $default,) {final _that = this;
switch (_that) {
case _AiPrediction():
return $default(_that.monthsUntilDepletion,_that.debtProbability,_that.savingsHealthScore,_that.predictionSummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int monthsUntilDepletion,  double debtProbability,  double savingsHealthScore,  String predictionSummary)?  $default,) {final _that = this;
switch (_that) {
case _AiPrediction() when $default != null:
return $default(_that.monthsUntilDepletion,_that.debtProbability,_that.savingsHealthScore,_that.predictionSummary);case _:
  return null;

}
}

}

/// @nodoc


class _AiPrediction implements AiPrediction {
  const _AiPrediction({required this.monthsUntilDepletion, required this.debtProbability, required this.savingsHealthScore, required this.predictionSummary});
  

@override final  int monthsUntilDepletion;
@override final  double debtProbability;
@override final  double savingsHealthScore;
@override final  String predictionSummary;

/// Create a copy of AiPrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiPredictionCopyWith<_AiPrediction> get copyWith => __$AiPredictionCopyWithImpl<_AiPrediction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiPrediction&&(identical(other.monthsUntilDepletion, monthsUntilDepletion) || other.monthsUntilDepletion == monthsUntilDepletion)&&(identical(other.debtProbability, debtProbability) || other.debtProbability == debtProbability)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore)&&(identical(other.predictionSummary, predictionSummary) || other.predictionSummary == predictionSummary));
}


@override
int get hashCode => Object.hash(runtimeType,monthsUntilDepletion,debtProbability,savingsHealthScore,predictionSummary);

@override
String toString() {
  return 'AiPrediction(monthsUntilDepletion: $monthsUntilDepletion, debtProbability: $debtProbability, savingsHealthScore: $savingsHealthScore, predictionSummary: $predictionSummary)';
}


}

/// @nodoc
abstract mixin class _$AiPredictionCopyWith<$Res> implements $AiPredictionCopyWith<$Res> {
  factory _$AiPredictionCopyWith(_AiPrediction value, $Res Function(_AiPrediction) _then) = __$AiPredictionCopyWithImpl;
@override @useResult
$Res call({
 int monthsUntilDepletion, double debtProbability, double savingsHealthScore, String predictionSummary
});




}
/// @nodoc
class __$AiPredictionCopyWithImpl<$Res>
    implements _$AiPredictionCopyWith<$Res> {
  __$AiPredictionCopyWithImpl(this._self, this._then);

  final _AiPrediction _self;
  final $Res Function(_AiPrediction) _then;

/// Create a copy of AiPrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthsUntilDepletion = null,Object? debtProbability = null,Object? savingsHealthScore = null,Object? predictionSummary = null,}) {
  return _then(_AiPrediction(
monthsUntilDepletion: null == monthsUntilDepletion ? _self.monthsUntilDepletion : monthsUntilDepletion // ignore: cast_nullable_to_non_nullable
as int,debtProbability: null == debtProbability ? _self.debtProbability : debtProbability // ignore: cast_nullable_to_non_nullable
as double,savingsHealthScore: null == savingsHealthScore ? _self.savingsHealthScore : savingsHealthScore // ignore: cast_nullable_to_non_nullable
as double,predictionSummary: null == predictionSummary ? _self.predictionSummary : predictionSummary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BehaviorScore {

 double get impulsiveScore; double get disciplineScore; double get riskScore; double get emotionalDependencyScore; double get savingsHealthScore; DateTime get calculatedAt;
/// Create a copy of BehaviorScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BehaviorScoreCopyWith<BehaviorScore> get copyWith => _$BehaviorScoreCopyWithImpl<BehaviorScore>(this as BehaviorScore, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BehaviorScore&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.emotionalDependencyScore, emotionalDependencyScore) || other.emotionalDependencyScore == emotionalDependencyScore)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,impulsiveScore,disciplineScore,riskScore,emotionalDependencyScore,savingsHealthScore,calculatedAt);

@override
String toString() {
  return 'BehaviorScore(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class $BehaviorScoreCopyWith<$Res>  {
  factory $BehaviorScoreCopyWith(BehaviorScore value, $Res Function(BehaviorScore) _then) = _$BehaviorScoreCopyWithImpl;
@useResult
$Res call({
 double impulsiveScore, double disciplineScore, double riskScore, double emotionalDependencyScore, double savingsHealthScore, DateTime calculatedAt
});




}
/// @nodoc
class _$BehaviorScoreCopyWithImpl<$Res>
    implements $BehaviorScoreCopyWith<$Res> {
  _$BehaviorScoreCopyWithImpl(this._self, this._then);

  final BehaviorScore _self;
  final $Res Function(BehaviorScore) _then;

/// Create a copy of BehaviorScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? impulsiveScore = null,Object? disciplineScore = null,Object? riskScore = null,Object? emotionalDependencyScore = null,Object? savingsHealthScore = null,Object? calculatedAt = null,}) {
  return _then(_self.copyWith(
impulsiveScore: null == impulsiveScore ? _self.impulsiveScore : impulsiveScore // ignore: cast_nullable_to_non_nullable
as double,disciplineScore: null == disciplineScore ? _self.disciplineScore : disciplineScore // ignore: cast_nullable_to_non_nullable
as double,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,emotionalDependencyScore: null == emotionalDependencyScore ? _self.emotionalDependencyScore : emotionalDependencyScore // ignore: cast_nullable_to_non_nullable
as double,savingsHealthScore: null == savingsHealthScore ? _self.savingsHealthScore : savingsHealthScore // ignore: cast_nullable_to_non_nullable
as double,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BehaviorScore].
extension BehaviorScorePatterns on BehaviorScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BehaviorScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BehaviorScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BehaviorScore value)  $default,){
final _that = this;
switch (_that) {
case _BehaviorScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BehaviorScore value)?  $default,){
final _that = this;
switch (_that) {
case _BehaviorScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double impulsiveScore,  double disciplineScore,  double riskScore,  double emotionalDependencyScore,  double savingsHealthScore,  DateTime calculatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BehaviorScore() when $default != null:
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double impulsiveScore,  double disciplineScore,  double riskScore,  double emotionalDependencyScore,  double savingsHealthScore,  DateTime calculatedAt)  $default,) {final _that = this;
switch (_that) {
case _BehaviorScore():
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore,_that.calculatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double impulsiveScore,  double disciplineScore,  double riskScore,  double emotionalDependencyScore,  double savingsHealthScore,  DateTime calculatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BehaviorScore() when $default != null:
return $default(_that.impulsiveScore,_that.disciplineScore,_that.riskScore,_that.emotionalDependencyScore,_that.savingsHealthScore,_that.calculatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _BehaviorScore implements BehaviorScore {
  const _BehaviorScore({required this.impulsiveScore, required this.disciplineScore, required this.riskScore, required this.emotionalDependencyScore, required this.savingsHealthScore, required this.calculatedAt});
  

@override final  double impulsiveScore;
@override final  double disciplineScore;
@override final  double riskScore;
@override final  double emotionalDependencyScore;
@override final  double savingsHealthScore;
@override final  DateTime calculatedAt;

/// Create a copy of BehaviorScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BehaviorScoreCopyWith<_BehaviorScore> get copyWith => __$BehaviorScoreCopyWithImpl<_BehaviorScore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BehaviorScore&&(identical(other.impulsiveScore, impulsiveScore) || other.impulsiveScore == impulsiveScore)&&(identical(other.disciplineScore, disciplineScore) || other.disciplineScore == disciplineScore)&&(identical(other.riskScore, riskScore) || other.riskScore == riskScore)&&(identical(other.emotionalDependencyScore, emotionalDependencyScore) || other.emotionalDependencyScore == emotionalDependencyScore)&&(identical(other.savingsHealthScore, savingsHealthScore) || other.savingsHealthScore == savingsHealthScore)&&(identical(other.calculatedAt, calculatedAt) || other.calculatedAt == calculatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,impulsiveScore,disciplineScore,riskScore,emotionalDependencyScore,savingsHealthScore,calculatedAt);

@override
String toString() {
  return 'BehaviorScore(impulsiveScore: $impulsiveScore, disciplineScore: $disciplineScore, riskScore: $riskScore, emotionalDependencyScore: $emotionalDependencyScore, savingsHealthScore: $savingsHealthScore, calculatedAt: $calculatedAt)';
}


}

/// @nodoc
abstract mixin class _$BehaviorScoreCopyWith<$Res> implements $BehaviorScoreCopyWith<$Res> {
  factory _$BehaviorScoreCopyWith(_BehaviorScore value, $Res Function(_BehaviorScore) _then) = __$BehaviorScoreCopyWithImpl;
@override @useResult
$Res call({
 double impulsiveScore, double disciplineScore, double riskScore, double emotionalDependencyScore, double savingsHealthScore, DateTime calculatedAt
});




}
/// @nodoc
class __$BehaviorScoreCopyWithImpl<$Res>
    implements _$BehaviorScoreCopyWith<$Res> {
  __$BehaviorScoreCopyWithImpl(this._self, this._then);

  final _BehaviorScore _self;
  final $Res Function(_BehaviorScore) _then;

/// Create a copy of BehaviorScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? impulsiveScore = null,Object? disciplineScore = null,Object? riskScore = null,Object? emotionalDependencyScore = null,Object? savingsHealthScore = null,Object? calculatedAt = null,}) {
  return _then(_BehaviorScore(
impulsiveScore: null == impulsiveScore ? _self.impulsiveScore : impulsiveScore // ignore: cast_nullable_to_non_nullable
as double,disciplineScore: null == disciplineScore ? _self.disciplineScore : disciplineScore // ignore: cast_nullable_to_non_nullable
as double,riskScore: null == riskScore ? _self.riskScore : riskScore // ignore: cast_nullable_to_non_nullable
as double,emotionalDependencyScore: null == emotionalDependencyScore ? _self.emotionalDependencyScore : emotionalDependencyScore // ignore: cast_nullable_to_non_nullable
as double,savingsHealthScore: null == savingsHealthScore ? _self.savingsHealthScore : savingsHealthScore // ignore: cast_nullable_to_non_nullable
as double,calculatedAt: null == calculatedAt ? _self.calculatedAt : calculatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
