import 'package:freezed_annotation/freezed_annotation.dart';
part 'person.freezed.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? name,
    int? age,
    String? gender,
  }) = _Person;
}
