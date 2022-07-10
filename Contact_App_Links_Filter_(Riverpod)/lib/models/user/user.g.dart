// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetUserCollection on Isar {
  IsarCollection<User> get users => getCollection();
}

const UserSchema = CollectionSchema(
  name: 'User',
  schema:
      '{"name":"User","idName":"id","properties":[{"name":"address","type":"String"},{"name":"age","type":"Long"},{"name":"fullName","type":"String"},{"name":"gender","type":"Long"},{"name":"relationship","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'address': 0,
    'age': 1,
    'fullName': 2,
    'gender': 3,
    'relationship': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _userGetId,
  setId: _userSetId,
  getLinks: _userGetLinks,
  attachLinks: _userAttachLinks,
  serializeNative: _userSerializeNative,
  deserializeNative: _userDeserializeNative,
  deserializePropNative: _userDeserializePropNative,
  serializeWeb: _userSerializeWeb,
  deserializeWeb: _userDeserializeWeb,
  deserializePropWeb: _userDeserializePropWeb,
  version: 3,
);

int? _userGetId(User object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _userSetId(User object, int id) {
  object.id = id;
}

List<IsarLinkBase> _userGetLinks(User object) {
  return [];
}

const _userGenderConverter = GenderConverter();
const _userRelationshipConverter = RelationshipConverter();

void _userSerializeNative(IsarCollection<User> collection, IsarRawObject rawObj,
    User object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.address;
  final _address = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_address.length) as int;
  final value1 = object.age;
  final _age = value1;
  final value2 = object.fullName;
  final _fullName = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_fullName.length) as int;
  final value3 = _userGenderConverter.toIsar(object.gender);
  final _gender = value3;
  final value4 = _userRelationshipConverter.toIsar(object.relationship);
  final _relationship = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _address);
  writer.writeLong(offsets[1], _age);
  writer.writeBytes(offsets[2], _fullName);
  writer.writeLong(offsets[3], _gender);
  writer.writeLong(offsets[4], _relationship);
}

User _userDeserializeNative(IsarCollection<User> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = User();
  object.address = reader.readString(offsets[0]);
  object.age = reader.readLong(offsets[1]);
  object.fullName = reader.readString(offsets[2]);
  object.gender = _userGenderConverter.fromIsar(reader.readLong(offsets[3]));
  object.id = id;
  object.relationship =
      _userRelationshipConverter.fromIsar(reader.readLong(offsets[4]));
  return object;
}

P _userDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (_userGenderConverter.fromIsar(reader.readLong(offset))) as P;
    case 4:
      return (_userRelationshipConverter.fromIsar(reader.readLong(offset)))
          as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _userSerializeWeb(IsarCollection<User> collection, User object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'address', object.address);
  IsarNative.jsObjectSet(jsObj, 'age', object.age);
  IsarNative.jsObjectSet(jsObj, 'fullName', object.fullName);
  IsarNative.jsObjectSet(
      jsObj, 'gender', _userGenderConverter.toIsar(object.gender));
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'relationship',
      _userRelationshipConverter.toIsar(object.relationship));
  return jsObj;
}

User _userDeserializeWeb(IsarCollection<User> collection, dynamic jsObj) {
  final object = User();
  object.address = IsarNative.jsObjectGet(jsObj, 'address') ?? '';
  object.age = IsarNative.jsObjectGet(jsObj, 'age') ?? double.negativeInfinity;
  object.fullName = IsarNative.jsObjectGet(jsObj, 'fullName') ?? '';
  object.gender = _userGenderConverter.fromIsar(
      IsarNative.jsObjectGet(jsObj, 'gender') ?? double.negativeInfinity);
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.relationship = _userRelationshipConverter.fromIsar(
      IsarNative.jsObjectGet(jsObj, 'relationship') ?? double.negativeInfinity);
  return object;
}

