// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_session.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCashSessionCollection on Isar {
  IsarCollection<CashSession> get cashSessions => this.collection();
}

const CashSessionSchema = CollectionSchema(
  name: r'CashSession',
  id: -828438757725199893,
  properties: {
    r'closedAt': PropertySchema(
      id: 0,
      name: r'closedAt',
      type: IsarType.dateTime,
    ),
    r'closingAmount': PropertySchema(
      id: 1,
      name: r'closingAmount',
      type: IsarType.double,
    ),
    r'openedAt': PropertySchema(
      id: 2,
      name: r'openedAt',
      type: IsarType.dateTime,
    ),
    r'openingAmount': PropertySchema(
      id: 3,
      name: r'openingAmount',
      type: IsarType.double,
    ),
    r'status': PropertySchema(
      id: 4,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _cashSessionEstimateSize,
  serialize: _cashSessionSerialize,
  deserialize: _cashSessionDeserialize,
  deserializeProp: _cashSessionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'cashRegister': LinkSchema(
      id: 3278045918635040047,
      name: r'cashRegister',
      target: r'CashRegister',
      single: true,
    ),
    r'userOpened': LinkSchema(
      id: -5581226948354351507,
      name: r'userOpened',
      target: r'User',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _cashSessionGetId,
  getLinks: _cashSessionGetLinks,
  attach: _cashSessionAttach,
  version: '3.1.0+1',
);

int _cashSessionEstimateSize(
  CashSession object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _cashSessionSerialize(
  CashSession object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.closedAt);
  writer.writeDouble(offsets[1], object.closingAmount);
  writer.writeDateTime(offsets[2], object.openedAt);
  writer.writeDouble(offsets[3], object.openingAmount);
  writer.writeString(offsets[4], object.status);
}

CashSession _cashSessionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CashSession();
  object.closedAt = reader.readDateTimeOrNull(offsets[0]);
  object.closingAmount = reader.readDoubleOrNull(offsets[1]);
  object.id = id;
  object.openedAt = reader.readDateTime(offsets[2]);
  object.openingAmount = reader.readDouble(offsets[3]);
  object.status = reader.readString(offsets[4]);
  return object;
}

P _cashSessionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cashSessionGetId(CashSession object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cashSessionGetLinks(CashSession object) {
  return [object.cashRegister, object.userOpened];
}

void _cashSessionAttach(
    IsarCollection<dynamic> col, Id id, CashSession object) {
  object.id = id;
  object.cashRegister
      .attach(col, col.isar.collection<CashRegister>(), r'cashRegister', id);
  object.userOpened.attach(col, col.isar.collection<User>(), r'userOpened', id);
}

extension CashSessionQueryWhereSort
    on QueryBuilder<CashSession, CashSession, QWhere> {
  QueryBuilder<CashSession, CashSession, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CashSessionQueryWhere
    on QueryBuilder<CashSession, CashSession, QWhereClause> {
  QueryBuilder<CashSession, CashSession, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CashSessionQueryFilter
    on QueryBuilder<CashSession, CashSession, QFilterCondition> {
  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'closedAt',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'closedAt',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> closedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'closedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'closedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'closedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> closedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'closedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closingAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'closingAmount',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closingAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'closingAmount',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closingAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'closingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closingAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'closingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closingAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'closingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      closingAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'closingAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> openedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      openedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      openedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> openedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      openingAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      openingAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      openingAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      openingAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openingAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension CashSessionQueryObject
    on QueryBuilder<CashSession, CashSession, QFilterCondition> {}

extension CashSessionQueryLinks
    on QueryBuilder<CashSession, CashSession, QFilterCondition> {
  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> cashRegister(
      FilterQuery<CashRegister> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'cashRegister');
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      cashRegisterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'cashRegister', 0, true, 0, true);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition> userOpened(
      FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'userOpened');
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterFilterCondition>
      userOpenedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'userOpened', 0, true, 0, true);
    });
  }
}

extension CashSessionQuerySortBy
    on QueryBuilder<CashSession, CashSession, QSortBy> {
  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByClosedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closedAt', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByClosedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closedAt', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByClosingAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closingAmount', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy>
      sortByClosingAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closingAmount', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByOpenedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedAt', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByOpenedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedAt', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByOpeningAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openingAmount', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy>
      sortByOpeningAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openingAmount', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension CashSessionQuerySortThenBy
    on QueryBuilder<CashSession, CashSession, QSortThenBy> {
  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByClosedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closedAt', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByClosedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closedAt', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByClosingAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closingAmount', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy>
      thenByClosingAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closingAmount', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByOpenedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedAt', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByOpenedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openedAt', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByOpeningAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openingAmount', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy>
      thenByOpeningAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openingAmount', Sort.desc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<CashSession, CashSession, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension CashSessionQueryWhereDistinct
    on QueryBuilder<CashSession, CashSession, QDistinct> {
  QueryBuilder<CashSession, CashSession, QDistinct> distinctByClosedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'closedAt');
    });
  }

  QueryBuilder<CashSession, CashSession, QDistinct> distinctByClosingAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'closingAmount');
    });
  }

  QueryBuilder<CashSession, CashSession, QDistinct> distinctByOpenedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'openedAt');
    });
  }

  QueryBuilder<CashSession, CashSession, QDistinct> distinctByOpeningAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'openingAmount');
    });
  }

  QueryBuilder<CashSession, CashSession, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension CashSessionQueryProperty
    on QueryBuilder<CashSession, CashSession, QQueryProperty> {
  QueryBuilder<CashSession, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CashSession, DateTime?, QQueryOperations> closedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'closedAt');
    });
  }

  QueryBuilder<CashSession, double?, QQueryOperations> closingAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'closingAmount');
    });
  }

  QueryBuilder<CashSession, DateTime, QQueryOperations> openedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openedAt');
    });
  }

  QueryBuilder<CashSession, double, QQueryOperations> openingAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openingAmount');
    });
  }

  QueryBuilder<CashSession, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
