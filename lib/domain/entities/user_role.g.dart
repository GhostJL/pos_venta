// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserRoleCollection on Isar {
  IsarCollection<UserRole> get userRoles => this.collection();
}

const UserRoleSchema = CollectionSchema(
  name: r'UserRole',
  id: -5416717276856944674,
  properties: {},
  estimateSize: _userRoleEstimateSize,
  serialize: _userRoleSerialize,
  deserialize: _userRoleDeserialize,
  deserializeProp: _userRoleDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'user': LinkSchema(
      id: -7225853073122372201,
      name: r'user',
      target: r'User',
      single: true,
    ),
    r'role': LinkSchema(
      id: 4345852538428332511,
      name: r'role',
      target: r'Role',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _userRoleGetId,
  getLinks: _userRoleGetLinks,
  attach: _userRoleAttach,
  version: '3.1.0+1',
);

int _userRoleEstimateSize(
  UserRole object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _userRoleSerialize(
  UserRole object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
UserRole _userRoleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserRole();
  object.id = id;
  return object;
}

P _userRoleDeserializeProp<P>(
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

Id _userRoleGetId(UserRole object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _userRoleGetLinks(UserRole object) {
  return [object.user, object.role];
}

void _userRoleAttach(IsarCollection<dynamic> col, Id id, UserRole object) {
  object.id = id;
  object.user.attach(col, col.isar.collection<User>(), r'user', id);
  object.role.attach(col, col.isar.collection<Role>(), r'role', id);
}

extension UserRoleQueryWhereSort on QueryBuilder<UserRole, UserRole, QWhere> {
  QueryBuilder<UserRole, UserRole, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserRoleQueryWhere on QueryBuilder<UserRole, UserRole, QWhereClause> {
  QueryBuilder<UserRole, UserRole, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<UserRole, UserRole, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterWhereClause> idBetween(
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

extension UserRoleQueryFilter
    on QueryBuilder<UserRole, UserRole, QFilterCondition> {
  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> idBetween(
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

extension UserRoleQueryObject
    on QueryBuilder<UserRole, UserRole, QFilterCondition> {}

extension UserRoleQueryLinks
    on QueryBuilder<UserRole, UserRole, QFilterCondition> {
  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> user(
      FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> role(
      FilterQuery<Role> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'role');
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterFilterCondition> roleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'role', 0, true, 0, true);
    });
  }
}

extension UserRoleQuerySortBy on QueryBuilder<UserRole, UserRole, QSortBy> {}

extension UserRoleQuerySortThenBy
    on QueryBuilder<UserRole, UserRole, QSortThenBy> {
  QueryBuilder<UserRole, UserRole, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserRole, UserRole, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension UserRoleQueryWhereDistinct
    on QueryBuilder<UserRole, UserRole, QDistinct> {}

extension UserRoleQueryProperty
    on QueryBuilder<UserRole, UserRole, QQueryProperty> {
  QueryBuilder<UserRole, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
