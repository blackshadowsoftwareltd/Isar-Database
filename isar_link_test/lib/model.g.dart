// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTeacherCollection on Isar {
  IsarCollection<Teacher> get teachers => getCollection();
}

const TeacherSchema = CollectionSchema(
  name: 'Teacher',
  schema:
      '{"name":"Teacher","idName":"id","properties":[{"name":"subject","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'subject': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _teacherGetId,
  setId: _teacherSetId,
  getLinks: _teacherGetLinks,
  attachLinks: _teacherAttachLinks,
  serializeNative: _teacherSerializeNative,
  deserializeNative: _teacherDeserializeNative,
  deserializePropNative: _teacherDeserializePropNative,
  serializeWeb: _teacherSerializeWeb,
  deserializeWeb: _teacherDeserializeWeb,
  deserializePropWeb: _teacherDeserializePropWeb,
  version: 3,
);

int? _teacherGetId(Teacher object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _teacherSetId(Teacher object, int id) {
  object.id = id;
}

List<IsarLinkBase> _teacherGetLinks(Teacher object) {
  return [];
}

void _teacherSerializeNative(
    IsarCollection<Teacher> collection,
    IsarRawObject rawObj,
    Teacher object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.subject;
  final _subject = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_subject.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _subject);
}

Teacher _teacherDeserializeNative(IsarCollection<Teacher> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Teacher();
  object.id = id;
  object.subject = reader.readString(offsets[0]);
  return object;
}

P _teacherDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _teacherSerializeWeb(
    IsarCollection<Teacher> collection, Teacher object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'subject', object.subject);
  return jsObj;
}

Teacher _teacherDeserializeWeb(
    IsarCollection<Teacher> collection, dynamic jsObj) {
  final object = Teacher();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.subject = IsarNative.jsObjectGet(jsObj, 'subject') ?? '';
  return object;
}

