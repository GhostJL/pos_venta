// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_sale_link.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCashSaleLinkCollection on Isar {
  IsarCollection<CashSaleLink> get cashSaleLinks => this.collection();
}

const CashSaleLinkSchema = CollectionSchema(
  name: r'CashSaleLink',
  id: 4754780969988967773,
  properties: {
    r'cashSessionId': PropertySchema(
      id: 0,
      name: r'cashSessionId',
      type: IsarType.long,
    ),
    r'saleId': PropertySchema(
      id: 1,
      name: r'saleId',
      type: IsarType.long,
    )
  },
  estimateSize: _cashSaleLinkEstimateSize,
  serialize: _cashSaleLinkSerialize,
  deserialize: _cashSaleLinkDeserialize,
  deserializeProp: _cashSaleLinkDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cashSaleLinkGetId,
  getLinks: _cashSaleLinkGetLinks,
  attach: _cashSaleLinkAttach,
  version: '3.1.0+1',
);

int _cashSaleLinkEstimateSize(
  CashSaleLink object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _cashSaleLinkSerialize(
  CashSaleLink object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cashSessionId);
  writer.writeLong(offsets[1], object.saleId);
}

CashSaleLink _cashSaleLinkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CashSaleLink();
  object.cashSessionId = reader.readLong(offsets[0]);
  object.id = id;
  object.saleId = reader.readLong(offsets[1]);
  return object;
}

P _cashSaleLinkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cashSaleLinkGetId(CashSaleLink object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cashSaleLinkGetLinks(CashSaleLink object) {
  return [];
}

void _cashSaleLinkAttach(
    IsarCollection<dynamic> col, Id id, CashSaleLink object) {
  object.id = id;
}

extension CashSaleLinkQueryWhereSort
    on QueryBuilder<CashSaleLink, CashSaleLink, QWhere> {
  QueryBuilder<CashSaleLink, CashSaleLink, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CashSaleLinkQueryWhere
    on QueryBuilder<CashSaleLink, CashSaleLink, QWhereClause> {
  QueryBuilder<CashSaleLink, CashSaleLink, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterWhereClause> idBetween(
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

extension CashSaleLinkQueryFilter
    on QueryBuilder<CashSaleLink, CashSaleLink, QFilterCondition> {
  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      cashSessionIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cashSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      cashSessionIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cashSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      cashSessionIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cashSessionId',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      cashSessionIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cashSessionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> saleIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saleId',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      saleIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saleId',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      saleIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saleId',
        value: value,
      ));
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> saleIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CashSaleLinkQueryObject
    on QueryBuilder<CashSaleLink, CashSaleLink, QFilterCondition> {}

extension CashSaleLinkQueryLinks
    on QueryBuilder<CashSaleLink, CashSaleLink, QFilterCondition> {}

extension CashSaleLinkQuerySortBy
    on QueryBuilder<CashSaleLink, CashSaleLink, QSortBy> {
  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> sortByCashSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cashSessionId', Sort.asc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy>
      sortByCashSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cashSessionId', Sort.desc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> sortBySaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saleId', Sort.asc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> sortBySaleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saleId', Sort.desc);
    });
  }
}

extension CashSaleLinkQuerySortThenBy
    on QueryBuilder<CashSaleLink, CashSaleLink, QSortThenBy> {
  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> thenByCashSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cashSessionId', Sort.asc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy>
      thenByCashSessionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cashSessionId', Sort.desc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> thenBySaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saleId', Sort.asc);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterSortBy> thenBySaleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saleId', Sort.desc);
    });
  }
}

extension CashSaleLinkQueryWhereDistinct
    on QueryBuilder<CashSaleLink, CashSaleLink, QDistinct> {
  QueryBuilder<CashSaleLink, CashSaleLink, QDistinct>
      distinctByCashSessionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cashSessionId');
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QDistinct> distinctBySaleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saleId');
    });
  }
}

extension CashSaleLinkQueryProperty
    on QueryBuilder<CashSaleLink, CashSaleLink, QQueryProperty> {
  QueryBuilder<CashSaleLink, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CashSaleLink, int, QQueryOperations> cashSessionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cashSessionId');
    });
  }

  QueryBuilder<CashSaleLink, int, QQueryOperations> saleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saleId');
    });
  }
}
