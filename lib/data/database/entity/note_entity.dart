import 'package:drift/drift.dart';

class NoteEntity extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().named('title')();

  TextColumn get content => text().named('content')();

  DateTimeColumn get timeCreated => dateTime()
      .clientDefault(() => DateTime.timestamp())
      .named('timeCreated')();

  BoolColumn get isPinned => boolean().withDefault(const Constant(true)).named("isPinned")();

  Int64Column get color => int64().named('color')();
}