P _teacherDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'subject':
      return (IsarNative.jsObjectGet(jsObj, 'subject') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _teacherAttachLinks(IsarCollection col, int id, Teacher object) {}

extension TeacherQueryWhereSort on QueryBuilder<Teacher, Teacher, QWhere> {
  QueryBuilder<Teacher, Teacher, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TeacherQueryWhere on QueryBuilder<Teacher, Teacher, QWhereClause> {
  QueryBuilder<Teacher, Teacher, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Teacher, Teacher, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Teacher, Teacher, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Teacher, Teacher, QAfterWhereClause> idBetween(
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

extension TeacherQueryFilter
    on QueryBuilder<Teacher, Teacher, QFilterCondition> {
  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'subject',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'subject',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'subject',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'subject',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'subject',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'subject',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'subject',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Teacher, Teacher, QAfterFilterCondition> subjectMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'subject',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension TeacherQueryLinks
    on QueryBuilder<Teacher, Teacher, QFilterCondition> {}

extension TeacherQueryWhereSortBy on QueryBuilder<Teacher, Teacher, QSortBy> {
  QueryBuilder<Teacher, Teacher, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Teacher, Teacher, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Teacher, Teacher, QAfterSortBy> sortBySubject() {
    return addSortByInternal('subject', Sort.asc);
  }

  QueryBuilder<Teacher, Teacher, QAfterSortBy> sortBySubjectDesc() {
    return addSortByInternal('subject', Sort.desc);
  }
}

extension TeacherQueryWhereSortThenBy
    on QueryBuilder<Teacher, Teacher, QSortThenBy> {
  QueryBuilder<Teacher, Teacher, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Teacher, Teacher, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Teacher, Teacher, QAfterSortBy> thenBySubject() {
    return addSortByInternal('subject', Sort.asc);
  }

  QueryBuilder<Teacher, Teacher, QAfterSortBy> thenBySubjectDesc() {
    return addSortByInternal('subject', Sort.desc);
  }
}

extension TeacherQueryWhereDistinct
    on QueryBuilder<Teacher, Teacher, QDistinct> {
  QueryBuilder<Teacher, Teacher, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Teacher, Teacher, QDistinct> distinctBySubject(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('subject', caseSensitive: caseSensitive);
  }
}

extension TeacherQueryProperty
    on QueryBuilder<Teacher, Teacher, QQueryProperty> {
  QueryBuilder<Teacher, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Teacher, String, QQueryOperations> subjectProperty() {
    return addPropertyNameInternal('subject');
  }
}

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetStudentCollection on Isar {
  IsarCollection<Student> get students => getCollection();
}

const StudentSchema = CollectionSchema(
  name: 'Student',
  schema:
      '{"name":"Student","idName":"id","properties":[{"name":"name","type":"String"}],"indexes":[],"links":[{"name":"teachers","target":"Teacher"}]}',
  idName: 'id',
  propertyIds: {'name': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'teachers': 0},
  backlinkLinkNames: {},
  getId: _studentGetId,
  setId: _studentSetId,
  getLinks: _studentGetLinks,
  attachLinks: _studentAttachLinks,
  serializeNative: _studentSerializeNative,
  deserializeNative: _studentDeserializeNative,
  deserializePropNative: _studentDeserializePropNative,
  serializeWeb: _studentSerializeWeb,
  deserializeWeb: _studentDeserializeWeb,
  deserializePropWeb: _studentDeserializePropWeb,
  version: 3,
);

int? _studentGetId(Student object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _studentSetId(Student object, int id) {
  object.id = id;
}

List<IsarLinkBase> _studentGetLinks(Student object) {
  return [object.teachers];
}

void _studentSerializeNative(
    IsarCollection<Student> collection,
    IsarRawObject rawObj,
    Student object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_name.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _name);
}

Student _studentDeserializeNative(IsarCollection<Student> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Student();
  object.id = id;
  object.name = reader.readString(offsets[0]);
  _studentAttachLinks(collection, id, object);
  return object;
}

P _studentDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _studentSerializeWeb(
    IsarCollection<Student> collection, Student object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  return jsObj;
}

Student _studentDeserializeWeb(
    IsarCollection<Student> collection, dynamic jsObj) {
  final object = Student();
  object.id = IsarNative.jsObjectGet(jsObj, 'id');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  _studentAttachLinks(collection, IsarNative.jsObjectGet(jsObj, 'id'), object);
  return object;
}

P _studentDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _studentAttachLinks(IsarCollection col, int id, Student object) {
  object.teachers.attach(col, col.isar.teachers, 'teachers', id);
}

extension StudentQueryWhereSort on QueryBuilder<Student, Student, QWhere> {
  QueryBuilder<Student, Student, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension StudentQueryWhere on QueryBuilder<Student, Student, QWhereClause> {
  QueryBuilder<Student, Student, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Student, Student, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Student, Student, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Student, Student, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Student, Student, QAfterWhereClause> idBetween(
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

extension StudentQueryFilter
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Student, Student, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Student, Student, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension StudentQueryLinks
    on QueryBuilder<Student, Student, QFilterCondition> {
  QueryBuilder<Student, Student, QAfterFilterCondition> teachers(
      FilterQuery<Teacher> q) {
    return linkInternal(
      isar.teachers,
      q,
      'teachers',
    );
  }
}

extension StudentQueryWhereSortBy on QueryBuilder<Student, Student, QSortBy> {
  QueryBuilder<Student, Student, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Student, Student, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension StudentQueryWhereSortThenBy
    on QueryBuilder<Student, Student, QSortThenBy> {
  QueryBuilder<Student, Student, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Student, Student, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }
}

extension StudentQueryWhereDistinct
    on QueryBuilder<Student, Student, QDistinct> {
  QueryBuilder<Student, Student, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Student, Student, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }
}

extension StudentQueryProperty
    on QueryBuilder<Student, Student, QQueryProperty> {
  QueryBuilder<Student, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Student, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }
}
