// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      timeCreated: json['timeCreated'] == null
          ? null
          : DateTime.parse(json['timeCreated'] as String),
      color:
          json['color'] == null ? null : BigInt.parse(json['color'] as String),
      isPinned: json['isPinned'] as bool?,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'timeCreated': instance.timeCreated?.toIso8601String(),
      'color': instance.color?.toString(),
      'isPinned': instance.isPinned,
    };
