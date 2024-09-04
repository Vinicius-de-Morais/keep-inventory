// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
  });

  final int? id;

  final String? email;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.email,
    this.name,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'User'),
  email<String>('email', 'User'),
  name$<String>('name', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.email,
    this.name,
  });

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    this.name,
  });

  final int? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.email,
    this.name,
  });

  final int? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class CreateManyUserAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyUserAndReturnOutputTypeSelect({
    this.id,
    this.email,
    this.name,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.email,
    this.name,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
      };
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.name,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.email,
    this.name,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.name,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? name;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        '_all': $all,
      };
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType({this.id});

  factory UserAvgAggregateOutputType.fromJson(Map json) =>
      UserAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType({this.id});

  factory UserSumAggregateOutputType.fromJson(Map json) =>
      UserSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.email,
    this.name,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
      );

  final int? id;

  final String? email;

  final String? name;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.email,
    this.name,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
      );

  final int? id;

  final String? email;

  final String? name;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.name,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? email;

  final String? name;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.name,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? name;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserAvgOrderByAggregateInput? $avg;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  final _i2.UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class UserGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UserAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UserSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserAvgAggregateOutputType? $avg;

  final _i2.UserSumAggregateOutputType? $sum;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserAvgArgs({this.select});

  final _i2.UserAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSumArgs({this.select});

  final _i2.UserSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUserSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class MacacoWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.cor,
  });

  final _i1.PrismaUnion<_i2.MacacoWhereInput, Iterable<_i2.MacacoWhereInput>>?
      AND;

  final Iterable<_i2.MacacoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MacacoWhereInput, Iterable<_i2.MacacoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? cor;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'cor': cor,
      };
}

class MacacoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.cor,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.MacacoWhereInput, Iterable<_i2.MacacoWhereInput>>?
      AND;

  final Iterable<_i2.MacacoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MacacoWhereInput, Iterable<_i2.MacacoWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'cor': cor,
      };
}

class MacacoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoSelect({
    this.id,
    this.cor,
  });

  final bool? id;

  final bool? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoOrderByWithRelationInput({
    this.id,
    this.cor,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

enum MacacoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Macaco'),
  cor<String>('cor', 'Macaco');

  const MacacoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class MacacoCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoCreateInput({required this.cor});

  final String cor;

  @override
  Map<String, dynamic> toJson() => {'cor': cor};
}

class MacacoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoUncheckedCreateInput({
    this.id,
    required this.cor,
  });

  final int? id;

  final String cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoCreateManyInput({
    this.id,
    required this.cor,
  });

  final int? id;

  final String cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class CreateManyMacacoAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyMacacoAndReturnOutputTypeSelect({
    this.id,
    this.cor,
  });

  final bool? id;

  final bool? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoUpdateInput({this.cor});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? cor;

  @override
  Map<String, dynamic> toJson() => {'cor': cor};
}

class MacacoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoUncheckedUpdateInput({
    this.id,
    this.cor,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoUpdateManyMutationInput({this.cor});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? cor;

  @override
  Map<String, dynamic> toJson() => {'cor': cor};
}

class MacacoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoUncheckedUpdateManyInput({
    this.id,
    this.cor,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoCountAggregateOutputType {
  const MacacoCountAggregateOutputType({
    this.id,
    this.cor,
    this.$all,
  });

  factory MacacoCountAggregateOutputType.fromJson(Map json) =>
      MacacoCountAggregateOutputType(
        id: json['id'],
        cor: json['cor'],
        $all: json['_all'],
      );

  final int? id;

  final int? cor;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
        '_all': $all,
      };
}

class MacacoAvgAggregateOutputType {
  const MacacoAvgAggregateOutputType({this.id});

  factory MacacoAvgAggregateOutputType.fromJson(Map json) =>
      MacacoAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class MacacoSumAggregateOutputType {
  const MacacoSumAggregateOutputType({this.id});

  factory MacacoSumAggregateOutputType.fromJson(Map json) =>
      MacacoSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class MacacoMinAggregateOutputType {
  const MacacoMinAggregateOutputType({
    this.id,
    this.cor,
  });

  factory MacacoMinAggregateOutputType.fromJson(Map json) =>
      MacacoMinAggregateOutputType(
        id: json['id'],
        cor: json['cor'],
      );

  final int? id;

  final String? cor;

  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoMaxAggregateOutputType {
  const MacacoMaxAggregateOutputType({
    this.id,
    this.cor,
  });

  factory MacacoMaxAggregateOutputType.fromJson(Map json) =>
      MacacoMaxAggregateOutputType(
        id: json['id'],
        cor: json['cor'],
      );

  final int? id;

  final String? cor;

  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoGroupByOutputType {
  const MacacoGroupByOutputType({
    this.id,
    this.cor,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory MacacoGroupByOutputType.fromJson(Map json) => MacacoGroupByOutputType(
        id: json['id'],
        cor: json['cor'],
        $count: json['_count'] is Map
            ? _i2.MacacoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.MacacoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.MacacoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MacacoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MacacoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? cor;

  final _i2.MacacoCountAggregateOutputType? $count;

  final _i2.MacacoAvgAggregateOutputType? $avg;

  final _i2.MacacoSumAggregateOutputType? $sum;

  final _i2.MacacoMinAggregateOutputType? $min;

  final _i2.MacacoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class MacacoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoCountOrderByAggregateInput({
    this.id,
    this.cor,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class MacacoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoMaxOrderByAggregateInput({
    this.id,
    this.cor,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoMinOrderByAggregateInput({
    this.id,
    this.cor,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class MacacoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoOrderByWithAggregationInput({
    this.id,
    this.cor,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? cor;

  final _i2.MacacoCountOrderByAggregateInput? $count;

  final _i2.MacacoAvgOrderByAggregateInput? $avg;

  final _i2.MacacoMaxOrderByAggregateInput? $max;

  final _i2.MacacoMinOrderByAggregateInput? $min;

  final _i2.MacacoSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class MacacoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.cor,
  });

  final _i1.PrismaUnion<_i2.MacacoScalarWhereWithAggregatesInput,
      Iterable<_i2.MacacoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.MacacoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.MacacoScalarWhereWithAggregatesInput,
      Iterable<_i2.MacacoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? cor;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'cor': cor,
      };
}

class MacacoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoCountAggregateOutputTypeSelect({
    this.id,
    this.cor,
    this.$all,
  });

  final bool? id;

  final bool? cor;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
        '_all': $all,
      };
}

class MacacoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoGroupByOutputTypeCountArgs({this.select});

  final _i2.MacacoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MacacoAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class MacacoGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoGroupByOutputTypeAvgArgs({this.select});

  final _i2.MacacoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MacacoSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class MacacoGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoGroupByOutputTypeSumArgs({this.select});

  final _i2.MacacoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MacacoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoMinAggregateOutputTypeSelect({
    this.id,
    this.cor,
  });

  final bool? id;

  final bool? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoGroupByOutputTypeMinArgs({this.select});

  final _i2.MacacoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MacacoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoMaxAggregateOutputTypeSelect({
    this.id,
    this.cor,
  });

  final bool? id;

  final bool? cor;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
      };
}

class MacacoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoGroupByOutputTypeMaxArgs({this.select});

  final _i2.MacacoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MacacoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MacacoGroupByOutputTypeSelect({
    this.id,
    this.cor,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? cor;

  final _i1.PrismaUnion<bool, _i2.MacacoGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.MacacoGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.MacacoGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.MacacoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.MacacoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'cor': cor,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateMacaco {
  const AggregateMacaco({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateMacaco.fromJson(Map json) => AggregateMacaco(
        $count: json['_count'] is Map
            ? _i2.MacacoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.MacacoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.MacacoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MacacoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MacacoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.MacacoCountAggregateOutputType? $count;

  final _i2.MacacoAvgAggregateOutputType? $avg;

  final _i2.MacacoSumAggregateOutputType? $sum;

  final _i2.MacacoMinAggregateOutputType? $min;

  final _i2.MacacoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateMacacoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMacacoCountArgs({this.select});

  final _i2.MacacoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMacacoAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMacacoAvgArgs({this.select});

  final _i2.MacacoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMacacoSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMacacoSumArgs({this.select});

  final _i2.MacacoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMacacoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMacacoMinArgs({this.select});

  final _i2.MacacoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMacacoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMacacoMaxArgs({this.select});

  final _i2.MacacoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMacacoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMacacoSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateMacacoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateMacacoAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateMacacoSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateMacacoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateMacacoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
