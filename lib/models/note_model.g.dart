// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      text: json['text'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      createdTime: json['createdTime'] as String?,
      isDoneTask: json['isDoneTask'] as bool?,
      label: json['label'] as String?,
      color:
          json['color'] == null ? null : BigInt.parse(json['color'] as String),
      isPinned: json['isPinned'] as bool,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'title': instance.title,
      'description': instance.description,
      'createdTime': instance.createdTime,
      'isDoneTask': instance.isDoneTask,
      'label': instance.label,
      'color': instance.color?.toString(),
      'isPinned': instance.isPinned,
    };