P _userDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'address':
      return (IsarNative.jsObjectGet(jsObj, 'address') ?? '') as P;
    case 'age':
      return (IsarNative.jsObjectGet(jsObj, 'age') ?? double.negativeInfinity)
          as P;
    case 'fullName':
      return (IsarNative.jsObjectGet(jsObj, 'fullName') ?? '') as P;
    case 'gender':
      return (_userGenderConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'gender') ??
              double.negativeInfinity)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'relationship':
      return (_userRelationshipConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'relationship') ??
              double.negativeInfinity)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _userAttachLinks(IsarCollection col, int id, User object) {}

extension UserQueryWhereSort on QueryBuilder<User, User, QWhere> {
  QueryBuilder<User, User, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension UserQueryWhere on QueryBuilder<User, User, QWhereClause> {
  QueryBuilder<User, User, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<User, User, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<User, User, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<User, User, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'address',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> addressMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'address',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> ageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'age',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'fullName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'fullName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'fullName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fullName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'fullName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'fullName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'fullName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> fullNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'fullName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> genderEqualTo(Gender value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'gender',
      value: _userGenderConverter.toIsar(value),
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> genderGreaterThan(
    Gender value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'gender',
      value: _userGenderConverter.toIsar(value),
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> genderLessThan(
    Gender value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'gender',
      value: _userGenderConverter.toIsar(value),
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> genderBetween(
    Gender lower,
    Gender upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'gender',
      lower: _userGenderConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _userGenderConverter.toIsar(upper),
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> relationshipEqualTo(
      Relationship value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'relationship',
      value: _userRelationshipConverter.toIsar(value),
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> relationshipGreaterThan(
    Relationship value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'relationship',
      value: _userRelationshipConverter.toIsar(value),
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> relationshipLessThan(
    Relationship value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'relationship',
      value: _userRelationshipConverter.toIsar(value),
    ));
  }

  QueryBuilder<User, User, QAfterFilterCondition> relationshipBetween(
    Relationship lower,
    Relationship upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'relationship',
      lower: _userRelationshipConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _userRelationshipConverter.toIsar(upper),
      includeUpper: includeUpper,
    ));
  }
}

extension UserQueryLinks on QueryBuilder<User, User, QFilterCondition> {}

extension UserQueryWhereSortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByFullName() {
    return addSortByInternal('fullName', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByFullNameDesc() {
    return addSortByInternal('fullName', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByGender() {
    return addSortByInternal('gender', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByGenderDesc() {
    return addSortByInternal('gender', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByRelationship() {
    return addSortByInternal('relationship', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> sortByRelationshipDesc() {
    return addSortByInternal('relationship', Sort.desc);
  }
}

extension UserQueryWhereSortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByFullName() {
    return addSortByInternal('fullName', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByFullNameDesc() {
    return addSortByInternal('fullName', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByGender() {
    return addSortByInternal('gender', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByGenderDesc() {
    return addSortByInternal('gender', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByRelationship() {
    return addSortByInternal('relationship', Sort.asc);
  }

  QueryBuilder<User, User, QAfterSortBy> thenByRelationshipDesc() {
    return addSortByInternal('relationship', Sort.desc);
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('address', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByAge() {
    return addDistinctByInternal('age');
  }

  QueryBuilder<User, User, QDistinct> distinctByFullName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('fullName', caseSensitive: caseSensitive);
  }

  QueryBuilder<User, User, QDistinct> distinctByGender() {
    return addDistinctByInternal('gender');
  }

  QueryBuilder<User, User, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<User, User, QDistinct> distinctByRelationship() {
    return addDistinctByInternal('relationship');
  }
}

extension UserQueryProperty on QueryBuilder<User, User, QQueryProperty> {
  QueryBuilder<User, String, QQueryOperations> addressProperty() {
    return addPropertyNameInternal('address');
  }

  QueryBuilder<User, int, QQueryOperations> ageProperty() {
    return addPropertyNameInternal('age');
  }

  QueryBuilder<User, String, QQueryOperations> fullNameProperty() {
    return addPropertyNameInternal('fullName');
  }

  QueryBuilder<User, Gender, QQueryOperations> genderProperty() {
    return addPropertyNameInternal('gender');
  }

  QueryBuilder<User, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<User, Relationship, QQueryOperations> relationshipProperty() {
    return addPropertyNameInternal('relationship');
  }
}
