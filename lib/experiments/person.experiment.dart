import 'package:json_annotation/json_annotation.dart';

part 'person.experiment.g.dart';

@JsonSerializable()
class Person {
  /// the generated code assumes these exist in JSON.
  final String firstname, lastName;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  Person(
      {required this.firstname,
      required this.lastName,
      required this.dateOfBirth});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Person.fromJSON(Map<String, dynamic> json) => _$PersonFromJson(json);

  factory Person.fromMap(Map<String, dynamic> map) = Person.fromJSON;

  /// Connect the generated [_$PersonToJson] function to `toJson` method.
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  Map<String, dynamic> toMap() => toJson();
}
