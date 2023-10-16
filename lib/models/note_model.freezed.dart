// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime? get createdTime =>
      throw _privateConstructorUsedError; // required bool? isDoneTask,
// required List<String>? tags,
  BigInt? get color => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call(
      {String title,
      String text,
      DateTime? createdTime,
      BigInt? color,
      bool isPinned});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? createdTime = freezed,
    Object? color = freezed,
    Object? isPinned = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String text,
      DateTime? createdTime,
      BigInt? color,
      bool isPinned});
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? createdTime = freezed,
    Object? color = freezed,
    Object? isPinned = null,
  }) {
    return _then(_$NoteModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdTime: freezed == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteModelImpl implements _NoteModel {
  const _$NoteModelImpl(
      {required this.title,
      required this.text,
      required this.createdTime,
      required this.color,
      required this.isPinned});

  factory _$NoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteModelImplFromJson(json);

  @override
  final String title;
  @override
  final String text;
  @override
  final DateTime? createdTime;
// required bool? isDoneTask,
// required List<String>? tags,
  @override
  final BigInt? color;
  @override
  final bool isPinned;

  @override
  String toString() {
    return 'NoteModel(title: $title, text: $text, createdTime: $createdTime, color: $color, isPinned: $isPinned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, text, createdTime, color, isPinned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteModelImplToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
      {required final String title,
      required final String text,
      required final DateTime? createdTime,
      required final BigInt? color,
      required final bool isPinned}) = _$NoteModelImpl;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$NoteModelImpl.fromJson;

  @override
  String get title;
  @override
  String get text;
  @override
  DateTime? get createdTime;
  @override // required bool? isDoneTask,
// required List<String>? tags,
  BigInt? get color;
  @override
  bool get isPinned;
  @override
  @JsonKey(ignore: true)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
