// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DaysModel {
  int? get id => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  List<TimeSlotModel>? get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DaysModelCopyWith<DaysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysModelCopyWith<$Res> {
  factory $DaysModelCopyWith(DaysModel value, $Res Function(DaysModel) then) =
      _$DaysModelCopyWithImpl<$Res, DaysModel>;
  @useResult
  $Res call({int? id, String? day, List<TimeSlotModel>? products});
}

/// @nodoc
class _$DaysModelCopyWithImpl<$Res, $Val extends DaysModel>
    implements $DaysModelCopyWith<$Res> {
  _$DaysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TimeSlotModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DaysModelCopyWith<$Res> implements $DaysModelCopyWith<$Res> {
  factory _$$_DaysModelCopyWith(
          _$_DaysModel value, $Res Function(_$_DaysModel) then) =
      __$$_DaysModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? day, List<TimeSlotModel>? products});
}

/// @nodoc
class __$$_DaysModelCopyWithImpl<$Res>
    extends _$DaysModelCopyWithImpl<$Res, _$_DaysModel>
    implements _$$_DaysModelCopyWith<$Res> {
  __$$_DaysModelCopyWithImpl(
      _$_DaysModel _value, $Res Function(_$_DaysModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_DaysModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TimeSlotModel>?,
    ));
  }
}

/// @nodoc

class _$_DaysModel implements _DaysModel {
  const _$_DaysModel({this.id, this.day, final List<TimeSlotModel>? products})
      : _products = products;

  @override
  final int? id;
  @override
  final String? day;
  final List<TimeSlotModel>? _products;
  @override
  List<TimeSlotModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DaysModel(id: $id, day: $day, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaysModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, day, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaysModelCopyWith<_$_DaysModel> get copyWith =>
      __$$_DaysModelCopyWithImpl<_$_DaysModel>(this, _$identity);
}

abstract class _DaysModel implements DaysModel {
  const factory _DaysModel(
      {final int? id,
      final String? day,
      final List<TimeSlotModel>? products}) = _$_DaysModel;

  @override
  int? get id;
  @override
  String? get day;
  @override
  List<TimeSlotModel>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_DaysModelCopyWith<_$_DaysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeSlotModel {
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeSlotModelCopyWith<TimeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotModelCopyWith<$Res> {
  factory $TimeSlotModelCopyWith(
          TimeSlotModel value, $Res Function(TimeSlotModel) then) =
      _$TimeSlotModelCopyWithImpl<$Res, TimeSlotModel>;
  @useResult
  $Res call({String? from, String? to});
}

/// @nodoc
class _$TimeSlotModelCopyWithImpl<$Res, $Val extends TimeSlotModel>
    implements $TimeSlotModelCopyWith<$Res> {
  _$TimeSlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeSlotModelCopyWith<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  factory _$$_TimeSlotModelCopyWith(
          _$_TimeSlotModel value, $Res Function(_$_TimeSlotModel) then) =
      __$$_TimeSlotModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? from, String? to});
}

/// @nodoc
class __$$_TimeSlotModelCopyWithImpl<$Res>
    extends _$TimeSlotModelCopyWithImpl<$Res, _$_TimeSlotModel>
    implements _$$_TimeSlotModelCopyWith<$Res> {
  __$$_TimeSlotModelCopyWithImpl(
      _$_TimeSlotModel _value, $Res Function(_$_TimeSlotModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$_TimeSlotModel(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TimeSlotModel implements _TimeSlotModel {
  const _$_TimeSlotModel({this.from, this.to});

  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return 'TimeSlotModel(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSlotModel &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeSlotModelCopyWith<_$_TimeSlotModel> get copyWith =>
      __$$_TimeSlotModelCopyWithImpl<_$_TimeSlotModel>(this, _$identity);
}

abstract class _TimeSlotModel implements TimeSlotModel {
  const factory _TimeSlotModel({final String? from, final String? to}) =
      _$_TimeSlotModel;

  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSlotModelCopyWith<_$_TimeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
