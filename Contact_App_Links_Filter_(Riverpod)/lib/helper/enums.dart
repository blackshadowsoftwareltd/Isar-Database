// ignore_for_file: avoid_renaming_method_parameters

import 'package:isar/isar.dart' show TypeConverter;

enum Relationship { single, married, itIsComplicated }

enum Gender { male, female, others }

class RelationshipConverter extends TypeConverter<Relationship, int> {
  const RelationshipConverter(); // Converters need to have an empty const constructor

  @override
  Relationship fromIsar(int relationshipIndex) {
    return Relationship.values[relationshipIndex];
  }

  @override
  int toIsar(Relationship relationship) {
    return relationship.index;
  }
}

class GenderConverter extends TypeConverter<Gender, int> {
  const GenderConverter();

  @override
  Gender fromIsar(int genderIndex) {
    return Gender.values[genderIndex];
  }

  @override
  int toIsar(Gender gender) {
    return gender.index;
  }
}
