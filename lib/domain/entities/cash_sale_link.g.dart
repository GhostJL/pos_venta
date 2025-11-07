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
  properties: {},
  estimateSize: _cashSaleLinkEstimateSize,
  serialize: _cashSaleLinkSerialize,
  deserialize: _cashSaleLinkDeserialize,
  deserializeProp: _cashSaleLinkDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'sale': LinkSchema(
      id: 6071546092072827494,
      name: r'sale',
      target: r'Sale',
      single: true,
    ),
    r'session': LinkSchema(
      id: -8369591090308055544,
      name: r'session',
      target: r'CashSession',
      single: true,
    )
  },
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
) {}
CashSaleLink _cashSaleLinkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CashSaleLink();
  object.id = id;
  return object;
}

P _cashSaleLinkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cashSaleLinkGetId(CashSaleLink object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _cashSaleLinkGetLinks(CashSaleLink object) {
  return [object.sale, object.session];
}

void _cashSaleLinkAttach(
    IsarCollection<dynamic> col, Id id, CashSaleLink object) {
  object.id = id;
  object.sale.attach(col, col.isar.collection<Sale>(), r'sale', id);
  object.session
      .attach(col, col.isar.collection<CashSession>(), r'session', id);
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
}

extension CashSaleLinkQueryObject
    on QueryBuilder<CashSaleLink, CashSaleLink, QFilterCondition> {}

extension CashSaleLinkQueryLinks
    on QueryBuilder<CashSaleLink, CashSaleLink, QFilterCondition> {
  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> sale(
      FilterQuery<Sale> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'sale');
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> saleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sale', 0, true, 0, true);
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition> session(
      FilterQuery<CashSession> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'session');
    });
  }

  QueryBuilder<CashSaleLink, CashSaleLink, QAfterFilterCondition>
      sessionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'session', 0, true, 0, true);
    });
  }
}

extension CashSaleLinkQuerySortBy
    on QueryBuilder<CashSaleLink, CashSaleLink, QSortBy> {}

extension CashSaleLinkQuerySortThenBy
    on QueryBuilder<CashSaleLink, CashSaleLink, QSortThenBy> {
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
}

extension CashSaleLinkQueryWhereDistinct
    on QueryBuilder<CashSaleLink, CashSaleLink, QDistinct> {}

extension CashSaleLinkQueryProperty
    on QueryBuilder<CashSaleLink, CashSaleLink, QQueryProperty> {
  QueryBuilder<CashSaleLink, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
