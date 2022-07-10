// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetContactCollection on Isar {
  IsarCollection<Contact> get contacts => getCollection();
}

const ContactSchema = CollectionSchema(
  name: 'Contact',
  schema:
      '{"name":"Contact","idName":"id","properties":[{"name":"createdAt","type":"Long"},{"name":"isStared","type":"Bool"},{"name":"phone","type":"Long"},{"name":"updatedAt","type":"Long"}],"indexes":[],"links":[{"name":"users","target":"User"}]}',
  idName: 'id',
  propertyIds: {'createdAt': 0, 'isStared': 1, 'phone': 2, 'updatedAt': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'users': 0},
  backlinkLinkNames: {},
  getId: _contactGetId,
  setId: _contactSetId,
  getLinks: _contactGetLinks,
  attachLinks: _contactAttachLinks,
  serializeNative: _contactSerializeNative,
  deserializeNative: _contactDeserializeNative,
  deserializePropNative: _contactDeserializePropNative,
  serializeWeb: _contactSerializeWeb,
  deserializeWeb: _contactDeserializeWeb,
  deserializePropWeb: _contactDeserializePropWeb,
  version: 3,
);

int? _contactGetId(Contact object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _contactSetId(Contact object, int id) {
  object.id = id;
}

List<IsarLinkBase> _contactGetLinks(Contact object) {
  return [object.users];
}

void _contactSerializeNative(
    IsarCollection<Contact> collection,
    IsarRawObject rawObj,
    Contact object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.createdAt;
  final _createdAt = value0;
  final value1 = object.isStared;
  final _isStared = value1;
  final value2 = object.phone;
  final _phone = value2;
  final value3 = object.updatedAt;
  final _updatedAt = value3;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _createdAt);
  writer.writeBool(offsets[1], _isStared);
  writer.writeLong(offsets[2], _phone);
  writer.writeDateTime(offsets[3], _updatedAt);
}

Contact _contactDeserializeNative(IsarCollection<Contact> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Contact();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.id = id;
  object.isStared = reader.readBool(offsets[1]);
  object.phone = reader.readLong(offsets[2]);
  object.updatedAt = reader.readDateTime(offsets[3]);
  _contactAttachLinks(collection, id, object);
  return object;
}

P _contactDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _contactSerializeWeb(
    IsarCollection<Contact> collection, Contact object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'createdAt', object.createdAt.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isStared', object.isStared);
  IsarNative.jsObjectSet(jsObj, 'phone', object.phone);
  IsarNative.jsObjectSet(
      jsObj, 'updatedAt', object.updatedAt.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

Contact _contactDeserializeWeb(
    IsarCollection<Contact> collection, dynamic jsObj) {
  final object = Contact();
  object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'createdAt'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.isStared = IsarNative.jsObjectGet(jsObj, 'isStared') ?? false;
  object.phone =
      IsarNative.jsObjectGet(jsObj, 'phone') ?? double.negativeInfinity;
  object.updatedAt = IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'updatedAt'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  _contactAttachLinks(collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _contactDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createdAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isStared':
      return (IsarNative.jsObjectGet(jsObj, 'isStared') ?? false) as P;
    case 'phone':
      return (IsarNative.jsObjectGet(jsObj, 'phone') ?? double.negativeInfinity)
          as P;
    case 'updatedAt':
      return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _contactAttachLinks(IsarCollection col, int id, Contact object) {
  object.users.attach(col, col.isar.users, 'users', id);
}

extension ContactQueryWhereSort on QueryBuilder<Contact, Contact, QWhere> {
  QueryBuilder<Contact, Contact, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ContactQueryWhere on QueryBuilder<Contact, Contact, QWhereClause> {
  QueryBuilder<Contact, Contact, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Contact, Contact, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idBetween(
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

extension ContactQueryFilter
    on QueryBuilder<Contact, Contact, QFilterCondition> {
  QueryBuilder<Contact, Contact, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> isStaredEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isStared',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phoneEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phoneGreaterThan(
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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phoneLessThan(
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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> phoneBetween(
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

  QueryBuilder<Contact, Contact, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ContactQueryLinks
    on QueryBuilder<Contact, Contact, QFilterCondition> {
  QueryBuilder<Contact, Contact, QAfterFilterCondition> users(
      FilterQuery<User> q) {
    return linkInternal(
      isar.users,
      q,
      'users',
    );
  }
}

extension ContactQueryWhereSortBy on QueryBuilder<Contact, Contact, QSortBy> {
  QueryBuilder<Contact, Contact, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByIsStared() {
    return addSortByInternal('isStared', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByIsStaredDesc() {
    return addSortByInternal('isStared', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension ContactQueryWhereSortThenBy
    on QueryBuilder<Contact, Contact, QSortThenBy> {
  QueryBuilder<Contact, Contact, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByIsStared() {
    return addSortByInternal('isStared', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByIsStaredDesc() {
    return addSortByInternal('isStared', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension ContactQueryWhereDistinct
    on QueryBuilder<Contact, Contact, QDistinct> {
  QueryBuilder<Contact, Contact, QDistinct> distinctByCreatedAt() {
    return addDistinctByInternal('createdAt');
  }

  QueryBuilder<Contact, Contact, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Contact, Contact, QDistinct> distinctByIsStared() {
    return addDistinctByInternal('isStared');
  }

  QueryBuilder<Contact, Contact, QDistinct> distinctByPhone() {
    return addDistinctByInternal('phone');
  }

  QueryBuilder<Contact, Contact, QDistinct> distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }
}

extension ContactQueryProperty
    on QueryBuilder<Contact, Contact, QQueryProperty> {
  QueryBuilder<Contact, DateTime, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<Contact, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Contact, bool, QQueryOperations> isStaredProperty() {
    return addPropertyNameInternal('isStared');
  }

  QueryBuilder<Contact, int, QQueryOperations> phoneProperty() {
    return addPropertyNameInternal('phone');
  }

  QueryBuilder<Contact, DateTime, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }
}
