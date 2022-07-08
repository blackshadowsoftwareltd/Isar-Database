// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetContactsCollection on Isar {
  IsarCollection<Contacts> get contactss => getCollection();
}

const ContactsSchema = CollectionSchema(
  name: 'Contacts',
  schema:
      '{"name":"Contacts","idName":"id","properties":[{"name":"address","type":"String"},{"name":"age","type":"Long"},{"name":"isMale","type":"Bool"},{"name":"name","type":"String"},{"name":"phone","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'address': 0, 'age': 1, 'isMale': 2, 'name': 3, 'phone': 4},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _contactsGetId,
  setId: _contactsSetId,
  getLinks: _contactsGetLinks,
  attachLinks: _contactsAttachLinks,
  serializeNative: _contactsSerializeNative,
  deserializeNative: _contactsDeserializeNative,
  deserializePropNative: _contactsDeserializePropNative,
  serializeWeb: _contactsSerializeWeb,
  deserializeWeb: _contactsDeserializeWeb,
  deserializePropWeb: _contactsDeserializePropWeb,
  version: 3,
);

int? _contactsGetId(Contacts object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _contactsSetId(Contacts object, int id) {
  object.id = id;
}

List<IsarLinkBase> _contactsGetLinks(Contacts object) {
  return [];
}

void _contactsSerializeNative(
    IsarCollection<Contacts> collection,
    IsarRawObject rawObj,
    Contacts object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.address;
  final _address = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_address.length) as int;
  final value1 = object.age;
  final _age = value1;
  final value2 = object.isMale;
  final _isMale = value2;
  final value3 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_name.length) as int;
  final value4 = object.phone;
  final _phone = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _address);
  writer.writeLong(offsets[1], _age);
  writer.writeBool(offsets[2], _isMale);
  writer.writeBytes(offsets[3], _name);
  writer.writeLong(offsets[4], _phone);
}

Contacts _contactsDeserializeNative(IsarCollection<Contacts> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Contacts();
  object.address = reader.readString(offsets[0]);
  object.age = reader.readLong(offsets[1]);
  object.id = id;
  object.isMale = reader.readBool(offsets[2]);
  object.name = reader.readString(offsets[3]);
  object.phone = reader.readLong(offsets[4]);
  return object;
}

P _contactsDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _contactsSerializeWeb(
    IsarCollection<Contacts> collection, Contacts object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'address', object.address);
  IsarNative.jsObjectSet(jsObj, 'age', object.age);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isMale', object.isMale);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'phone', object.phone);
  return jsObj;
}

Contacts _contactsDeserializeWeb(
    IsarCollection<Contacts> collection, dynamic jsObj) {
  final object = Contacts();
  object.address = IsarNative.jsObjectGet(jsObj, 'address') ?? '';
  object.age = IsarNative.jsObjectGet(jsObj, 'age') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.isMale = IsarNative.jsObjectGet(jsObj, 'isMale') ?? false;
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.phone =
      IsarNative.jsObjectGet(jsObj, 'phone') ?? double.negativeInfinity;
  return object;
}

P _contactsDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'address':
      return (IsarNative.jsObjectGet(jsObj, 'address') ?? '') as P;
    case 'age':
      return (IsarNative.jsObjectGet(jsObj, 'age') ?? double.negativeInfinity)
          as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isMale':
      return (IsarNative.jsObjectGet(jsObj, 'isMale') ?? false) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'phone':
      return (IsarNative.jsObjectGet(jsObj, 'phone') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _contactsAttachLinks(IsarCollection col, int id, Contacts object) {}

extension ContactsQueryWhereSort on QueryBuilder<Contacts, Contacts, QWhere> {
  QueryBuilder<Contacts, Contacts, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ContactsQueryWhere on QueryBuilder<Contacts, Contacts, QWhereClause> {
  QueryBuilder<Contacts, Contacts, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Contacts, Contacts, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Contacts, Contacts, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Contacts, Contacts, QAfterWhereClause> idBetween(
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

extension ContactsQueryFilter
    on QueryBuilder<Contacts, Contacts, QFilterCondition> {
  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressEqualTo(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressGreaterThan(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressLessThan(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressBetween(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressStartsWith(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressEndsWith(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'address',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> ageEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'age',
      value: value,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> ageGreaterThan(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> ageLessThan(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> ageBetween(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> isMaleEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isMale',
      value: value,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> phoneEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> phoneGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> phoneLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Contacts, Contacts, QAfterFilterCondition> phoneBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ContactsQueryLinks
    on QueryBuilder<Contacts, Contacts, QFilterCondition> {}

extension ContactsQueryWhereSortBy
    on QueryBuilder<Contacts, Contacts, QSortBy> {
  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByIsMale() {
    return addSortByInternal('isMale', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByIsMaleDesc() {
    return addSortByInternal('isMale', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> sortByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }
}

extension ContactsQueryWhereSortThenBy
    on QueryBuilder<Contacts, Contacts, QSortThenBy> {
  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByAge() {
    return addSortByInternal('age', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByAgeDesc() {
    return addSortByInternal('age', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByIsMale() {
    return addSortByInternal('isMale', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByIsMaleDesc() {
    return addSortByInternal('isMale', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Contacts, Contacts, QAfterSortBy> thenByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }
}

extension ContactsQueryWhereDistinct
    on QueryBuilder<Contacts, Contacts, QDistinct> {
  QueryBuilder<Contacts, Contacts, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('address', caseSensitive: caseSensitive);
  }

  QueryBuilder<Contacts, Contacts, QDistinct> distinctByAge() {
    return addDistinctByInternal('age');
  }

  QueryBuilder<Contacts, Contacts, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Contacts, Contacts, QDistinct> distinctByIsMale() {
    return addDistinctByInternal('isMale');
  }

  QueryBuilder<Contacts, Contacts, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Contacts, Contacts, QDistinct> distinctByPhone() {
    return addDistinctByInternal('phone');
  }
}

extension ContactsQueryProperty
    on QueryBuilder<Contacts, Contacts, QQueryProperty> {
  QueryBuilder<Contacts, String, QQueryOperations> addressProperty() {
    return addPropertyNameInternal('address');
  }

  QueryBuilder<Contacts, int, QQueryOperations> ageProperty() {
    return addPropertyNameInternal('age');
  }

  QueryBuilder<Contacts, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Contacts, bool, QQueryOperations> isMaleProperty() {
    return addPropertyNameInternal('isMale');
  }

  QueryBuilder<Contacts, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Contacts, int, QQueryOperations> phoneProperty() {
    return addPropertyNameInternal('phone');
  }
}
