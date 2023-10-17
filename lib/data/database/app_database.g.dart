// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NoteEntityTable extends NoteEntity
    with TableInfo<$NoteEntityTable, NoteEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NoteEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeCreatedMeta =
      const VerificationMeta('timeCreated');
  @override
  late final GeneratedColumn<DateTime> timeCreated = GeneratedColumn<DateTime>(
      'timeCreated', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.timestamp());
  static const VerificationMeta _isPinnedMeta =
      const VerificationMeta('isPinned');
  @override
  late final GeneratedColumn<bool> isPinned = GeneratedColumn<bool>(
      'isPinned', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isPinned" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<BigInt> color = GeneratedColumn<BigInt>(
      'color', aliasedName, false,
      type: DriftSqlType.bigInt, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, timeCreated, isPinned, color];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'note_entity';
  @override
  VerificationContext validateIntegrity(Insertable<NoteEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('timeCreated')) {
      context.handle(
          _timeCreatedMeta,
          timeCreated.isAcceptableOrUnknown(
              data['timeCreated']!, _timeCreatedMeta));
    }
    if (data.containsKey('isPinned')) {
      context.handle(_isPinnedMeta,
          isPinned.isAcceptableOrUnknown(data['isPinned']!, _isPinnedMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      timeCreated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timeCreated'])!,
      isPinned: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isPinned'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}color'])!,
    );
  }

  @override
  $NoteEntityTable createAlias(String alias) {
    return $NoteEntityTable(attachedDatabase, alias);
  }
}

class NoteEntityData extends DataClass implements Insertable<NoteEntityData> {
  final int id;
  final String title;
  final String content;
  final DateTime timeCreated;
  final bool isPinned;
  final BigInt color;
  const NoteEntityData(
      {required this.id,
      required this.title,
      required this.content,
      required this.timeCreated,
      required this.isPinned,
      required this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['timeCreated'] = Variable<DateTime>(timeCreated);
    map['isPinned'] = Variable<bool>(isPinned);
    map['color'] = Variable<BigInt>(color);
    return map;
  }

  NoteEntityCompanion toCompanion(bool nullToAbsent) {
    return NoteEntityCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      timeCreated: Value(timeCreated),
      isPinned: Value(isPinned),
      color: Value(color),
    );
  }

  factory NoteEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteEntityData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      timeCreated: serializer.fromJson<DateTime>(json['timeCreated']),
      isPinned: serializer.fromJson<bool>(json['isPinned']),
      color: serializer.fromJson<BigInt>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'timeCreated': serializer.toJson<DateTime>(timeCreated),
      'isPinned': serializer.toJson<bool>(isPinned),
      'color': serializer.toJson<BigInt>(color),
    };
  }

  NoteEntityData copyWith(
          {int? id,
          String? title,
          String? content,
          DateTime? timeCreated,
          bool? isPinned,
          BigInt? color}) =>
      NoteEntityData(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        timeCreated: timeCreated ?? this.timeCreated,
        isPinned: isPinned ?? this.isPinned,
        color: color ?? this.color,
      );
  @override
  String toString() {
    return (StringBuffer('NoteEntityData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('timeCreated: $timeCreated, ')
          ..write('isPinned: $isPinned, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, timeCreated, isPinned, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteEntityData &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.timeCreated == this.timeCreated &&
          other.isPinned == this.isPinned &&
          other.color == this.color);
}

class NoteEntityCompanion extends UpdateCompanion<NoteEntityData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<DateTime> timeCreated;
  final Value<bool> isPinned;
  final Value<BigInt> color;
  const NoteEntityCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.timeCreated = const Value.absent(),
    this.isPinned = const Value.absent(),
    this.color = const Value.absent(),
  });
  NoteEntityCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    this.timeCreated = const Value.absent(),
    this.isPinned = const Value.absent(),
    required BigInt color,
  })  : title = Value(title),
        content = Value(content),
        color = Value(color);
  static Insertable<NoteEntityData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime>? timeCreated,
    Expression<bool>? isPinned,
    Expression<BigInt>? color,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (timeCreated != null) 'timeCreated': timeCreated,
      if (isPinned != null) 'isPinned': isPinned,
      if (color != null) 'color': color,
    });
  }

  NoteEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<DateTime>? timeCreated,
      Value<bool>? isPinned,
      Value<BigInt>? color}) {
    return NoteEntityCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      timeCreated: timeCreated ?? this.timeCreated,
      isPinned: isPinned ?? this.isPinned,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (timeCreated.present) {
      map['timeCreated'] = Variable<DateTime>(timeCreated.value);
    }
    if (isPinned.present) {
      map['isPinned'] = Variable<bool>(isPinned.value);
    }
    if (color.present) {
      map['color'] = Variable<BigInt>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteEntityCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('timeCreated: $timeCreated, ')
          ..write('isPinned: $isPinned, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $NoteEntityTable noteEntity = $NoteEntityTable(this);
  late final NotesDao notesDao = NotesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [noteEntity];
}
