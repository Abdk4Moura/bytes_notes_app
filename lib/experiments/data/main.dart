import 'package:bytes_notes_app/experiments/data/database.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = AnotherDatabase();

  await database.into(database.todoItems).insert(TodoItemsCompanion.insert(
      title: 'todo: finish drift setup',
      content: 'We can now write queries and define our tables.'));
  List<TodoItem> allItems = await database.select(database.todoItems).get();
  await database.into(database.todoItems).insert(TodoItemsCompanion.insert(
      title: 'End of time',
      content: 'The world is coming to an end: Prepare your deeds as even\n'
          'if you do not sacrifice your lives, your lives will still been forcibly'
          'snatched from you'));

  print('items in database: $allItems');
}
