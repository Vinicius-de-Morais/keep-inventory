// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class ProductCategoryCountOutputType {
  const ProductCategoryCountOutputType({
    this.children,
    this.products,
  });

  factory ProductCategoryCountOutputType.fromJson(Map json) =>
      ProductCategoryCountOutputType(
        children: json['children'],
        products: json['products'],
      );

  final int? children;

  final int? products;

  Map<String, dynamic> toJson() => {
        'children': children,
        'products': products,
      };
}

class LoteCountOutputType {
  const LoteCountOutputType({this.loteUpdates});

  factory LoteCountOutputType.fromJson(Map json) =>
      LoteCountOutputType(loteUpdates: json['lote_updates']);

  final int? loteUpdates;

  Map<String, dynamic> toJson() => {'lote_updates': loteUpdates};
}

class ProductCountOutputType {
  const ProductCountOutputType({this.lotes});

  factory ProductCountOutputType.fromJson(Map json) =>
      ProductCountOutputType(lotes: json['lotes']);

  final int? lotes;

  Map<String, dynamic> toJson() => {'lotes': lotes};
}

class AccountCountOutputType {
  const AccountCountOutputType({
    this.products,
    this.categories,
  });

  factory AccountCountOutputType.fromJson(Map json) => AccountCountOutputType(
        products: json['products'],
        categories: json['categories'],
      );

  final int? products;

  final int? categories;

  Map<String, dynamic> toJson() => {
        'products': products,
        'categories': categories,
      };
}

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

class IntNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableFilter({
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

class AccountRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.AccountWhereInput? $is;

  final _i2.AccountWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ProductCategoryListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.ProductCategoryWhereInput? every;

  final _i2.ProductCategoryWhereInput? some;

  final _i2.ProductCategoryWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class ProductCategoryWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.account,
    this.parent,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryWhereInput,
      Iterable<_i2.ProductCategoryWhereInput>>? AND;

  final Iterable<_i2.ProductCategoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereInput,
      Iterable<_i2.ProductCategoryWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      parentCategory;

  final _i1.PrismaUnion<_i2.IntFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.AccountRelationFilter, _i2.AccountWhereInput>?
      account;

  final _i1.PrismaUnion<_i2.ProductCategoryNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProductCategoryWhereInput, _i1.PrismaNull>>? parent;

  final _i2.ProductCategoryListRelationFilter? children;

  final _i2.ProductListRelationFilter? products;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

class ProductCategoryNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedDateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

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

class DateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

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

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

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

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

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

class NestedFloatNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

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

class FloatNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

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

class ProductRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ProductWhereInput? $is;

  final _i2.ProductWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class LoteRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.LoteWhereInput? $is;

  final _i2.LoteWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class LoteUpdatesWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereInput,
      Iterable<_i2.LoteUpdatesWhereInput>>? AND;

  final Iterable<_i2.LoteUpdatesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereInput,
      Iterable<_i2.LoteUpdatesWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? stockId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updateTime;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityDelta;

  final _i1.PrismaUnion<_i2.LoteRelationFilter, _i2.LoteWhereInput>? lote;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

class LoteUpdatesListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.LoteUpdatesWhereInput? every;

  final _i2.LoteUpdatesWhereInput? some;

  final _i2.LoteUpdatesWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class ShoppingListWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.stockId,
    this.count,
    this.lote,
  });

  final _i1.PrismaUnion<_i2.ShoppingListWhereInput,
      Iterable<_i2.ShoppingListWhereInput>>? AND;

  final Iterable<_i2.ShoppingListWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ShoppingListWhereInput,
      Iterable<_i2.ShoppingListWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? stockId;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      count;

  final _i1.PrismaUnion<_i2.LoteRelationFilter, _i2.LoteWhereInput>? lote;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'stock_id': stockId,
        'count': count,
        'lote': lote,
      };
}

class ShoppingListNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.ShoppingListWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.ShoppingListWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class LoteWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.loteUpdates,
    this.shoppingList,
  });

  final _i1.PrismaUnion<_i2.LoteWhereInput, Iterable<_i2.LoteWhereInput>>? AND;

  final Iterable<_i2.LoteWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LoteWhereInput, Iterable<_i2.LoteWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityMinimum;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityCurrent;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? creationDate;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? purchasePrice;

  final _i1.PrismaUnion<_i2.ProductRelationFilter, _i2.ProductWhereInput>?
      product;

  final _i2.LoteUpdatesListRelationFilter? loteUpdates;

  final _i1.PrismaUnion<_i2.ShoppingListNullableRelationFilter,
          _i1.PrismaUnion<_i2.ShoppingListWhereInput, _i1.PrismaNull>>?
      shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.LoteWhereInput? every;

  final _i2.LoteWhereInput? some;

  final _i2.LoteWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class ProductWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
    this.lotes,
  });

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      AND;

  final Iterable<_i2.ProductWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      productCategoryId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? barcodeContent;

  final _i1.PrismaUnion<_i2.AccountRelationFilter, _i2.AccountWhereInput>?
      account;

  final _i1.PrismaUnion<_i2.ProductCategoryNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProductCategoryWhereInput, _i1.PrismaNull>>? category;

  final _i2.LoteListRelationFilter? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
        'lotes': lotes,
      };
}

class ProductListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.ProductWhereInput? every;

  final _i2.ProductWhereInput? some;

  final _i2.ProductWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class AccountWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final _i1.PrismaUnion<_i2.AccountWhereInput, Iterable<_i2.AccountWhereInput>>?
      AND;

  final Iterable<_i2.AccountWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AccountWhereInput, Iterable<_i2.AccountWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i2.ProductListRelationFilter? products;

  final _i2.ProductCategoryListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class AccountWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.AccountWhereInput, Iterable<_i2.AccountWhereInput>>?
      AND;

  final Iterable<_i2.AccountWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AccountWhereInput, Iterable<_i2.AccountWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userName;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i2.ProductListRelationFilter? products;

  final _i2.ProductCategoryListRelationFilter? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class ProductAccountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AccountSelect? select;

  final _i2.AccountInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ProductCategoryAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AccountSelect? select;

  final _i2.AccountInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ProductCategoryParentArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryParentArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i2.ProductCategorySelect? select;

  final _i2.ProductCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
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

class ProductOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ProductCategoryOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class AccountOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountOrderByWithRelationInput({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? userName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.ProductOrderByRelationAggregateInput? products;

  final _i2.ProductCategoryOrderByRelationAggregateInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class ProductCategoryOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryOrderByWithRelationInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.account,
    this.parent,
    this.children,
    this.products,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? parentCategory;

  final _i2.SortOrder? accountId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.AccountOrderByWithRelationInput? account;

  final _i2.ProductCategoryOrderByWithRelationInput? parent;

  final _i2.ProductCategoryOrderByRelationAggregateInput? children;

  final _i2.ProductOrderByRelationAggregateInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

class ProductCategoryWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.account,
    this.parent,
    this.children,
    this.products,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereInput,
      Iterable<_i2.ProductCategoryWhereInput>>? AND;

  final Iterable<_i2.ProductCategoryWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereInput,
      Iterable<_i2.ProductCategoryWhereInput>>? NOT;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      parentCategory;

  final _i1.PrismaUnion<_i2.IntFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.AccountRelationFilter, _i2.AccountWhereInput>?
      account;

  final _i1.PrismaUnion<_i2.ProductCategoryNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProductCategoryWhereInput, _i1.PrismaNull>>? parent;

  final _i2.ProductCategoryListRelationFilter? children;

  final _i2.ProductListRelationFilter? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

enum ProductCategoryScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'ProductCategory'),
  parentCategory<int>('parent_category', 'ProductCategory'),
  accountId<int>('account_id', 'ProductCategory'),
  name$<String>('name', 'ProductCategory'),
  description<String>('description', 'ProductCategory');

  const ProductCategoryScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProductCategoryChildrenArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryChildrenArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProductCategoryOrderByWithRelationInput>,
      _i2.ProductCategoryOrderByWithRelationInput>? orderBy;

  final _i2.ProductCategoryWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProductCategoryScalar,
      Iterable<_i2.ProductCategoryScalar>>? distinct;

  final _i2.ProductCategorySelect? select;

  final _i2.ProductCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class LoteOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ProductOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductOrderByWithRelationInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
    this.lotes,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? productCategoryId;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? barcodeContent;

  final _i2.AccountOrderByWithRelationInput? account;

  final _i2.ProductCategoryOrderByWithRelationInput? category;

  final _i2.LoteOrderByRelationAggregateInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
        'lotes': lotes,
      };
}

class ProductWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
    this.lotes,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      AND;

  final Iterable<_i2.ProductWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductWhereInput, Iterable<_i2.ProductWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      productCategoryId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? barcodeContent;

  final _i1.PrismaUnion<_i2.AccountRelationFilter, _i2.AccountWhereInput>?
      account;

  final _i1.PrismaUnion<_i2.ProductCategoryNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProductCategoryWhereInput, _i1.PrismaNull>>? category;

  final _i2.LoteListRelationFilter? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
        'lotes': lotes,
      };
}

enum ProductScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Product'),
  accountId<int>('account_id', 'Product'),
  description<String>('description', 'Product'),
  productCategoryId<int>('product_category_id', 'Product'),
  name$<String>('name', 'Product'),
  barcodeContent<String>('barcode_content', 'Product');

  const ProductScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProductCategoryProductsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryProductsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProductWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProductOrderByWithRelationInput>,
      _i2.ProductOrderByWithRelationInput>? orderBy;

  final _i2.ProductWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProductScalar, Iterable<_i2.ProductScalar>>?
      distinct;

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProductCategoryCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCountOutputTypeSelect({
    this.children,
    this.products,
  });

  final bool? children;

  final bool? products;

  @override
  Map<String, dynamic> toJson() => {
        'children': children,
        'products': products,
      };
}

class ProductCategoryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCountArgs({this.select});

  final _i2.ProductCategoryCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductCategoryInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryInclude({
    this.account,
    this.parent,
    this.children,
    this.products,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.ProductCategoryAccountArgs>? account;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryParentArgs>? parent;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryChildrenArgs>? children;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryProductsArgs>? products;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
        '_count': $count,
      };
}

class ProductCategorySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategorySelect({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.account,
    this.parent,
    this.children,
    this.products,
    this.$count,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  final bool? name;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryAccountArgs>? account;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryParentArgs>? parent;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryChildrenArgs>? children;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryProductsArgs>? products;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
        '_count': $count,
      };
}

class ProductCategoryArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i2.ProductCategorySelect? select;

  final _i2.ProductCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class LoteProductArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteProductArgs({
    this.select,
    this.include,
  });

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class LoteUpdatesLoteArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesLoteArgs({
    this.select,
    this.include,
  });

  final _i2.LoteSelect? select;

  final _i2.LoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class LoteUpdatesInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesInclude({this.lote});

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesLoteArgs>? lote;

  @override
  Map<String, dynamic> toJson() => {'lote': lote};
}

class LoteUpdatesOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ShoppingListOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListOrderByWithRelationInput({
    this.stockId,
    this.count,
    this.lote,
  });

  final _i2.SortOrder? stockId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? count;

  final _i2.LoteOrderByWithRelationInput? lote;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        'lote': lote,
      };
}

class LoteOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteOrderByWithRelationInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.loteUpdates,
    this.shoppingList,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? expirationDate;

  final _i2.SortOrder? creationDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? purchasePrice;

  final _i2.ProductOrderByWithRelationInput? product;

  final _i2.LoteUpdatesOrderByRelationAggregateInput? loteUpdates;

  final _i2.ShoppingListOrderByWithRelationInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUpdatesOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesOrderByWithRelationInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? updateTime;

  final _i2.SortOrder? quantityDelta;

  final _i2.LoteOrderByWithRelationInput? lote;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

class LoteUpdatesWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereInput,
      Iterable<_i2.LoteUpdatesWhereInput>>? AND;

  final Iterable<_i2.LoteUpdatesWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereInput,
      Iterable<_i2.LoteUpdatesWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? stockId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updateTime;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityDelta;

  final _i1.PrismaUnion<_i2.LoteRelationFilter, _i2.LoteWhereInput>? lote;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

enum LoteUpdatesScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'LoteUpdates'),
  stockId<int>('stock_id', 'LoteUpdates'),
  updateTime<DateTime>('update_time', 'LoteUpdates'),
  quantityDelta<int>('quantity_delta', 'LoteUpdates');

  const LoteUpdatesScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class LoteLoteUpdatesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteLoteUpdatesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.LoteUpdatesWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.LoteUpdatesOrderByWithRelationInput>,
      _i2.LoteUpdatesOrderByWithRelationInput>? orderBy;

  final _i2.LoteUpdatesWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.LoteUpdatesScalar, Iterable<_i2.LoteUpdatesScalar>>?
      distinct;

  final _i2.LoteUpdatesSelect? select;

  final _i2.LoteUpdatesInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ShoppingListLoteArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListLoteArgs({
    this.select,
    this.include,
  });

  final _i2.LoteSelect? select;

  final _i2.LoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ShoppingListSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListSelect({
    this.stockId,
    this.count,
    this.lote,
  });

  final bool? stockId;

  final bool? count;

  final _i1.PrismaUnion<bool, _i2.ShoppingListLoteArgs>? lote;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        'lote': lote,
      };
}

class ShoppingListInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListInclude({this.lote});

  final _i1.PrismaUnion<bool, _i2.ShoppingListLoteArgs>? lote;

  @override
  Map<String, dynamic> toJson() => {'lote': lote};
}

class LoteShoppingListArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteShoppingListArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ShoppingListWhereInput? where;

  final _i2.ShoppingListSelect? select;

  final _i2.ShoppingListInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class LoteCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCountOutputTypeSelect({this.loteUpdates});

  final bool? loteUpdates;

  @override
  Map<String, dynamic> toJson() => {'lote_updates': loteUpdates};
}

class LoteCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCountArgs({this.select});

  final _i2.LoteCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteInclude({
    this.product,
    this.loteUpdates,
    this.shoppingList,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.LoteProductArgs>? product;

  final _i1.PrismaUnion<bool, _i2.LoteLoteUpdatesArgs>? loteUpdates;

  final _i1.PrismaUnion<bool, _i2.LoteShoppingListArgs>? shoppingList;

  final _i1.PrismaUnion<bool, _i2.LoteCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
        '_count': $count,
      };
}

class LoteUpdatesSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesSelect({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  final bool? id;

  final bool? stockId;

  final bool? updateTime;

  final bool? quantityDelta;

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesLoteArgs>? lote;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

class LoteSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.loteUpdates,
    this.shoppingList,
    this.$count,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? expirationDate;

  final bool? creationDate;

  final bool? purchasePrice;

  final _i1.PrismaUnion<bool, _i2.LoteProductArgs>? product;

  final _i1.PrismaUnion<bool, _i2.LoteLoteUpdatesArgs>? loteUpdates;

  final _i1.PrismaUnion<bool, _i2.LoteShoppingListArgs>? shoppingList;

  final _i1.PrismaUnion<bool, _i2.LoteCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
        '_count': $count,
      };
}

class LoteWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.loteUpdates,
    this.shoppingList,
  });

  final int? id;

  final _i1.PrismaUnion<_i2.LoteWhereInput, Iterable<_i2.LoteWhereInput>>? AND;

  final Iterable<_i2.LoteWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LoteWhereInput, Iterable<_i2.LoteWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityMinimum;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityCurrent;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? creationDate;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? purchasePrice;

  final _i1.PrismaUnion<_i2.ProductRelationFilter, _i2.ProductWhereInput>?
      product;

  final _i2.LoteUpdatesListRelationFilter? loteUpdates;

  final _i1.PrismaUnion<_i2.ShoppingListNullableRelationFilter,
          _i1.PrismaUnion<_i2.ShoppingListWhereInput, _i1.PrismaNull>>?
      shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

enum LoteScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Lote'),
  productId<int>('product_id', 'Lote'),
  quantityMinimum<int>('quantity_minimum', 'Lote'),
  quantityCurrent<int>('quantity_current', 'Lote'),
  expirationDate<DateTime>('expiration_date', 'Lote'),
  creationDate<DateTime>('creation_date', 'Lote'),
  purchasePrice<double>('purchase_price', 'Lote');

  const LoteScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProductLotesArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductLotesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.LoteWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.LoteOrderByWithRelationInput>,
      _i2.LoteOrderByWithRelationInput>? orderBy;

  final _i2.LoteWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.LoteScalar, Iterable<_i2.LoteScalar>>? distinct;

  final _i2.LoteSelect? select;

  final _i2.LoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProductCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountOutputTypeSelect({this.lotes});

  final bool? lotes;

  @override
  Map<String, dynamic> toJson() => {'lotes': lotes};
}

class ProductCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountArgs({this.select});

  final _i2.ProductCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductInclude({
    this.account,
    this.category,
    this.lotes,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.ProductAccountArgs>? account;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryArgs>? category;

  final _i1.PrismaUnion<bool, _i2.ProductLotesArgs>? lotes;

  final _i1.PrismaUnion<bool, _i2.ProductCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'account': account,
        'category': category,
        'lotes': lotes,
        '_count': $count,
      };
}

class AccountProductsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountProductsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProductWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProductOrderByWithRelationInput>,
      _i2.ProductOrderByWithRelationInput>? orderBy;

  final _i2.ProductWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProductScalar, Iterable<_i2.ProductScalar>>?
      distinct;

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class AccountCategoriesArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCategoriesArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProductCategoryOrderByWithRelationInput>,
      _i2.ProductCategoryOrderByWithRelationInput>? orderBy;

  final _i2.ProductCategoryWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProductCategoryScalar,
      Iterable<_i2.ProductCategoryScalar>>? distinct;

  final _i2.ProductCategorySelect? select;

  final _i2.ProductCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class AccountCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCountOutputTypeSelect({
    this.products,
    this.categories,
  });

  final bool? products;

  final bool? categories;

  @override
  Map<String, dynamic> toJson() => {
        'products': products,
        'categories': categories,
      };
}

class AccountCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCountArgs({this.select});

  final _i2.AccountCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AccountInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountInclude({
    this.products,
    this.categories,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.AccountProductsArgs>? products;

  final _i1.PrismaUnion<bool, _i2.AccountCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.AccountCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'products': products,
        'categories': categories,
        '_count': $count,
      };
}

class ProductSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductSelect({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
    this.lotes,
    this.$count,
  });

  final bool? id;

  final bool? accountId;

  final bool? description;

  final bool? productCategoryId;

  final bool? name;

  final bool? barcodeContent;

  final _i1.PrismaUnion<bool, _i2.ProductAccountArgs>? account;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryArgs>? category;

  final _i1.PrismaUnion<bool, _i2.ProductLotesArgs>? lotes;

  final _i1.PrismaUnion<bool, _i2.ProductCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
        'lotes': lotes,
        '_count': $count,
      };
}

class AccountSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountSelect({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
    this.$count,
  });

  final bool? id;

  final bool? name;

  final bool? userName;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.AccountProductsArgs>? products;

  final _i1.PrismaUnion<bool, _i2.AccountCategoriesArgs>? categories;

  final _i1.PrismaUnion<bool, _i2.AccountCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
        '_count': $count,
      };
}

enum AccountScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<int>('id', 'Account'),
  name$<String>('name', 'Account'),
  userName<String>('user_name', 'Account'),
  description<String>('description', 'Account');

  const AccountScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class AccountCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateWithoutCategoriesInput({
    required this.name,
    required this.userName,
    this.description,
    this.products,
  });

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCreateNestedManyWithoutAccountInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
      };
}

class LoteUpdatesCreateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateWithoutLoteInput({
    this.updateTime,
    required this.quantityDelta,
  });

  final DateTime? updateTime;

  final int quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUncheckedCreateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedCreateWithoutLoteInput({
    this.id,
    this.updateTime,
    required this.quantityDelta,
  });

  final int? id;

  final DateTime? updateTime;

  final int quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesCreateOrConnectWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateOrConnectWithoutLoteInput({
    required this.where,
    required this.create,
  });

  final _i2.LoteUpdatesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateWithoutLoteInput,
      _i2.LoteUpdatesUncheckedCreateWithoutLoteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LoteUpdatesCreateManyLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateManyLoteInput({
    this.id,
    this.updateTime,
    required this.quantityDelta,
  });

  final int? id;

  final DateTime? updateTime;

  final int quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesCreateManyLoteInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateManyLoteInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateManyLoteInput,
      Iterable<_i2.LoteUpdatesCreateManyLoteInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class LoteUpdatesCreateNestedManyWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateNestedManyWithoutLoteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.LoteUpdatesCreateWithoutLoteInput,
          _i1.PrismaUnion<
              Iterable<_i2.LoteUpdatesCreateWithoutLoteInput>,
              _i1.PrismaUnion<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput,
                  Iterable<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput,
          Iterable<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput>>?
      connectOrCreate;

  final _i2.LoteUpdatesCreateManyLoteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ShoppingListCreateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCreateWithoutLoteInput({this.count});

  final _i1.PrismaUnion<int, _i1.PrismaNull>? count;

  @override
  Map<String, dynamic> toJson() => {'count': count};
}

class ShoppingListUncheckedCreateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedCreateWithoutLoteInput({this.count});

  final _i1.PrismaUnion<int, _i1.PrismaNull>? count;

  @override
  Map<String, dynamic> toJson() => {'count': count};
}

class ShoppingListWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListWhereUniqueInput({
    this.stockId,
    this.AND,
    this.OR,
    this.NOT,
    this.count,
    this.lote,
  });

  final int? stockId;

  final _i1.PrismaUnion<_i2.ShoppingListWhereInput,
      Iterable<_i2.ShoppingListWhereInput>>? AND;

  final Iterable<_i2.ShoppingListWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ShoppingListWhereInput,
      Iterable<_i2.ShoppingListWhereInput>>? NOT;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      count;

  final _i1.PrismaUnion<_i2.LoteRelationFilter, _i2.LoteWhereInput>? lote;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'count': count,
        'lote': lote,
      };
}

class ShoppingListCreateOrConnectWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCreateOrConnectWithoutLoteInput({
    required this.where,
    required this.create,
  });

  final _i2.ShoppingListWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ShoppingListCreateWithoutLoteInput,
      _i2.ShoppingListUncheckedCreateWithoutLoteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ShoppingListCreateNestedOneWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCreateNestedOneWithoutLoteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ShoppingListCreateWithoutLoteInput,
      _i2.ShoppingListUncheckedCreateWithoutLoteInput>? create;

  final _i2.ShoppingListCreateOrConnectWithoutLoteInput? connectOrCreate;

  final _i2.ShoppingListWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LoteCreateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateWithoutProductInput({
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
    this.shoppingList,
  });

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.LoteUpdatesCreateNestedManyWithoutLoteInput? loteUpdates;

  final _i2.ShoppingListCreateNestedOneWithoutLoteInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUpdatesUncheckedCreateNestedManyWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedCreateNestedManyWithoutLoteInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.LoteUpdatesCreateWithoutLoteInput,
          _i1.PrismaUnion<
              Iterable<_i2.LoteUpdatesCreateWithoutLoteInput>,
              _i1.PrismaUnion<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput,
                  Iterable<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput,
          Iterable<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput>>?
      connectOrCreate;

  final _i2.LoteUpdatesCreateManyLoteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ShoppingListUncheckedCreateNestedOneWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedCreateNestedOneWithoutLoteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ShoppingListCreateWithoutLoteInput,
      _i2.ShoppingListUncheckedCreateWithoutLoteInput>? create;

  final _i2.ShoppingListCreateOrConnectWithoutLoteInput? connectOrCreate;

  final _i2.ShoppingListWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LoteUncheckedCreateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedCreateWithoutProductInput({
    this.id,
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
    this.shoppingList,
  });

  final int? id;

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.LoteUpdatesUncheckedCreateNestedManyWithoutLoteInput? loteUpdates;

  final _i2.ShoppingListUncheckedCreateNestedOneWithoutLoteInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteCreateOrConnectWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateOrConnectWithoutProductInput({
    required this.where,
    required this.create,
  });

  final _i2.LoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteCreateWithoutProductInput,
      _i2.LoteUncheckedCreateWithoutProductInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LoteCreateManyProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateManyProductInput({
    this.id,
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final int? id;

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteCreateManyProductInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateManyProductInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.LoteCreateManyProductInput,
      Iterable<_i2.LoteCreateManyProductInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class LoteUncheckedCreateNestedManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.LoteCreateWithoutProductInput,
      _i1.PrismaUnion<
          Iterable<_i2.LoteCreateWithoutProductInput>,
          _i1.PrismaUnion<_i2.LoteUncheckedCreateWithoutProductInput,
              Iterable<_i2.LoteUncheckedCreateWithoutProductInput>>>>? create;

  final _i1.PrismaUnion<_i2.LoteCreateOrConnectWithoutProductInput,
      Iterable<_i2.LoteCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i2.LoteCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductUncheckedCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateWithoutAccountInput({
    this.id,
    this.description,
    this.productCategoryId,
    required this.name,
    this.barcodeContent,
    this.lotes,
  });

  final int? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? productCategoryId;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.LoteUncheckedCreateNestedManyWithoutProductInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'lotes': lotes,
      };
}

class ProductCreateOrConnectWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateOrConnectWithoutAccountInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutAccountInput,
      _i2.ProductUncheckedCreateWithoutAccountInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCreateManyAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateManyAccountInput({
    this.id,
    this.description,
    this.productCategoryId,
    required this.name,
    this.barcodeContent,
  });

  final int? id;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? productCategoryId;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductCreateManyAccountInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateManyAccountInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.ProductCreateManyAccountInput,
      Iterable<_i2.ProductCreateManyAccountInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class ProductUncheckedCreateNestedManyWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateNestedManyWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutAccountInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutAccountInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutAccountInput,
      Iterable<_i2.ProductCreateOrConnectWithoutAccountInput>>? connectOrCreate;

  final _i2.ProductCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class AccountUncheckedCreateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedCreateWithoutCategoriesInput({
    this.id,
    required this.name,
    required this.userName,
    this.description,
    this.products,
  });

  final int? id;

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductUncheckedCreateNestedManyWithoutAccountInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
      };
}

class AccountCreateOrConnectWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateOrConnectWithoutCategoriesInput({
    required this.where,
    required this.create,
  });

  final _i2.AccountWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AccountCreateWithoutCategoriesInput,
      _i2.AccountUncheckedCreateWithoutCategoriesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AccountCreateNestedOneWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateNestedOneWithoutCategoriesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AccountCreateWithoutCategoriesInput,
      _i2.AccountUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.AccountCreateOrConnectWithoutCategoriesInput? connectOrCreate;

  final _i2.AccountWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProductCategoryCreateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateWithoutParentInput({
    this.name,
    this.description,
    required this.account,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.AccountCreateNestedOneWithoutCategoriesInput account;

  final _i2.ProductCategoryCreateNestedManyWithoutParentInput? children;

  final _i2.ProductCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'children': children,
        'products': products,
      };
}

class ProductCategoryCreateOrConnectWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateOrConnectWithoutParentInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutParentInput,
      _i2.ProductCategoryUncheckedCreateWithoutParentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCategoryCreateManyParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateManyParentInput({
    this.id,
    required this.accountId,
    this.name,
    this.description,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryCreateManyParentInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateManyParentInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.ProductCategoryCreateManyParentInput,
      Iterable<_i2.ProductCategoryCreateManyParentInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class ProductCategoryUncheckedCreateNestedManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateNestedManyWithoutParentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutParentInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i2.ProductCategoryCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductUncheckedCreateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateWithoutCategoryInput({
    this.id,
    required this.accountId,
    this.description,
    required this.name,
    this.barcodeContent,
    this.lotes,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.LoteUncheckedCreateNestedManyWithoutProductInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'lotes': lotes,
      };
}

class ProductCreateOrConnectWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateOrConnectWithoutCategoryInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutCategoryInput,
      _i2.ProductUncheckedCreateWithoutCategoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCreateManyCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateManyCategoryInput({
    this.id,
    required this.accountId,
    this.description,
    required this.name,
    this.barcodeContent,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductCreateManyCategoryInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateManyCategoryInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.ProductCreateManyCategoryInput,
      Iterable<_i2.ProductCreateManyCategoryInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class ProductUncheckedCreateNestedManyWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateNestedManyWithoutCategoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutCategoryInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutCategoryInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.ProductCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i2.ProductCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductCategoryUncheckedCreateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateWithoutParentInput({
    this.id,
    required this.accountId,
    this.name,
    this.description,
    this.children,
    this.products,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryUncheckedCreateNestedManyWithoutParentInput?
      children;

  final _i2.ProductUncheckedCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'name': name,
        'description': description,
        'children': children,
        'products': products,
      };
}

class ProductCategoryCreateNestedManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateNestedManyWithoutParentInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutParentInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i2.ProductCategoryCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductCategoryCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateWithoutAccountInput({
    this.name,
    this.description,
    this.parent,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryCreateNestedOneWithoutChildrenInput? parent;

  final _i2.ProductCategoryCreateNestedManyWithoutParentInput? children;

  final _i2.ProductCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUncheckedCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateWithoutAccountInput({
    this.id,
    this.parentCategory,
    this.name,
    this.description,
    this.children,
    this.products,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? parentCategory;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryUncheckedCreateNestedManyWithoutParentInput?
      children;

  final _i2.ProductUncheckedCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'name': name,
        'description': description,
        'children': children,
        'products': products,
      };
}

class ProductCategoryCreateOrConnectWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateOrConnectWithoutAccountInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutAccountInput,
      _i2.ProductCategoryUncheckedCreateWithoutAccountInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCategoryCreateManyAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateManyAccountInput({
    this.id,
    this.parentCategory,
    this.name,
    this.description,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? parentCategory;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'name': name,
        'description': description,
      };
}

class ProductCategoryCreateManyAccountInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateManyAccountInputEnvelope({required this.data});

  final _i1.PrismaUnion<_i2.ProductCategoryCreateManyAccountInput,
      Iterable<_i2.ProductCategoryCreateManyAccountInput>> data;

  @override
  Map<String, dynamic> toJson() => {'data': data};
}

class ProductCategoryCreateNestedManyWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateNestedManyWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutAccountInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutAccountInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutAccountInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutAccountInput>>?
      connectOrCreate;

  final _i2.ProductCategoryCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class AccountCreateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateWithoutProductsInput({
    required this.name,
    required this.userName,
    this.description,
    this.categories,
  });

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryCreateNestedManyWithoutAccountInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
        'categories': categories,
      };
}

class ProductCategoryUncheckedCreateNestedManyWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateNestedManyWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutAccountInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutAccountInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutAccountInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutAccountInput>>?
      connectOrCreate;

  final _i2.ProductCategoryCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class AccountUncheckedCreateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedCreateWithoutProductsInput({
    this.id,
    required this.name,
    required this.userName,
    this.description,
    this.categories,
  });

  final int? id;

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryUncheckedCreateNestedManyWithoutAccountInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'categories': categories,
      };
}

class AccountCreateOrConnectWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateOrConnectWithoutProductsInput({
    required this.where,
    required this.create,
  });

  final _i2.AccountWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AccountCreateWithoutProductsInput,
      _i2.AccountUncheckedCreateWithoutProductsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AccountCreateNestedOneWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateNestedOneWithoutProductsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AccountCreateWithoutProductsInput,
      _i2.AccountUncheckedCreateWithoutProductsInput>? create;

  final _i2.AccountCreateOrConnectWithoutProductsInput? connectOrCreate;

  final _i2.AccountWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LoteCreateNestedManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateNestedManyWithoutProductInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.LoteCreateWithoutProductInput,
      _i1.PrismaUnion<
          Iterable<_i2.LoteCreateWithoutProductInput>,
          _i1.PrismaUnion<_i2.LoteUncheckedCreateWithoutProductInput,
              Iterable<_i2.LoteUncheckedCreateWithoutProductInput>>>>? create;

  final _i1.PrismaUnion<_i2.LoteCreateOrConnectWithoutProductInput,
      Iterable<_i2.LoteCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i2.LoteCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductCreateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateWithoutCategoryInput({
    this.description,
    required this.name,
    this.barcodeContent,
    required this.account,
    this.lotes,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.AccountCreateNestedOneWithoutProductsInput account;

  final _i2.LoteCreateNestedManyWithoutProductInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'lotes': lotes,
      };
}

class ProductCreateNestedManyWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateNestedManyWithoutCategoryInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutCategoryInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutCategoryInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.ProductCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i2.ProductCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProductCategoryCreateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateWithoutChildrenInput({
    this.name,
    this.description,
    required this.account,
    this.parent,
    this.products,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.AccountCreateNestedOneWithoutCategoriesInput account;

  final _i2.ProductCategoryCreateNestedOneWithoutChildrenInput? parent;

  final _i2.ProductCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'products': products,
      };
}

class ProductCategoryUncheckedCreateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateWithoutChildrenInput({
    this.id,
    this.parentCategory,
    required this.accountId,
    this.name,
    this.description,
    this.products,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? parentCategory;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductUncheckedCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'products': products,
      };
}

class ProductCategoryCreateOrConnectWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateOrConnectWithoutChildrenInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutChildrenInput,
      _i2.ProductCategoryUncheckedCreateWithoutChildrenInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCategoryCreateNestedOneWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateNestedOneWithoutChildrenInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutChildrenInput,
      _i2.ProductCategoryUncheckedCreateWithoutChildrenInput>? create;

  final _i2.ProductCategoryCreateOrConnectWithoutChildrenInput? connectOrCreate;

  final _i2.ProductCategoryWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProductCategoryCreateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateWithoutProductsInput({
    this.name,
    this.description,
    required this.account,
    this.parent,
    this.children,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.AccountCreateNestedOneWithoutCategoriesInput account;

  final _i2.ProductCategoryCreateNestedOneWithoutChildrenInput? parent;

  final _i2.ProductCategoryCreateNestedManyWithoutParentInput? children;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
      };
}

class ProductCategoryUncheckedCreateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateWithoutProductsInput({
    this.id,
    this.parentCategory,
    required this.accountId,
    this.name,
    this.description,
    this.children,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? parentCategory;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryUncheckedCreateNestedManyWithoutParentInput?
      children;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'children': children,
      };
}

class ProductCategoryCreateOrConnectWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateOrConnectWithoutProductsInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutProductsInput,
      _i2.ProductCategoryUncheckedCreateWithoutProductsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCategoryCreateNestedOneWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateNestedOneWithoutProductsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutProductsInput,
      _i2.ProductCategoryUncheckedCreateWithoutProductsInput>? create;

  final _i2.ProductCategoryCreateOrConnectWithoutProductsInput? connectOrCreate;

  final _i2.ProductCategoryWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProductCreateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateWithoutAccountInput({
    this.description,
    required this.name,
    this.barcodeContent,
    this.category,
    this.lotes,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.ProductCategoryCreateNestedOneWithoutProductsInput? category;

  final _i2.LoteCreateNestedManyWithoutProductInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'category': category,
        'lotes': lotes,
      };
}

class ProductCreateNestedManyWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateNestedManyWithoutAccountInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutAccountInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutAccountInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutAccountInput,
      Iterable<_i2.ProductCreateOrConnectWithoutAccountInput>>? connectOrCreate;

  final _i2.ProductCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class AccountCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateInput({
    required this.name,
    required this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCreateNestedManyWithoutAccountInput? products;

  final _i2.ProductCategoryCreateNestedManyWithoutAccountInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class AccountUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedCreateInput({
    this.id,
    required this.name,
    required this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final int? id;

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductUncheckedCreateNestedManyWithoutAccountInput? products;

  final _i2.ProductCategoryUncheckedCreateNestedManyWithoutAccountInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class AccountCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCreateManyInput({
    this.id,
    required this.name,
    required this.userName,
    this.description,
  });

  final int? id;

  final String name;

  final String userName;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class CreateManyAccountAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyAccountAndReturnOutputTypeSelect({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final bool? id;

  final bool? name;

  final bool? userName;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
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

class AccountUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateWithoutCategoriesInput({
    this.name,
    this.userName,
    this.description,
    this.products,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductUpdateManyWithoutAccountNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
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

class NullableIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? set;

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

class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableFloatFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableFloatFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<double, _i1.PrismaNull>? set;

  final double? increment;

  final double? decrement;

  final double? multiply;

  final double? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class LoteUpdatesUpdateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpdateWithoutLoteInput({
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUncheckedUpdateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedUpdateWithoutLoteInput({
    this.id,
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUpsertWithWhereUniqueWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpsertWithWhereUniqueWithoutLoteInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.LoteUpdatesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateWithoutLoteInput,
      _i2.LoteUpdatesUncheckedUpdateWithoutLoteInput> update;

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateWithoutLoteInput,
      _i2.LoteUpdatesUncheckedCreateWithoutLoteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class LoteUpdatesUpdateWithWhereUniqueWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpdateWithWhereUniqueWithoutLoteInput({
    required this.where,
    required this.data,
  });

  final _i2.LoteUpdatesWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateWithoutLoteInput,
      _i2.LoteUpdatesUncheckedUpdateWithoutLoteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LoteUpdatesScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<_i2.LoteUpdatesScalarWhereInput,
      Iterable<_i2.LoteUpdatesScalarWhereInput>>? AND;

  final Iterable<_i2.LoteUpdatesScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LoteUpdatesScalarWhereInput,
      Iterable<_i2.LoteUpdatesScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? stockId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? updateTime;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpdateManyMutationInput({
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUncheckedUpdateManyWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedUpdateManyWithoutLoteInput({
    this.id,
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUpdateManyWithWhereWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpdateManyWithWhereWithoutLoteInput({
    required this.where,
    required this.data,
  });

  final _i2.LoteUpdatesScalarWhereInput where;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateManyMutationInput,
      _i2.LoteUpdatesUncheckedUpdateManyWithoutLoteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LoteUpdatesUpdateManyWithoutLoteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpdateManyWithoutLoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.LoteUpdatesCreateWithoutLoteInput,
          _i1.PrismaUnion<
              Iterable<_i2.LoteUpdatesCreateWithoutLoteInput>,
              _i1.PrismaUnion<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput,
                  Iterable<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput,
          Iterable<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpsertWithWhereUniqueWithoutLoteInput,
      Iterable<_i2.LoteUpdatesUpsertWithWhereUniqueWithoutLoteInput>>? upsert;

  final _i2.LoteUpdatesCreateManyLoteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateWithWhereUniqueWithoutLoteInput,
      Iterable<_i2.LoteUpdatesUpdateWithWhereUniqueWithoutLoteInput>>? update;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateManyWithWhereWithoutLoteInput,
      Iterable<_i2.LoteUpdatesUpdateManyWithWhereWithoutLoteInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LoteUpdatesScalarWhereInput,
      Iterable<_i2.LoteUpdatesScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ShoppingListUpdateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUpdateWithoutLoteInput({this.count});

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? count;

  @override
  Map<String, dynamic> toJson() => {'count': count};
}

class ShoppingListUncheckedUpdateWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedUpdateWithoutLoteInput({this.count});

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? count;

  @override
  Map<String, dynamic> toJson() => {'count': count};
}

class ShoppingListUpsertWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUpsertWithoutLoteInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ShoppingListUpdateWithoutLoteInput,
      _i2.ShoppingListUncheckedUpdateWithoutLoteInput> update;

  final _i1.PrismaUnion<_i2.ShoppingListCreateWithoutLoteInput,
      _i2.ShoppingListUncheckedCreateWithoutLoteInput> create;

  final _i2.ShoppingListWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ShoppingListUpdateToOneWithWhereWithoutLoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUpdateToOneWithWhereWithoutLoteInput({
    this.where,
    required this.data,
  });

  final _i2.ShoppingListWhereInput? where;

  final _i1.PrismaUnion<_i2.ShoppingListUpdateWithoutLoteInput,
      _i2.ShoppingListUncheckedUpdateWithoutLoteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ShoppingListUpdateOneWithoutLoteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUpdateOneWithoutLoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ShoppingListCreateWithoutLoteInput,
      _i2.ShoppingListUncheckedCreateWithoutLoteInput>? create;

  final _i2.ShoppingListCreateOrConnectWithoutLoteInput? connectOrCreate;

  final _i2.ShoppingListUpsertWithoutLoteInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ShoppingListWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ShoppingListWhereInput>? delete;

  final _i2.ShoppingListWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ShoppingListUpdateToOneWithWhereWithoutLoteInput,
      _i1.PrismaUnion<_i2.ShoppingListUpdateWithoutLoteInput,
          _i2.ShoppingListUncheckedUpdateWithoutLoteInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class LoteUpdateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateWithoutProductInput({
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
    this.shoppingList,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.LoteUpdatesUpdateManyWithoutLoteNestedInput? loteUpdates;

  final _i2.ShoppingListUpdateOneWithoutLoteNestedInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUpdatesUncheckedUpdateManyWithoutLoteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedUpdateManyWithoutLoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.LoteUpdatesCreateWithoutLoteInput,
          _i1.PrismaUnion<
              Iterable<_i2.LoteUpdatesCreateWithoutLoteInput>,
              _i1.PrismaUnion<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput,
                  Iterable<_i2.LoteUpdatesUncheckedCreateWithoutLoteInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput,
          Iterable<_i2.LoteUpdatesCreateOrConnectWithoutLoteInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpsertWithWhereUniqueWithoutLoteInput,
      Iterable<_i2.LoteUpdatesUpsertWithWhereUniqueWithoutLoteInput>>? upsert;

  final _i2.LoteUpdatesCreateManyLoteInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LoteUpdatesWhereUniqueInput,
      Iterable<_i2.LoteUpdatesWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateWithWhereUniqueWithoutLoteInput,
      Iterable<_i2.LoteUpdatesUpdateWithWhereUniqueWithoutLoteInput>>? update;

  final _i1.PrismaUnion<_i2.LoteUpdatesUpdateManyWithWhereWithoutLoteInput,
      Iterable<_i2.LoteUpdatesUpdateManyWithWhereWithoutLoteInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LoteUpdatesScalarWhereInput,
      Iterable<_i2.LoteUpdatesScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ShoppingListUncheckedUpdateOneWithoutLoteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedUpdateOneWithoutLoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ShoppingListCreateWithoutLoteInput,
      _i2.ShoppingListUncheckedCreateWithoutLoteInput>? create;

  final _i2.ShoppingListCreateOrConnectWithoutLoteInput? connectOrCreate;

  final _i2.ShoppingListUpsertWithoutLoteInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ShoppingListWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ShoppingListWhereInput>? delete;

  final _i2.ShoppingListWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ShoppingListUpdateToOneWithWhereWithoutLoteInput,
      _i1.PrismaUnion<_i2.ShoppingListUpdateWithoutLoteInput,
          _i2.ShoppingListUncheckedUpdateWithoutLoteInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class LoteUncheckedUpdateWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateWithoutProductInput({
    this.id,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
    this.shoppingList,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.LoteUpdatesUncheckedUpdateManyWithoutLoteNestedInput? loteUpdates;

  final _i2.ShoppingListUncheckedUpdateOneWithoutLoteNestedInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUpsertWithWhereUniqueWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpsertWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.LoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteUpdateWithoutProductInput,
      _i2.LoteUncheckedUpdateWithoutProductInput> update;

  final _i1.PrismaUnion<_i2.LoteCreateWithoutProductInput,
      _i2.LoteUncheckedCreateWithoutProductInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class LoteUpdateWithWhereUniqueWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateWithWhereUniqueWithoutProductInput({
    required this.where,
    required this.data,
  });

  final _i2.LoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteUpdateWithoutProductInput,
      _i2.LoteUncheckedUpdateWithoutProductInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LoteScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i1.PrismaUnion<_i2.LoteScalarWhereInput,
      Iterable<_i2.LoteScalarWhereInput>>? AND;

  final Iterable<_i2.LoteScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LoteScalarWhereInput,
      Iterable<_i2.LoteScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? productId;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityMinimum;

  final _i1.PrismaUnion<_i2.IntFilter, int>? quantityCurrent;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? creationDate;

  final _i1.PrismaUnion<_i2.FloatNullableFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateManyMutationInput({
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteUncheckedUpdateManyWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateManyWithoutProductInput({
    this.id,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteUpdateManyWithWhereWithoutProductInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateManyWithWhereWithoutProductInput({
    required this.where,
    required this.data,
  });

  final _i2.LoteScalarWhereInput where;

  final _i1.PrismaUnion<_i2.LoteUpdateManyMutationInput,
      _i2.LoteUncheckedUpdateManyWithoutProductInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LoteUncheckedUpdateManyWithoutProductNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.LoteCreateWithoutProductInput,
      _i1.PrismaUnion<
          Iterable<_i2.LoteCreateWithoutProductInput>,
          _i1.PrismaUnion<_i2.LoteUncheckedCreateWithoutProductInput,
              Iterable<_i2.LoteUncheckedCreateWithoutProductInput>>>>? create;

  final _i1.PrismaUnion<_i2.LoteCreateOrConnectWithoutProductInput,
      Iterable<_i2.LoteCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.LoteUpsertWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LoteUpsertWithWhereUniqueWithoutProductInput>>? upsert;

  final _i2.LoteCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LoteUpdateWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LoteUpdateWithWhereUniqueWithoutProductInput>>? update;

  final _i1.PrismaUnion<_i2.LoteUpdateManyWithWhereWithoutProductInput,
      Iterable<_i2.LoteUpdateManyWithWhereWithoutProductInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LoteScalarWhereInput,
      Iterable<_i2.LoteScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUncheckedUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateWithoutAccountInput({
    this.id,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.lotes,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productCategoryId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.LoteUncheckedUpdateManyWithoutProductNestedInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'lotes': lotes,
      };
}

class ProductUpdateWithWhereUniqueWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithWhereUniqueWithoutAccountInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutAccountInput,
      _i2.ProductUncheckedUpdateWithoutAccountInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<_i2.ProductScalarWhereInput,
      Iterable<_i2.ProductScalarWhereInput>>? AND;

  final Iterable<_i2.ProductScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductScalarWhereInput,
      Iterable<_i2.ProductScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      productCategoryId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateManyMutationInput({
    this.description,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductUncheckedUpdateManyWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateManyWithoutAccountInput({
    this.id,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productCategoryId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductUpdateManyWithWhereWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateManyWithWhereWithoutAccountInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProductUpdateManyMutationInput,
      _i2.ProductUncheckedUpdateManyWithoutAccountInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductUncheckedUpdateManyWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateManyWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutAccountInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutAccountInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutAccountInput,
      Iterable<_i2.ProductCreateOrConnectWithoutAccountInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.ProductUpsertWithWhereUniqueWithoutAccountInput,
      Iterable<_i2.ProductUpsertWithWhereUniqueWithoutAccountInput>>? upsert;

  final _i2.ProductCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ProductUpdateWithWhereUniqueWithoutAccountInput,
      Iterable<_i2.ProductUpdateWithWhereUniqueWithoutAccountInput>>? update;

  final _i1.PrismaUnion<_i2.ProductUpdateManyWithWhereWithoutAccountInput,
      Iterable<_i2.ProductUpdateManyWithWhereWithoutAccountInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ProductScalarWhereInput,
      Iterable<_i2.ProductScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class AccountUncheckedUpdateWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedUpdateWithoutCategoriesInput({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.products,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductUncheckedUpdateManyWithoutAccountNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
      };
}

class AccountUpsertWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpsertWithoutCategoriesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AccountUpdateWithoutCategoriesInput,
      _i2.AccountUncheckedUpdateWithoutCategoriesInput> update;

  final _i1.PrismaUnion<_i2.AccountCreateWithoutCategoriesInput,
      _i2.AccountUncheckedCreateWithoutCategoriesInput> create;

  final _i2.AccountWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AccountUpdateToOneWithWhereWithoutCategoriesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateToOneWithWhereWithoutCategoriesInput({
    this.where,
    required this.data,
  });

  final _i2.AccountWhereInput? where;

  final _i1.PrismaUnion<_i2.AccountUpdateWithoutCategoriesInput,
      _i2.AccountUncheckedUpdateWithoutCategoriesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AccountUpdateOneRequiredWithoutCategoriesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateOneRequiredWithoutCategoriesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AccountCreateWithoutCategoriesInput,
      _i2.AccountUncheckedCreateWithoutCategoriesInput>? create;

  final _i2.AccountCreateOrConnectWithoutCategoriesInput? connectOrCreate;

  final _i2.AccountUpsertWithoutCategoriesInput? upsert;

  final _i2.AccountWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AccountUpdateToOneWithWhereWithoutCategoriesInput,
      _i1.PrismaUnion<_i2.AccountUpdateWithoutCategoriesInput,
          _i2.AccountUncheckedUpdateWithoutCategoriesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProductCategoryUpdateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateWithoutParentInput({
    this.name,
    this.description,
    this.account,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.AccountUpdateOneRequiredWithoutCategoriesNestedInput? account;

  final _i2.ProductCategoryUpdateManyWithoutParentNestedInput? children;

  final _i2.ProductUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUpdateWithWhereUniqueWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateWithWhereUniqueWithoutParentInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutParentInput,
      _i2.ProductCategoryUncheckedUpdateWithoutParentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductCategoryScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereInput,
      Iterable<_i2.ProductCategoryScalarWhereInput>>? AND;

  final Iterable<_i2.ProductCategoryScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereInput,
      Iterable<_i2.ProductCategoryScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntFilter, int>? id;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      parentCategory;

  final _i1.PrismaUnion<_i2.IntFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateManyMutationInput({
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
      };
}

class ProductCategoryUncheckedUpdateManyWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateManyWithoutParentInput({
    this.id,
    this.accountId,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryUpdateManyWithWhereWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateManyWithWhereWithoutParentInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductCategoryScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateManyMutationInput,
      _i2.ProductCategoryUncheckedUpdateManyWithoutParentInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductCategoryUncheckedUpdateManyWithoutParentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateManyWithoutParentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutParentInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpsertWithWhereUniqueWithoutParentInput,
          Iterable<_i2.ProductCategoryUpsertWithWhereUniqueWithoutParentInput>>?
      upsert;

  final _i2.ProductCategoryCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpdateWithWhereUniqueWithoutParentInput,
          Iterable<_i2.ProductCategoryUpdateWithWhereUniqueWithoutParentInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpdateManyWithWhereWithoutParentInput,
          Iterable<_i2.ProductCategoryUpdateManyWithWhereWithoutParentInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereInput,
      Iterable<_i2.ProductCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUncheckedUpdateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateWithoutCategoryInput({
    this.id,
    this.accountId,
    this.description,
    this.name,
    this.barcodeContent,
    this.lotes,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.LoteUncheckedUpdateManyWithoutProductNestedInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'lotes': lotes,
      };
}

class ProductUpdateWithWhereUniqueWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithWhereUniqueWithoutCategoryInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutCategoryInput,
      _i2.ProductUncheckedUpdateWithoutCategoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductUncheckedUpdateManyWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateManyWithoutCategoryInput({
    this.id,
    this.accountId,
    this.description,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductUpdateManyWithWhereWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateManyWithWhereWithoutCategoryInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProductUpdateManyMutationInput,
      _i2.ProductUncheckedUpdateManyWithoutCategoryInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductUncheckedUpdateManyWithoutCategoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateManyWithoutCategoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutCategoryInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutCategoryInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.ProductCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.ProductUpsertWithWhereUniqueWithoutCategoryInput,
      Iterable<_i2.ProductUpsertWithWhereUniqueWithoutCategoryInput>>? upsert;

  final _i2.ProductCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ProductUpdateWithWhereUniqueWithoutCategoryInput,
      Iterable<_i2.ProductUpdateWithWhereUniqueWithoutCategoryInput>>? update;

  final _i1.PrismaUnion<_i2.ProductUpdateManyWithWhereWithoutCategoryInput,
      Iterable<_i2.ProductUpdateManyWithWhereWithoutCategoryInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ProductScalarWhereInput,
      Iterable<_i2.ProductScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductCategoryUncheckedUpdateWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateWithoutParentInput({
    this.id,
    this.accountId,
    this.name,
    this.description,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUncheckedUpdateManyWithoutParentNestedInput?
      children;

  final _i2.ProductUncheckedUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'name': name,
        'description': description,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUpsertWithWhereUniqueWithoutParentInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpsertWithWhereUniqueWithoutParentInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutParentInput,
      _i2.ProductCategoryUncheckedUpdateWithoutParentInput> update;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutParentInput,
      _i2.ProductCategoryUncheckedCreateWithoutParentInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProductCategoryUpdateManyWithoutParentNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateManyWithoutParentNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutParentInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutParentInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutParentInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutParentInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutParentInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutParentInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpsertWithWhereUniqueWithoutParentInput,
          Iterable<_i2.ProductCategoryUpsertWithWhereUniqueWithoutParentInput>>?
      upsert;

  final _i2.ProductCategoryCreateManyParentInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpdateWithWhereUniqueWithoutParentInput,
          Iterable<_i2.ProductCategoryUpdateWithWhereUniqueWithoutParentInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpdateManyWithWhereWithoutParentInput,
          Iterable<_i2.ProductCategoryUpdateManyWithWhereWithoutParentInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereInput,
      Iterable<_i2.ProductCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductCategoryUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateWithoutAccountInput({
    this.name,
    this.description,
    this.parent,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUpdateOneWithoutChildrenNestedInput? parent;

  final _i2.ProductCategoryUpdateManyWithoutParentNestedInput? children;

  final _i2.ProductUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUncheckedUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateWithoutAccountInput({
    this.id,
    this.parentCategory,
    this.name,
    this.description,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUncheckedUpdateManyWithoutParentNestedInput?
      children;

  final _i2.ProductUncheckedUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'name': name,
        'description': description,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUpsertWithWhereUniqueWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpsertWithWhereUniqueWithoutAccountInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutAccountInput,
      _i2.ProductCategoryUncheckedUpdateWithoutAccountInput> update;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutAccountInput,
      _i2.ProductCategoryUncheckedCreateWithoutAccountInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProductCategoryUpdateWithWhereUniqueWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateWithWhereUniqueWithoutAccountInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductCategoryWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutAccountInput,
      _i2.ProductCategoryUncheckedUpdateWithoutAccountInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductCategoryUncheckedUpdateManyWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateManyWithoutAccountInput({
    this.id,
    this.parentCategory,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'name': name,
        'description': description,
      };
}

class ProductCategoryUpdateManyWithWhereWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateManyWithWhereWithoutAccountInput({
    required this.where,
    required this.data,
  });

  final _i2.ProductCategoryScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateManyMutationInput,
      _i2.ProductCategoryUncheckedUpdateManyWithoutAccountInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductCategoryUpdateManyWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateManyWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutAccountInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutAccountInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutAccountInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutAccountInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
      _i2.ProductCategoryUpsertWithWhereUniqueWithoutAccountInput,
      Iterable<
          _i2.ProductCategoryUpsertWithWhereUniqueWithoutAccountInput>>? upsert;

  final _i2.ProductCategoryCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
      _i2.ProductCategoryUpdateWithWhereUniqueWithoutAccountInput,
      Iterable<
          _i2.ProductCategoryUpdateWithWhereUniqueWithoutAccountInput>>? update;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpdateManyWithWhereWithoutAccountInput,
          Iterable<_i2.ProductCategoryUpdateManyWithWhereWithoutAccountInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereInput,
      Iterable<_i2.ProductCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class AccountUpdateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateWithoutProductsInput({
    this.name,
    this.userName,
    this.description,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUpdateManyWithoutAccountNestedInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
        'categories': categories,
      };
}

class ProductCategoryUncheckedUpdateManyWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateManyWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCategoryCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCategoryCreateWithoutAccountInput>,
              _i1.PrismaUnion<
                  _i2.ProductCategoryUncheckedCreateWithoutAccountInput,
                  Iterable<
                      _i2.ProductCategoryUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateOrConnectWithoutAccountInput,
          Iterable<_i2.ProductCategoryCreateOrConnectWithoutAccountInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
      _i2.ProductCategoryUpsertWithWhereUniqueWithoutAccountInput,
      Iterable<
          _i2.ProductCategoryUpsertWithWhereUniqueWithoutAccountInput>>? upsert;

  final _i2.ProductCategoryCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductCategoryWhereUniqueInput,
      Iterable<_i2.ProductCategoryWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
      _i2.ProductCategoryUpdateWithWhereUniqueWithoutAccountInput,
      Iterable<
          _i2.ProductCategoryUpdateWithWhereUniqueWithoutAccountInput>>? update;

  final _i1.PrismaUnion<
          _i2.ProductCategoryUpdateManyWithWhereWithoutAccountInput,
          Iterable<_i2.ProductCategoryUpdateManyWithWhereWithoutAccountInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereInput,
      Iterable<_i2.ProductCategoryScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class AccountUncheckedUpdateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedUpdateWithoutProductsInput({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.categories,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUncheckedUpdateManyWithoutAccountNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'categories': categories,
      };
}

class AccountUpsertWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpsertWithoutProductsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AccountUpdateWithoutProductsInput,
      _i2.AccountUncheckedUpdateWithoutProductsInput> update;

  final _i1.PrismaUnion<_i2.AccountCreateWithoutProductsInput,
      _i2.AccountUncheckedCreateWithoutProductsInput> create;

  final _i2.AccountWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AccountUpdateToOneWithWhereWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateToOneWithWhereWithoutProductsInput({
    this.where,
    required this.data,
  });

  final _i2.AccountWhereInput? where;

  final _i1.PrismaUnion<_i2.AccountUpdateWithoutProductsInput,
      _i2.AccountUncheckedUpdateWithoutProductsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AccountUpdateOneRequiredWithoutProductsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateOneRequiredWithoutProductsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AccountCreateWithoutProductsInput,
      _i2.AccountUncheckedCreateWithoutProductsInput>? create;

  final _i2.AccountCreateOrConnectWithoutProductsInput? connectOrCreate;

  final _i2.AccountUpsertWithoutProductsInput? upsert;

  final _i2.AccountWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AccountUpdateToOneWithWhereWithoutProductsInput,
      _i1.PrismaUnion<_i2.AccountUpdateWithoutProductsInput,
          _i2.AccountUncheckedUpdateWithoutProductsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class LoteUpdateManyWithoutProductNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateManyWithoutProductNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.LoteCreateWithoutProductInput,
      _i1.PrismaUnion<
          Iterable<_i2.LoteCreateWithoutProductInput>,
          _i1.PrismaUnion<_i2.LoteUncheckedCreateWithoutProductInput,
              Iterable<_i2.LoteUncheckedCreateWithoutProductInput>>>>? create;

  final _i1.PrismaUnion<_i2.LoteCreateOrConnectWithoutProductInput,
      Iterable<_i2.LoteCreateOrConnectWithoutProductInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.LoteUpsertWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LoteUpsertWithWhereUniqueWithoutProductInput>>? upsert;

  final _i2.LoteCreateManyProductInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.LoteWhereUniqueInput,
      Iterable<_i2.LoteWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.LoteUpdateWithWhereUniqueWithoutProductInput,
      Iterable<_i2.LoteUpdateWithWhereUniqueWithoutProductInput>>? update;

  final _i1.PrismaUnion<_i2.LoteUpdateManyWithWhereWithoutProductInput,
      Iterable<_i2.LoteUpdateManyWithWhereWithoutProductInput>>? updateMany;

  final _i1.PrismaUnion<_i2.LoteScalarWhereInput,
      Iterable<_i2.LoteScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductUpdateWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithoutCategoryInput({
    this.description,
    this.name,
    this.barcodeContent,
    this.account,
    this.lotes,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.AccountUpdateOneRequiredWithoutProductsNestedInput? account;

  final _i2.LoteUpdateManyWithoutProductNestedInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'lotes': lotes,
      };
}

class ProductUpsertWithWhereUniqueWithoutCategoryInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpsertWithWhereUniqueWithoutCategoryInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutCategoryInput,
      _i2.ProductUncheckedUpdateWithoutCategoryInput> update;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutCategoryInput,
      _i2.ProductUncheckedCreateWithoutCategoryInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProductUpdateManyWithoutCategoryNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateManyWithoutCategoryNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutCategoryInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutCategoryInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutCategoryInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutCategoryInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutCategoryInput,
          Iterable<_i2.ProductCreateOrConnectWithoutCategoryInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.ProductUpsertWithWhereUniqueWithoutCategoryInput,
      Iterable<_i2.ProductUpsertWithWhereUniqueWithoutCategoryInput>>? upsert;

  final _i2.ProductCreateManyCategoryInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ProductUpdateWithWhereUniqueWithoutCategoryInput,
      Iterable<_i2.ProductUpdateWithWhereUniqueWithoutCategoryInput>>? update;

  final _i1.PrismaUnion<_i2.ProductUpdateManyWithWhereWithoutCategoryInput,
      Iterable<_i2.ProductUpdateManyWithWhereWithoutCategoryInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ProductScalarWhereInput,
      Iterable<_i2.ProductScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProductCategoryUpdateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateWithoutChildrenInput({
    this.name,
    this.description,
    this.account,
    this.parent,
    this.products,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.AccountUpdateOneRequiredWithoutCategoriesNestedInput? account;

  final _i2.ProductCategoryUpdateOneWithoutChildrenNestedInput? parent;

  final _i2.ProductUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'products': products,
      };
}

class ProductCategoryUncheckedUpdateWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateWithoutChildrenInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.products,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductUncheckedUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'products': products,
      };
}

class ProductCategoryUpsertWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpsertWithoutChildrenInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutChildrenInput,
      _i2.ProductCategoryUncheckedUpdateWithoutChildrenInput> update;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutChildrenInput,
      _i2.ProductCategoryUncheckedCreateWithoutChildrenInput> create;

  final _i2.ProductCategoryWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProductCategoryUpdateToOneWithWhereWithoutChildrenInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateToOneWithWhereWithoutChildrenInput({
    this.where,
    required this.data,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutChildrenInput,
      _i2.ProductCategoryUncheckedUpdateWithoutChildrenInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductCategoryUpdateOneWithoutChildrenNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateOneWithoutChildrenNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutChildrenInput,
      _i2.ProductCategoryUncheckedCreateWithoutChildrenInput>? create;

  final _i2.ProductCategoryCreateOrConnectWithoutChildrenInput? connectOrCreate;

  final _i2.ProductCategoryUpsertWithoutChildrenInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryWhereInput>? delete;

  final _i2.ProductCategoryWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProductCategoryUpdateToOneWithWhereWithoutChildrenInput,
      _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutChildrenInput,
          _i2.ProductCategoryUncheckedUpdateWithoutChildrenInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ProductCategoryUpdateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateWithoutProductsInput({
    this.name,
    this.description,
    this.account,
    this.parent,
    this.children,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.AccountUpdateOneRequiredWithoutCategoriesNestedInput? account;

  final _i2.ProductCategoryUpdateOneWithoutChildrenNestedInput? parent;

  final _i2.ProductCategoryUpdateManyWithoutParentNestedInput? children;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
      };
}

class ProductCategoryUncheckedUpdateWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateWithoutProductsInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.children,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUncheckedUpdateManyWithoutParentNestedInput?
      children;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'children': children,
      };
}

class ProductCategoryUpsertWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpsertWithoutProductsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutProductsInput,
      _i2.ProductCategoryUncheckedUpdateWithoutProductsInput> update;

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutProductsInput,
      _i2.ProductCategoryUncheckedCreateWithoutProductsInput> create;

  final _i2.ProductCategoryWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProductCategoryUpdateToOneWithWhereWithoutProductsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateToOneWithWhereWithoutProductsInput({
    this.where,
    required this.data,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutProductsInput,
      _i2.ProductCategoryUncheckedUpdateWithoutProductsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductCategoryUpdateOneWithoutProductsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateOneWithoutProductsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryCreateWithoutProductsInput,
      _i2.ProductCategoryUncheckedCreateWithoutProductsInput>? create;

  final _i2.ProductCategoryCreateOrConnectWithoutProductsInput? connectOrCreate;

  final _i2.ProductCategoryUpsertWithoutProductsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryWhereInput>? delete;

  final _i2.ProductCategoryWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProductCategoryUpdateToOneWithWhereWithoutProductsInput,
      _i1.PrismaUnion<_i2.ProductCategoryUpdateWithoutProductsInput,
          _i2.ProductCategoryUncheckedUpdateWithoutProductsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class ProductUpdateWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithoutAccountInput({
    this.description,
    this.name,
    this.barcodeContent,
    this.category,
    this.lotes,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.ProductCategoryUpdateOneWithoutProductsNestedInput? category;

  final _i2.LoteUpdateManyWithoutProductNestedInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'category': category,
        'lotes': lotes,
      };
}

class ProductUpsertWithWhereUniqueWithoutAccountInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpsertWithWhereUniqueWithoutAccountInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutAccountInput,
      _i2.ProductUncheckedUpdateWithoutAccountInput> update;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutAccountInput,
      _i2.ProductUncheckedCreateWithoutAccountInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProductUpdateManyWithoutAccountNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateManyWithoutAccountNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProductCreateWithoutAccountInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProductCreateWithoutAccountInput>,
              _i1.PrismaUnion<_i2.ProductUncheckedCreateWithoutAccountInput,
                  Iterable<_i2.ProductUncheckedCreateWithoutAccountInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProductCreateOrConnectWithoutAccountInput,
      Iterable<_i2.ProductCreateOrConnectWithoutAccountInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.ProductUpsertWithWhereUniqueWithoutAccountInput,
      Iterable<_i2.ProductUpsertWithWhereUniqueWithoutAccountInput>>? upsert;

  final _i2.ProductCreateManyAccountInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProductWhereUniqueInput,
      Iterable<_i2.ProductWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.ProductUpdateWithWhereUniqueWithoutAccountInput,
      Iterable<_i2.ProductUpdateWithWhereUniqueWithoutAccountInput>>? update;

  final _i1.PrismaUnion<_i2.ProductUpdateManyWithWhereWithoutAccountInput,
      Iterable<_i2.ProductUpdateManyWithWhereWithoutAccountInput>>? updateMany;

  final _i1.PrismaUnion<_i2.ProductScalarWhereInput,
      Iterable<_i2.ProductScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class AccountUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateInput({
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductUpdateManyWithoutAccountNestedInput? products;

  final _i2.ProductCategoryUpdateManyWithoutAccountNestedInput? categories;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class AccountUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedUpdateInput({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductUncheckedUpdateManyWithoutAccountNestedInput? products;

  final _i2.ProductCategoryUncheckedUpdateManyWithoutAccountNestedInput?
      categories;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products,
        'categories': categories,
      };
}

class AccountUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUpdateManyMutationInput({
    this.name,
    this.userName,
    this.description,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userName;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountCountAggregateOutputType {
  const AccountCountAggregateOutputType({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.$all,
  });

  factory AccountCountAggregateOutputType.fromJson(Map json) =>
      AccountCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        userName: json['user_name'],
        description: json['description'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? userName;

  final int? description;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        '_all': $all,
      };
}

class AccountAvgAggregateOutputType {
  const AccountAvgAggregateOutputType({this.id});

  factory AccountAvgAggregateOutputType.fromJson(Map json) =>
      AccountAvgAggregateOutputType(id: json['id']);

  final double? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class AccountSumAggregateOutputType {
  const AccountSumAggregateOutputType({this.id});

  factory AccountSumAggregateOutputType.fromJson(Map json) =>
      AccountSumAggregateOutputType(id: json['id']);

  final int? id;

  Map<String, dynamic> toJson() => {'id': id};
}

class AccountMinAggregateOutputType {
  const AccountMinAggregateOutputType({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  factory AccountMinAggregateOutputType.fromJson(Map json) =>
      AccountMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
        userName: json['user_name'],
        description: json['description'],
      );

  final int? id;

  final String? name;

  final String? userName;

  final String? description;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountMaxAggregateOutputType {
  const AccountMaxAggregateOutputType({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  factory AccountMaxAggregateOutputType.fromJson(Map json) =>
      AccountMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
        userName: json['user_name'],
        description: json['description'],
      );

  final int? id;

  final String? name;

  final String? userName;

  final String? description;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountGroupByOutputType {
  const AccountGroupByOutputType({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AccountGroupByOutputType.fromJson(Map json) =>
      AccountGroupByOutputType(
        id: json['id'],
        name: json['name'],
        userName: json['user_name'],
        description: json['description'],
        $count: json['_count'] is Map
            ? _i2.AccountCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.AccountAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.AccountSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AccountMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AccountMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final String? name;

  final String? userName;

  final String? description;

  final _i2.AccountCountAggregateOutputType? $count;

  final _i2.AccountAvgAggregateOutputType? $avg;

  final _i2.AccountSumAggregateOutputType? $sum;

  final _i2.AccountMinAggregateOutputType? $min;

  final _i2.AccountMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AccountCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCountOrderByAggregateInput({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? userName;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountAvgOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class AccountMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? userName;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountMinOrderByAggregateInput({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? userName;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountSumOrderByAggregateInput({this.id});

  final _i2.SortOrder? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class AccountOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountOrderByWithAggregationInput({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.SortOrder? userName;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.AccountCountOrderByAggregateInput? $count;

  final _i2.AccountAvgOrderByAggregateInput? $avg;

  final _i2.AccountMaxOrderByAggregateInput? $max;

  final _i2.AccountMinOrderByAggregateInput? $min;

  final _i2.AccountSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
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

class AccountScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final _i1.PrismaUnion<_i2.AccountScalarWhereWithAggregatesInput,
      Iterable<_i2.AccountScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AccountScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AccountScalarWhereWithAggregatesInput,
      Iterable<_i2.AccountScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userName;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? userName;

  final bool? description;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        '_all': $all,
      };
}

class AccountGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountGroupByOutputTypeCountArgs({this.select});

  final _i2.AccountCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AccountAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountAvgAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class AccountGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountGroupByOutputTypeAvgArgs({this.select});

  final _i2.AccountAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AccountSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountSumAggregateOutputTypeSelect({this.id});

  final bool? id;

  @override
  Map<String, dynamic> toJson() => {'id': id};
}

class AccountGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountGroupByOutputTypeSumArgs({this.select});

  final _i2.AccountSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AccountMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountMinAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final bool? id;

  final bool? name;

  final bool? userName;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountGroupByOutputTypeMinArgs({this.select});

  final _i2.AccountMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AccountMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  final bool? id;

  final bool? name;

  final bool? userName;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
      };
}

class AccountGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountGroupByOutputTypeMaxArgs({this.select});

  final _i2.AccountMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AccountGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AccountGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final bool? userName;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.AccountGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AccountGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AccountGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AccountGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AccountGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAccount {
  const AggregateAccount({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateAccount.fromJson(Map json) => AggregateAccount(
        $count: json['_count'] is Map
            ? _i2.AccountCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.AccountAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.AccountSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AccountMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AccountMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AccountCountAggregateOutputType? $count;

  final _i2.AccountAvgAggregateOutputType? $avg;

  final _i2.AccountSumAggregateOutputType? $sum;

  final _i2.AccountMinAggregateOutputType? $min;

  final _i2.AccountMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateAccountCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAccountCountArgs({this.select});

  final _i2.AccountCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAccountAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAccountAvgArgs({this.select});

  final _i2.AccountAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAccountSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAccountSumArgs({this.select});

  final _i2.AccountSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAccountMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAccountMinArgs({this.select});

  final _i2.AccountMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAccountMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAccountMaxArgs({this.select});

  final _i2.AccountMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAccountSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAccountSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAccountCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAccountAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateAccountSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateAccountMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAccountMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class ProductCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateInput({
    this.description,
    required this.name,
    this.barcodeContent,
    required this.account,
    this.category,
    this.lotes,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.AccountCreateNestedOneWithoutProductsInput account;

  final _i2.ProductCategoryCreateNestedOneWithoutProductsInput? category;

  final _i2.LoteCreateNestedManyWithoutProductInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
        'lotes': lotes,
      };
}

class ProductUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateInput({
    this.id,
    required this.accountId,
    this.description,
    this.productCategoryId,
    required this.name,
    this.barcodeContent,
    this.lotes,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? productCategoryId;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.LoteUncheckedCreateNestedManyWithoutProductInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'lotes': lotes,
      };
}

class ProductCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateManyInput({
    this.id,
    required this.accountId,
    this.description,
    this.productCategoryId,
    required this.name,
    this.barcodeContent,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? productCategoryId;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class CreateManyProductAndReturnOutputTypeAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductAndReturnOutputTypeAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AccountSelect? select;

  final _i2.AccountInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyProductAndReturnOutputTypeCategoryArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductAndReturnOutputTypeCategoryArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i2.ProductCategorySelect? select;

  final _i2.ProductCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class CreateManyProductAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductAndReturnOutputTypeSelect({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
  });

  final bool? id;

  final bool? accountId;

  final bool? description;

  final bool? productCategoryId;

  final bool? name;

  final bool? barcodeContent;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyProductAndReturnOutputTypeAccountArgs>?
      account;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyProductAndReturnOutputTypeCategoryArgs>?
      category;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
      };
}

class CreateManyProductAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductAndReturnOutputTypeInclude({
    this.account,
    this.category,
  });

  final _i1
      .PrismaUnion<bool, _i2.CreateManyProductAndReturnOutputTypeAccountArgs>?
      account;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyProductAndReturnOutputTypeCategoryArgs>?
      category;

  @override
  Map<String, dynamic> toJson() => {
        'account': account,
        'category': category,
      };
}

class ProductUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateInput({
    this.description,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
    this.lotes,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.AccountUpdateOneRequiredWithoutProductsNestedInput? account;

  final _i2.ProductCategoryUpdateOneWithoutProductsNestedInput? category;

  final _i2.LoteUpdateManyWithoutProductNestedInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
        'lotes': lotes,
      };
}

class ProductUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.lotes,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productCategoryId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.LoteUncheckedUpdateManyWithoutProductNestedInput? lotes;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'lotes': lotes,
      };
}

class ProductUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateManyInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productCategoryId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductCountAggregateOutputType {
  const ProductCountAggregateOutputType({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.$all,
  });

  factory ProductCountAggregateOutputType.fromJson(Map json) =>
      ProductCountAggregateOutputType(
        id: json['id'],
        accountId: json['account_id'],
        description: json['description'],
        productCategoryId: json['product_category_id'],
        name: json['name'],
        barcodeContent: json['barcode_content'],
        $all: json['_all'],
      );

  final int? id;

  final int? accountId;

  final int? description;

  final int? productCategoryId;

  final int? name;

  final int? barcodeContent;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        '_all': $all,
      };
}

class ProductAvgAggregateOutputType {
  const ProductAvgAggregateOutputType({
    this.id,
    this.accountId,
    this.productCategoryId,
  });

  factory ProductAvgAggregateOutputType.fromJson(Map json) =>
      ProductAvgAggregateOutputType(
        id: json['id'],
        accountId: json['account_id'],
        productCategoryId: json['product_category_id'],
      );

  final double? id;

  final double? accountId;

  final double? productCategoryId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'product_category_id': productCategoryId,
      };
}

class ProductSumAggregateOutputType {
  const ProductSumAggregateOutputType({
    this.id,
    this.accountId,
    this.productCategoryId,
  });

  factory ProductSumAggregateOutputType.fromJson(Map json) =>
      ProductSumAggregateOutputType(
        id: json['id'],
        accountId: json['account_id'],
        productCategoryId: json['product_category_id'],
      );

  final int? id;

  final int? accountId;

  final int? productCategoryId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'product_category_id': productCategoryId,
      };
}

class ProductMinAggregateOutputType {
  const ProductMinAggregateOutputType({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  factory ProductMinAggregateOutputType.fromJson(Map json) =>
      ProductMinAggregateOutputType(
        id: json['id'],
        accountId: json['account_id'],
        description: json['description'],
        productCategoryId: json['product_category_id'],
        name: json['name'],
        barcodeContent: json['barcode_content'],
      );

  final int? id;

  final int? accountId;

  final String? description;

  final int? productCategoryId;

  final String? name;

  final String? barcodeContent;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductMaxAggregateOutputType {
  const ProductMaxAggregateOutputType({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  factory ProductMaxAggregateOutputType.fromJson(Map json) =>
      ProductMaxAggregateOutputType(
        id: json['id'],
        accountId: json['account_id'],
        description: json['description'],
        productCategoryId: json['product_category_id'],
        name: json['name'],
        barcodeContent: json['barcode_content'],
      );

  final int? id;

  final int? accountId;

  final String? description;

  final int? productCategoryId;

  final String? name;

  final String? barcodeContent;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductGroupByOutputType {
  const ProductGroupByOutputType({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory ProductGroupByOutputType.fromJson(Map json) =>
      ProductGroupByOutputType(
        id: json['id'],
        accountId: json['account_id'],
        description: json['description'],
        productCategoryId: json['product_category_id'],
        name: json['name'],
        barcodeContent: json['barcode_content'],
        $count: json['_count'] is Map
            ? _i2.ProductCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ProductAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ProductSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProductMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProductMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? accountId;

  final String? description;

  final int? productCategoryId;

  final String? name;

  final String? barcodeContent;

  final _i2.ProductCountAggregateOutputType? $count;

  final _i2.ProductAvgAggregateOutputType? $avg;

  final _i2.ProductSumAggregateOutputType? $sum;

  final _i2.ProductMinAggregateOutputType? $min;

  final _i2.ProductMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ProductCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountOrderByAggregateInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? description;

  final _i2.SortOrder? productCategoryId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductAvgOrderByAggregateInput({
    this.id,
    this.accountId,
    this.productCategoryId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? productCategoryId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'product_category_id': productCategoryId,
      };
}

class ProductMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMaxOrderByAggregateInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? description;

  final _i2.SortOrder? productCategoryId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMinOrderByAggregateInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? description;

  final _i2.SortOrder? productCategoryId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductSumOrderByAggregateInput({
    this.id,
    this.accountId,
    this.productCategoryId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? productCategoryId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'product_category_id': productCategoryId,
      };
}

class ProductOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductOrderByWithAggregationInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? accountId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? productCategoryId;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? barcodeContent;

  final _i2.ProductCountOrderByAggregateInput? $count;

  final _i2.ProductAvgOrderByAggregateInput? $avg;

  final _i2.ProductMaxOrderByAggregateInput? $max;

  final _i2.ProductMinOrderByAggregateInput? $min;

  final _i2.ProductSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableWithAggregatesFilter({
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

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

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

class IntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableWithAggregatesFilter({
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

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

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

class ProductScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<_i2.ProductScalarWhereWithAggregatesInput,
      Iterable<_i2.ProductScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProductScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProductScalarWhereWithAggregatesInput,
      Iterable<_i2.ProductScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? productCategoryId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCountAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.$all,
  });

  final bool? id;

  final bool? accountId;

  final bool? description;

  final bool? productCategoryId;

  final bool? name;

  final bool? barcodeContent;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        '_all': $all,
      };
}

class ProductGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeCountArgs({this.select});

  final _i2.ProductCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductAvgAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.productCategoryId,
  });

  final bool? id;

  final bool? accountId;

  final bool? productCategoryId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'product_category_id': productCategoryId,
      };
}

class ProductGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeAvgArgs({this.select});

  final _i2.ProductAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductSumAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.productCategoryId,
  });

  final bool? id;

  final bool? accountId;

  final bool? productCategoryId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'product_category_id': productCategoryId,
      };
}

class ProductGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeSumArgs({this.select});

  final _i2.ProductSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMinAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final bool? id;

  final bool? accountId;

  final bool? description;

  final bool? productCategoryId;

  final bool? name;

  final bool? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeMinArgs({this.select});

  final _i2.ProductMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductMaxAggregateOutputTypeSelect({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final bool? id;

  final bool? accountId;

  final bool? description;

  final bool? productCategoryId;

  final bool? name;

  final bool? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProductMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductGroupByOutputTypeSelect({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? accountId;

  final bool? description;

  final bool? productCategoryId;

  final bool? name;

  final bool? barcodeContent;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ProductGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProduct {
  const AggregateProduct({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateProduct.fromJson(Map json) => AggregateProduct(
        $count: json['_count'] is Map
            ? _i2.ProductCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ProductAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ProductSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProductMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProductMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProductCountAggregateOutputType? $count;

  final _i2.ProductAvgAggregateOutputType? $avg;

  final _i2.ProductSumAggregateOutputType? $sum;

  final _i2.ProductMinAggregateOutputType? $min;

  final _i2.ProductMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateProductCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCountArgs({this.select});

  final _i2.ProductCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductAvgArgs({this.select});

  final _i2.ProductAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductSumArgs({this.select});

  final _i2.ProductSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductMinArgs({this.select});

  final _i2.ProductMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductMaxArgs({this.select});

  final _i2.ProductMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProductCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProductAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateProductSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateProductMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProductMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class ProductCategoryCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateInput({
    this.name,
    this.description,
    required this.account,
    this.parent,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.AccountCreateNestedOneWithoutCategoriesInput account;

  final _i2.ProductCategoryCreateNestedOneWithoutChildrenInput? parent;

  final _i2.ProductCategoryCreateNestedManyWithoutParentInput? children;

  final _i2.ProductCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedCreateInput({
    this.id,
    this.parentCategory,
    required this.accountId,
    this.name,
    this.description,
    this.children,
    this.products,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? parentCategory;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i2.ProductCategoryUncheckedCreateNestedManyWithoutParentInput?
      children;

  final _i2.ProductUncheckedCreateNestedManyWithoutCategoryInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'children': children,
        'products': products,
      };
}

class ProductCategoryCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCreateManyInput({
    this.id,
    this.parentCategory,
    required this.accountId,
    this.name,
    this.description,
  });

  final int? id;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? parentCategory;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class CreateManyProductCategoryAndReturnOutputTypeAccountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductCategoryAndReturnOutputTypeAccountArgs({
    this.select,
    this.include,
  });

  final _i2.AccountSelect? select;

  final _i2.AccountInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyProductCategoryAndReturnOutputTypeParentArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductCategoryAndReturnOutputTypeParentArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProductCategoryWhereInput? where;

  final _i2.ProductCategorySelect? select;

  final _i2.ProductCategoryInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class CreateManyProductCategoryAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductCategoryAndReturnOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.account,
    this.parent,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  final bool? name;

  final bool? description;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyProductCategoryAndReturnOutputTypeAccountArgs>? account;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyProductCategoryAndReturnOutputTypeParentArgs>? parent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
      };
}

class CreateManyProductCategoryAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyProductCategoryAndReturnOutputTypeInclude({
    this.account,
    this.parent,
  });

  final _i1.PrismaUnion<bool,
      _i2.CreateManyProductCategoryAndReturnOutputTypeAccountArgs>? account;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyProductCategoryAndReturnOutputTypeParentArgs>? parent;

  @override
  Map<String, dynamic> toJson() => {
        'account': account,
        'parent': parent,
      };
}

class ProductCategoryUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUpdateInput({
    this.name,
    this.description,
    this.account,
    this.parent,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.AccountUpdateOneRequiredWithoutCategoriesNestedInput? account;

  final _i2.ProductCategoryUpdateOneWithoutChildrenNestedInput? parent;

  final _i2.ProductCategoryUpdateManyWithoutParentNestedInput? children;

  final _i2.ProductUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'account': account,
        'parent': parent,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.children,
    this.products,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i2.ProductCategoryUncheckedUpdateManyWithoutParentNestedInput?
      children;

  final _i2.ProductUncheckedUpdateManyWithoutCategoryNestedInput? products;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'children': children,
        'products': products,
      };
}

class ProductCategoryUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryUncheckedUpdateManyInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryCountAggregateOutputType {
  const ProductCategoryCountAggregateOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.$all,
  });

  factory ProductCategoryCountAggregateOutputType.fromJson(Map json) =>
      ProductCategoryCountAggregateOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
        name: json['name'],
        description: json['description'],
        $all: json['_all'],
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  final int? name;

  final int? description;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        '_all': $all,
      };
}

class ProductCategoryAvgAggregateOutputType {
  const ProductCategoryAvgAggregateOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
  });

  factory ProductCategoryAvgAggregateOutputType.fromJson(Map json) =>
      ProductCategoryAvgAggregateOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
      );

  final double? id;

  final double? parentCategory;

  final double? accountId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
      };
}

class ProductCategorySumAggregateOutputType {
  const ProductCategorySumAggregateOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
  });

  factory ProductCategorySumAggregateOutputType.fromJson(Map json) =>
      ProductCategorySumAggregateOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
      };
}

class ProductCategoryMinAggregateOutputType {
  const ProductCategoryMinAggregateOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  factory ProductCategoryMinAggregateOutputType.fromJson(Map json) =>
      ProductCategoryMinAggregateOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
        name: json['name'],
        description: json['description'],
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  final String? name;

  final String? description;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryMaxAggregateOutputType {
  const ProductCategoryMaxAggregateOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  factory ProductCategoryMaxAggregateOutputType.fromJson(Map json) =>
      ProductCategoryMaxAggregateOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
        name: json['name'],
        description: json['description'],
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  final String? name;

  final String? description;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryGroupByOutputType {
  const ProductCategoryGroupByOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory ProductCategoryGroupByOutputType.fromJson(Map json) =>
      ProductCategoryGroupByOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
        name: json['name'],
        description: json['description'],
        $count: json['_count'] is Map
            ? _i2.ProductCategoryCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ProductCategoryAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ProductCategorySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProductCategoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProductCategoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  final String? name;

  final String? description;

  final _i2.ProductCategoryCountAggregateOutputType? $count;

  final _i2.ProductCategoryAvgAggregateOutputType? $avg;

  final _i2.ProductCategorySumAggregateOutputType? $sum;

  final _i2.ProductCategoryMinAggregateOutputType? $min;

  final _i2.ProductCategoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ProductCategoryCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCountOrderByAggregateInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentCategory;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryAvgOrderByAggregateInput({
    this.id,
    this.parentCategory,
    this.accountId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentCategory;

  final _i2.SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
      };
}

class ProductCategoryMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryMaxOrderByAggregateInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentCategory;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryMinOrderByAggregateInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentCategory;

  final _i2.SortOrder? accountId;

  final _i2.SortOrder? name;

  final _i2.SortOrder? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategorySumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategorySumOrderByAggregateInput({
    this.id,
    this.parentCategory,
    this.accountId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? parentCategory;

  final _i2.SortOrder? accountId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
      };
}

class ProductCategoryOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryOrderByWithAggregationInput({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? parentCategory;

  final _i2.SortOrder? accountId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? description;

  final _i2.ProductCategoryCountOrderByAggregateInput? $count;

  final _i2.ProductCategoryAvgOrderByAggregateInput? $avg;

  final _i2.ProductCategoryMaxOrderByAggregateInput? $max;

  final _i2.ProductCategoryMinOrderByAggregateInput? $min;

  final _i2.ProductCategorySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class ProductCategoryScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereWithAggregatesInput,
      Iterable<_i2.ProductCategoryScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProductCategoryScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProductCategoryScalarWhereWithAggregatesInput,
      Iterable<_i2.ProductCategoryScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? parentCategory;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? accountId;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? description;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryCountAggregateOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.$all,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  final bool? name;

  final bool? description;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        '_all': $all,
      };
}

class ProductCategoryGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryGroupByOutputTypeCountArgs({this.select});

  final _i2.ProductCategoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductCategoryAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryAvgAggregateOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
      };
}

class ProductCategoryGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryGroupByOutputTypeAvgArgs({this.select});

  final _i2.ProductCategoryAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductCategorySumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategorySumAggregateOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
      };
}

class ProductCategoryGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryGroupByOutputTypeSumArgs({this.select});

  final _i2.ProductCategorySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductCategoryMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryMinAggregateOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  final bool? name;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryGroupByOutputTypeMinArgs({this.select});

  final _i2.ProductCategoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductCategoryMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryMaxAggregateOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  final bool? name;

  final bool? description;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
      };
}

class ProductCategoryGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProductCategoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProductCategoryGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCategoryGroupByOutputTypeSelect({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? parentCategory;

  final bool? accountId;

  final bool? name;

  final bool? description;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryGroupByOutputTypeAvgArgs>?
      $avg;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryGroupByOutputTypeSumArgs>?
      $sum;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryGroupByOutputTypeMinArgs>?
      $min;

  final _i1.PrismaUnion<bool, _i2.ProductCategoryGroupByOutputTypeMaxArgs>?
      $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProductCategory {
  const AggregateProductCategory({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateProductCategory.fromJson(Map json) =>
      AggregateProductCategory(
        $count: json['_count'] is Map
            ? _i2.ProductCategoryCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ProductCategoryAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ProductCategorySumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProductCategoryMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProductCategoryMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProductCategoryCountAggregateOutputType? $count;

  final _i2.ProductCategoryAvgAggregateOutputType? $avg;

  final _i2.ProductCategorySumAggregateOutputType? $sum;

  final _i2.ProductCategoryMinAggregateOutputType? $min;

  final _i2.ProductCategoryMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateProductCategoryCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCategoryCountArgs({this.select});

  final _i2.ProductCategoryCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductCategoryAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCategoryAvgArgs({this.select});

  final _i2.ProductCategoryAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductCategorySumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCategorySumArgs({this.select});

  final _i2.ProductCategorySumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductCategoryMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCategoryMinArgs({this.select});

  final _i2.ProductCategoryMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductCategoryMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCategoryMaxArgs({this.select});

  final _i2.ProductCategoryMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProductCategorySelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProductCategorySelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProductCategoryCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProductCategoryAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateProductCategorySumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateProductCategoryMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProductCategoryMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class ProductCreateWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateWithoutLotesInput({
    this.description,
    required this.name,
    this.barcodeContent,
    required this.account,
    this.category,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  final _i2.AccountCreateNestedOneWithoutProductsInput account;

  final _i2.ProductCategoryCreateNestedOneWithoutProductsInput? category;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
      };
}

class ProductUncheckedCreateWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedCreateWithoutLotesInput({
    this.id,
    required this.accountId,
    this.description,
    this.productCategoryId,
    required this.name,
    this.barcodeContent,
  });

  final int? id;

  final int accountId;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? description;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? productCategoryId;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductCreateOrConnectWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateOrConnectWithoutLotesInput({
    required this.where,
    required this.create,
  });

  final _i2.ProductWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLotesInput,
      _i2.ProductUncheckedCreateWithoutLotesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProductCreateNestedOneWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductCreateNestedOneWithoutLotesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLotesInput,
      _i2.ProductUncheckedCreateWithoutLotesInput>? create;

  final _i2.ProductCreateOrConnectWithoutLotesInput? connectOrCreate;

  final _i2.ProductWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LoteCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateInput({
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    required this.product,
    this.loteUpdates,
    this.shoppingList,
  });

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.ProductCreateNestedOneWithoutLotesInput product;

  final _i2.LoteUpdatesCreateNestedManyWithoutLoteInput? loteUpdates;

  final _i2.ShoppingListCreateNestedOneWithoutLoteInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedCreateInput({
    this.id,
    required this.productId,
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
    this.shoppingList,
  });

  final int? id;

  final int productId;

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.LoteUpdatesUncheckedCreateNestedManyWithoutLoteInput? loteUpdates;

  final _i2.ShoppingListUncheckedCreateNestedOneWithoutLoteInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateManyInput({
    this.id,
    required this.productId,
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final int? id;

  final int productId;

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class CreateManyLoteAndReturnOutputTypeProductArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLoteAndReturnOutputTypeProductArgs({
    this.select,
    this.include,
  });

  final _i2.ProductSelect? select;

  final _i2.ProductInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyLoteAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLoteAndReturnOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? expirationDate;

  final bool? creationDate;

  final bool? purchasePrice;

  final _i1.PrismaUnion<bool, _i2.CreateManyLoteAndReturnOutputTypeProductArgs>?
      product;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
      };
}

class CreateManyLoteAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLoteAndReturnOutputTypeInclude({this.product});

  final _i1.PrismaUnion<bool, _i2.CreateManyLoteAndReturnOutputTypeProductArgs>?
      product;

  @override
  Map<String, dynamic> toJson() => {'product': product};
}

class ProductUpdateWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateWithoutLotesInput({
    this.description,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
  });

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  final _i2.AccountUpdateOneRequiredWithoutProductsNestedInput? account;

  final _i2.ProductCategoryUpdateOneWithoutProductsNestedInput? category;

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account,
        'category': category,
      };
}

class ProductUncheckedUpdateWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUncheckedUpdateWithoutLotesInput({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? accountId;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? description;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? productCategoryId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? barcodeContent;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
      };
}

class ProductUpsertWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpsertWithoutLotesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutLotesInput,
      _i2.ProductUncheckedUpdateWithoutLotesInput> update;

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLotesInput,
      _i2.ProductUncheckedCreateWithoutLotesInput> create;

  final _i2.ProductWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProductUpdateToOneWithWhereWithoutLotesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateToOneWithWhereWithoutLotesInput({
    this.where,
    required this.data,
  });

  final _i2.ProductWhereInput? where;

  final _i1.PrismaUnion<_i2.ProductUpdateWithoutLotesInput,
      _i2.ProductUncheckedUpdateWithoutLotesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProductUpdateOneRequiredWithoutLotesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProductUpdateOneRequiredWithoutLotesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProductCreateWithoutLotesInput,
      _i2.ProductUncheckedCreateWithoutLotesInput>? create;

  final _i2.ProductCreateOrConnectWithoutLotesInput? connectOrCreate;

  final _i2.ProductUpsertWithoutLotesInput? upsert;

  final _i2.ProductWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProductUpdateToOneWithWhereWithoutLotesInput,
      _i1.PrismaUnion<_i2.ProductUpdateWithoutLotesInput,
          _i2.ProductUncheckedUpdateWithoutLotesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class LoteUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateInput({
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.loteUpdates,
    this.shoppingList,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.ProductUpdateOneRequiredWithoutLotesNestedInput? product;

  final _i2.LoteUpdatesUpdateManyWithoutLoteNestedInput? loteUpdates;

  final _i2.ShoppingListUpdateOneWithoutLoteNestedInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
    this.shoppingList,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.LoteUpdatesUncheckedUpdateManyWithoutLoteNestedInput? loteUpdates;

  final _i2.ShoppingListUncheckedUpdateOneWithoutLoteNestedInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
        'shopping_list': shoppingList,
      };
}

class LoteUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateManyInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteCountAggregateOutputType {
  const LoteCountAggregateOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.$all,
  });

  factory LoteCountAggregateOutputType.fromJson(Map json) =>
      LoteCountAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        quantityMinimum: json['quantity_minimum'],
        quantityCurrent: json['quantity_current'],
        expirationDate: json['expiration_date'],
        creationDate: json['creation_date'],
        purchasePrice: json['purchase_price'],
        $all: json['_all'],
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final int? expirationDate;

  final int? creationDate;

  final int? purchasePrice;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        '_all': $all,
      };
}

class LoteAvgAggregateOutputType {
  const LoteAvgAggregateOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.purchasePrice,
  });

  factory LoteAvgAggregateOutputType.fromJson(Map json) =>
      LoteAvgAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        quantityMinimum: json['quantity_minimum'],
        quantityCurrent: json['quantity_current'],
        purchasePrice: json['purchase_price'],
      );

  final double? id;

  final double? productId;

  final double? quantityMinimum;

  final double? quantityCurrent;

  final double? purchasePrice;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'purchase_price': purchasePrice,
      };
}

class LoteSumAggregateOutputType {
  const LoteSumAggregateOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.purchasePrice,
  });

  factory LoteSumAggregateOutputType.fromJson(Map json) =>
      LoteSumAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        quantityMinimum: json['quantity_minimum'],
        quantityCurrent: json['quantity_current'],
        purchasePrice: json['purchase_price'],
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final double? purchasePrice;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'purchase_price': purchasePrice,
      };
}

class LoteMinAggregateOutputType {
  const LoteMinAggregateOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  factory LoteMinAggregateOutputType.fromJson(Map json) =>
      LoteMinAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        quantityMinimum: json['quantity_minimum'],
        quantityCurrent: json['quantity_current'],
        expirationDate: switch (json['expiration_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiration_date']
        },
        creationDate: switch (json['creation_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['creation_date']
        },
        purchasePrice: json['purchase_price'],
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final DateTime? expirationDate;

  final DateTime? creationDate;

  final double? purchasePrice;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate?.toIso8601String(),
        'creation_date': creationDate?.toIso8601String(),
        'purchase_price': purchasePrice,
      };
}

class LoteMaxAggregateOutputType {
  const LoteMaxAggregateOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  factory LoteMaxAggregateOutputType.fromJson(Map json) =>
      LoteMaxAggregateOutputType(
        id: json['id'],
        productId: json['product_id'],
        quantityMinimum: json['quantity_minimum'],
        quantityCurrent: json['quantity_current'],
        expirationDate: switch (json['expiration_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiration_date']
        },
        creationDate: switch (json['creation_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['creation_date']
        },
        purchasePrice: json['purchase_price'],
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final DateTime? expirationDate;

  final DateTime? creationDate;

  final double? purchasePrice;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate?.toIso8601String(),
        'creation_date': creationDate?.toIso8601String(),
        'purchase_price': purchasePrice,
      };
}

class LoteGroupByOutputType {
  const LoteGroupByOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory LoteGroupByOutputType.fromJson(Map json) => LoteGroupByOutputType(
        id: json['id'],
        productId: json['product_id'],
        quantityMinimum: json['quantity_minimum'],
        quantityCurrent: json['quantity_current'],
        expirationDate: switch (json['expiration_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['expiration_date']
        },
        creationDate: switch (json['creation_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['creation_date']
        },
        purchasePrice: json['purchase_price'],
        $count: json['_count'] is Map
            ? _i2.LoteCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LoteAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LoteSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LoteMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LoteMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final DateTime? expirationDate;

  final DateTime? creationDate;

  final double? purchasePrice;

  final _i2.LoteCountAggregateOutputType? $count;

  final _i2.LoteAvgAggregateOutputType? $avg;

  final _i2.LoteSumAggregateOutputType? $sum;

  final _i2.LoteMinAggregateOutputType? $min;

  final _i2.LoteMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate?.toIso8601String(),
        'creation_date': creationDate?.toIso8601String(),
        'purchase_price': purchasePrice,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class LoteCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCountOrderByAggregateInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i2.SortOrder? expirationDate;

  final _i2.SortOrder? creationDate;

  final _i2.SortOrder? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteAvgOrderByAggregateInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.purchasePrice,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i2.SortOrder? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'purchase_price': purchasePrice,
      };
}

class LoteMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteMaxOrderByAggregateInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i2.SortOrder? expirationDate;

  final _i2.SortOrder? creationDate;

  final _i2.SortOrder? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteMinOrderByAggregateInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i2.SortOrder? expirationDate;

  final _i2.SortOrder? creationDate;

  final _i2.SortOrder? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteSumOrderByAggregateInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.purchasePrice,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i2.SortOrder? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'purchase_price': purchasePrice,
      };
}

class LoteOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteOrderByWithAggregationInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? productId;

  final _i2.SortOrder? quantityMinimum;

  final _i2.SortOrder? quantityCurrent;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? expirationDate;

  final _i2.SortOrder? creationDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? purchasePrice;

  final _i2.LoteCountOrderByAggregateInput? $count;

  final _i2.LoteAvgOrderByAggregateInput? $avg;

  final _i2.LoteMaxOrderByAggregateInput? $max;

  final _i2.LoteMinOrderByAggregateInput? $min;

  final _i2.LoteSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

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
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

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
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

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
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

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
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatNullableWithAggregatesFilter({
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

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NestedFloatNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedFloatNullableFilter? $sum;

  final _i2.NestedFloatNullableFilter? $min;

  final _i2.NestedFloatNullableFilter? $max;

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

class FloatNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const FloatNullableWithAggregatesFilter({
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

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NestedFloatNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedFloatNullableFilter? $sum;

  final _i2.NestedFloatNullableFilter? $min;

  final _i2.NestedFloatNullableFilter? $max;

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

class LoteScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final _i1.PrismaUnion<_i2.LoteScalarWhereWithAggregatesInput,
      Iterable<_i2.LoteScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.LoteScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.LoteScalarWhereWithAggregatesInput,
      Iterable<_i2.LoteScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? productId;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? quantityMinimum;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? quantityCurrent;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>?
      creationDate;

  final _i1.PrismaUnion<_i2.FloatNullableWithAggregatesFilter,
      _i1.PrismaUnion<double, _i1.PrismaNull>>? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCountAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.$all,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? expirationDate;

  final bool? creationDate;

  final bool? purchasePrice;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        '_all': $all,
      };
}

class LoteGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteGroupByOutputTypeCountArgs({this.select});

  final _i2.LoteCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteAvgAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.purchasePrice,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'purchase_price': purchasePrice,
      };
}

class LoteGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteGroupByOutputTypeAvgArgs({this.select});

  final _i2.LoteAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteSumAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.purchasePrice,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'purchase_price': purchasePrice,
      };
}

class LoteGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteGroupByOutputTypeSumArgs({this.select});

  final _i2.LoteSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteMinAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? expirationDate;

  final bool? creationDate;

  final bool? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteGroupByOutputTypeMinArgs({this.select});

  final _i2.LoteMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteMaxAggregateOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? expirationDate;

  final bool? creationDate;

  final bool? purchasePrice;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
      };
}

class LoteGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteGroupByOutputTypeMaxArgs({this.select});

  final _i2.LoteMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteGroupByOutputTypeSelect({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? productId;

  final bool? quantityMinimum;

  final bool? quantityCurrent;

  final bool? expirationDate;

  final bool? creationDate;

  final bool? purchasePrice;

  final _i1.PrismaUnion<bool, _i2.LoteGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.LoteGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.LoteGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.LoteGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.LoteGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateLote {
  const AggregateLote({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateLote.fromJson(Map json) => AggregateLote(
        $count: json['_count'] is Map
            ? _i2.LoteCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LoteAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LoteSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LoteMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LoteMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.LoteCountAggregateOutputType? $count;

  final _i2.LoteAvgAggregateOutputType? $avg;

  final _i2.LoteSumAggregateOutputType? $sum;

  final _i2.LoteMinAggregateOutputType? $min;

  final _i2.LoteMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateLoteCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteCountArgs({this.select});

  final _i2.LoteCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteAvgArgs({this.select});

  final _i2.LoteAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteSumArgs({this.select});

  final _i2.LoteSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteMinArgs({this.select});

  final _i2.LoteMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteMaxArgs({this.select});

  final _i2.LoteMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateLoteCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class LoteCreateWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateWithoutLoteUpdatesInput({
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    required this.product,
    this.shoppingList,
  });

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.ProductCreateNestedOneWithoutLotesInput product;

  final _i2.ShoppingListCreateNestedOneWithoutLoteInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'shopping_list': shoppingList,
      };
}

class LoteUncheckedCreateWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedCreateWithoutLoteUpdatesInput({
    this.id,
    required this.productId,
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.shoppingList,
  });

  final int? id;

  final int productId;

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.ShoppingListUncheckedCreateNestedOneWithoutLoteInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'shopping_list': shoppingList,
      };
}

class LoteCreateOrConnectWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateOrConnectWithoutLoteUpdatesInput({
    required this.where,
    required this.create,
  });

  final _i2.LoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteCreateWithoutLoteUpdatesInput,
      _i2.LoteUncheckedCreateWithoutLoteUpdatesInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LoteCreateNestedOneWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateNestedOneWithoutLoteUpdatesInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.LoteCreateWithoutLoteUpdatesInput,
      _i2.LoteUncheckedCreateWithoutLoteUpdatesInput>? create;

  final _i2.LoteCreateOrConnectWithoutLoteUpdatesInput? connectOrCreate;

  final _i2.LoteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class LoteUpdatesCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateInput({
    this.updateTime,
    required this.quantityDelta,
    required this.lote,
  });

  final DateTime? updateTime;

  final int quantityDelta;

  final _i2.LoteCreateNestedOneWithoutLoteUpdatesInput lote;

  @override
  Map<String, dynamic> toJson() => {
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

class LoteUpdatesUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedCreateInput({
    this.id,
    required this.stockId,
    this.updateTime,
    required this.quantityDelta,
  });

  final int? id;

  final int stockId;

  final DateTime? updateTime;

  final int quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCreateManyInput({
    this.id,
    required this.stockId,
    this.updateTime,
    required this.quantityDelta,
  });

  final int? id;

  final int stockId;

  final DateTime? updateTime;

  final int quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class CreateManyLoteUpdatesAndReturnOutputTypeLoteArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLoteUpdatesAndReturnOutputTypeLoteArgs({
    this.select,
    this.include,
  });

  final _i2.LoteSelect? select;

  final _i2.LoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyLoteUpdatesAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLoteUpdatesAndReturnOutputTypeSelect({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  final bool? id;

  final bool? stockId;

  final bool? updateTime;

  final bool? quantityDelta;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyLoteUpdatesAndReturnOutputTypeLoteArgs>?
      lote;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

class CreateManyLoteUpdatesAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLoteUpdatesAndReturnOutputTypeInclude({this.lote});

  final _i1
      .PrismaUnion<bool, _i2.CreateManyLoteUpdatesAndReturnOutputTypeLoteArgs>?
      lote;

  @override
  Map<String, dynamic> toJson() => {'lote': lote};
}

class LoteUpdateWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateWithoutLoteUpdatesInput({
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.shoppingList,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.ProductUpdateOneRequiredWithoutLotesNestedInput? product;

  final _i2.ShoppingListUpdateOneWithoutLoteNestedInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'shopping_list': shoppingList,
      };
}

class LoteUncheckedUpdateWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateWithoutLoteUpdatesInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.shoppingList,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.ShoppingListUncheckedUpdateOneWithoutLoteNestedInput? shoppingList;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'shopping_list': shoppingList,
      };
}

class LoteUpsertWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpsertWithoutLoteUpdatesInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.LoteUpdateWithoutLoteUpdatesInput,
      _i2.LoteUncheckedUpdateWithoutLoteUpdatesInput> update;

  final _i1.PrismaUnion<_i2.LoteCreateWithoutLoteUpdatesInput,
      _i2.LoteUncheckedCreateWithoutLoteUpdatesInput> create;

  final _i2.LoteWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class LoteUpdateToOneWithWhereWithoutLoteUpdatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateToOneWithWhereWithoutLoteUpdatesInput({
    this.where,
    required this.data,
  });

  final _i2.LoteWhereInput? where;

  final _i1.PrismaUnion<_i2.LoteUpdateWithoutLoteUpdatesInput,
      _i2.LoteUncheckedUpdateWithoutLoteUpdatesInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LoteUpdateOneRequiredWithoutLoteUpdatesNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateOneRequiredWithoutLoteUpdatesNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.LoteCreateWithoutLoteUpdatesInput,
      _i2.LoteUncheckedCreateWithoutLoteUpdatesInput>? create;

  final _i2.LoteCreateOrConnectWithoutLoteUpdatesInput? connectOrCreate;

  final _i2.LoteUpsertWithoutLoteUpdatesInput? upsert;

  final _i2.LoteWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.LoteUpdateToOneWithWhereWithoutLoteUpdatesInput,
      _i1.PrismaUnion<_i2.LoteUpdateWithoutLoteUpdatesInput,
          _i2.LoteUncheckedUpdateWithoutLoteUpdatesInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class LoteUpdatesUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUpdateInput({
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  final _i2.LoteUpdateOneRequiredWithoutLoteUpdatesNestedInput? lote;

  @override
  Map<String, dynamic> toJson() => {
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        'lote': lote,
      };
}

class LoteUpdatesUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedUpdateInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? stockId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesUncheckedUpdateManyInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? stockId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      updateTime;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesCountAggregateOutputType {
  const LoteUpdatesCountAggregateOutputType({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.$all,
  });

  factory LoteUpdatesCountAggregateOutputType.fromJson(Map json) =>
      LoteUpdatesCountAggregateOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        updateTime: json['update_time'],
        quantityDelta: json['quantity_delta'],
        $all: json['_all'],
      );

  final int? id;

  final int? stockId;

  final int? updateTime;

  final int? quantityDelta;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        '_all': $all,
      };
}

class LoteUpdatesAvgAggregateOutputType {
  const LoteUpdatesAvgAggregateOutputType({
    this.id,
    this.stockId,
    this.quantityDelta,
  });

  factory LoteUpdatesAvgAggregateOutputType.fromJson(Map json) =>
      LoteUpdatesAvgAggregateOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        quantityDelta: json['quantity_delta'],
      );

  final double? id;

  final double? stockId;

  final double? quantityDelta;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesSumAggregateOutputType {
  const LoteUpdatesSumAggregateOutputType({
    this.id,
    this.stockId,
    this.quantityDelta,
  });

  factory LoteUpdatesSumAggregateOutputType.fromJson(Map json) =>
      LoteUpdatesSumAggregateOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        quantityDelta: json['quantity_delta'],
      );

  final int? id;

  final int? stockId;

  final int? quantityDelta;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesMinAggregateOutputType {
  const LoteUpdatesMinAggregateOutputType({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  factory LoteUpdatesMinAggregateOutputType.fromJson(Map json) =>
      LoteUpdatesMinAggregateOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        updateTime: switch (json['update_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['update_time']
        },
        quantityDelta: json['quantity_delta'],
      );

  final int? id;

  final int? stockId;

  final DateTime? updateTime;

  final int? quantityDelta;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime?.toIso8601String(),
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesMaxAggregateOutputType {
  const LoteUpdatesMaxAggregateOutputType({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  factory LoteUpdatesMaxAggregateOutputType.fromJson(Map json) =>
      LoteUpdatesMaxAggregateOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        updateTime: switch (json['update_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['update_time']
        },
        quantityDelta: json['quantity_delta'],
      );

  final int? id;

  final int? stockId;

  final DateTime? updateTime;

  final int? quantityDelta;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime?.toIso8601String(),
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesGroupByOutputType {
  const LoteUpdatesGroupByOutputType({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory LoteUpdatesGroupByOutputType.fromJson(Map json) =>
      LoteUpdatesGroupByOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        updateTime: switch (json['update_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['update_time']
        },
        quantityDelta: json['quantity_delta'],
        $count: json['_count'] is Map
            ? _i2.LoteUpdatesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LoteUpdatesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LoteUpdatesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LoteUpdatesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LoteUpdatesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? id;

  final int? stockId;

  final DateTime? updateTime;

  final int? quantityDelta;

  final _i2.LoteUpdatesCountAggregateOutputType? $count;

  final _i2.LoteUpdatesAvgAggregateOutputType? $avg;

  final _i2.LoteUpdatesSumAggregateOutputType? $sum;

  final _i2.LoteUpdatesMinAggregateOutputType? $min;

  final _i2.LoteUpdatesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime?.toIso8601String(),
        'quantity_delta': quantityDelta,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class LoteUpdatesCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCountOrderByAggregateInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? updateTime;

  final _i2.SortOrder? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesAvgOrderByAggregateInput({
    this.id,
    this.stockId,
    this.quantityDelta,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesMaxOrderByAggregateInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? updateTime;

  final _i2.SortOrder? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesMinOrderByAggregateInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? updateTime;

  final _i2.SortOrder? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesSumOrderByAggregateInput({
    this.id,
    this.stockId,
    this.quantityDelta,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesOrderByWithAggregationInput({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? updateTime;

  final _i2.SortOrder? quantityDelta;

  final _i2.LoteUpdatesCountOrderByAggregateInput? $count;

  final _i2.LoteUpdatesAvgOrderByAggregateInput? $avg;

  final _i2.LoteUpdatesMaxOrderByAggregateInput? $max;

  final _i2.LoteUpdatesMinOrderByAggregateInput? $min;

  final _i2.LoteUpdatesSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class LoteUpdatesScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final _i1.PrismaUnion<_i2.LoteUpdatesScalarWhereWithAggregatesInput,
      Iterable<_i2.LoteUpdatesScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.LoteUpdatesScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.LoteUpdatesScalarWhereWithAggregatesInput,
      Iterable<_i2.LoteUpdatesScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? id;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? stockId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? updateTime;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesCountAggregateOutputTypeSelect({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.$all,
  });

  final bool? id;

  final bool? stockId;

  final bool? updateTime;

  final bool? quantityDelta;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        '_all': $all,
      };
}

class LoteUpdatesGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesGroupByOutputTypeCountArgs({this.select});

  final _i2.LoteUpdatesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteUpdatesAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesAvgAggregateOutputTypeSelect({
    this.id,
    this.stockId,
    this.quantityDelta,
  });

  final bool? id;

  final bool? stockId;

  final bool? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesGroupByOutputTypeAvgArgs({this.select});

  final _i2.LoteUpdatesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteUpdatesSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesSumAggregateOutputTypeSelect({
    this.id,
    this.stockId,
    this.quantityDelta,
  });

  final bool? id;

  final bool? stockId;

  final bool? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesGroupByOutputTypeSumArgs({this.select});

  final _i2.LoteUpdatesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteUpdatesMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesMinAggregateOutputTypeSelect({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final bool? id;

  final bool? stockId;

  final bool? updateTime;

  final bool? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesGroupByOutputTypeMinArgs({this.select});

  final _i2.LoteUpdatesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteUpdatesMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesMaxAggregateOutputTypeSelect({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
  });

  final bool? id;

  final bool? stockId;

  final bool? updateTime;

  final bool? quantityDelta;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
      };
}

class LoteUpdatesGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesGroupByOutputTypeMaxArgs({this.select});

  final _i2.LoteUpdatesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LoteUpdatesGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdatesGroupByOutputTypeSelect({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? stockId;

  final bool? updateTime;

  final bool? quantityDelta;

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.LoteUpdatesGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime,
        'quantity_delta': quantityDelta,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateLoteUpdates {
  const AggregateLoteUpdates({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateLoteUpdates.fromJson(Map json) => AggregateLoteUpdates(
        $count: json['_count'] is Map
            ? _i2.LoteUpdatesCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.LoteUpdatesAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.LoteUpdatesSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LoteUpdatesMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LoteUpdatesMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.LoteUpdatesCountAggregateOutputType? $count;

  final _i2.LoteUpdatesAvgAggregateOutputType? $avg;

  final _i2.LoteUpdatesSumAggregateOutputType? $sum;

  final _i2.LoteUpdatesMinAggregateOutputType? $min;

  final _i2.LoteUpdatesMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateLoteUpdatesCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteUpdatesCountArgs({this.select});

  final _i2.LoteUpdatesCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteUpdatesAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteUpdatesAvgArgs({this.select});

  final _i2.LoteUpdatesAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteUpdatesSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteUpdatesSumArgs({this.select});

  final _i2.LoteUpdatesSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteUpdatesMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteUpdatesMinArgs({this.select});

  final _i2.LoteUpdatesMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteUpdatesMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteUpdatesMaxArgs({this.select});

  final _i2.LoteUpdatesMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLoteUpdatesSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLoteUpdatesSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateLoteUpdatesCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteUpdatesAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteUpdatesSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteUpdatesMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateLoteUpdatesMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

enum ShoppingListScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  stockId<int>('stock_id', 'ShoppingList'),
  count<int>('count', 'ShoppingList');

  const ShoppingListScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class LoteCreateWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateWithoutShoppingListInput({
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    required this.product,
    this.loteUpdates,
  });

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.ProductCreateNestedOneWithoutLotesInput product;

  final _i2.LoteUpdatesCreateNestedManyWithoutLoteInput? loteUpdates;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
      };
}

class LoteUncheckedCreateWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedCreateWithoutShoppingListInput({
    this.id,
    required this.productId,
    required this.quantityMinimum,
    required this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
  });

  final int? id;

  final int productId;

  final int quantityMinimum;

  final int quantityCurrent;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? expirationDate;

  final DateTime? creationDate;

  final _i1.PrismaUnion<double, _i1.PrismaNull>? purchasePrice;

  final _i2.LoteUpdatesUncheckedCreateNestedManyWithoutLoteInput? loteUpdates;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
      };
}

class LoteCreateOrConnectWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateOrConnectWithoutShoppingListInput({
    required this.where,
    required this.create,
  });

  final _i2.LoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.LoteCreateWithoutShoppingListInput,
      _i2.LoteUncheckedCreateWithoutShoppingListInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class LoteCreateNestedOneWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteCreateNestedOneWithoutShoppingListInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.LoteCreateWithoutShoppingListInput,
      _i2.LoteUncheckedCreateWithoutShoppingListInput>? create;

  final _i2.LoteCreateOrConnectWithoutShoppingListInput? connectOrCreate;

  final _i2.LoteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ShoppingListCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCreateInput({
    this.count,
    required this.lote,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? count;

  final _i2.LoteCreateNestedOneWithoutShoppingListInput lote;

  @override
  Map<String, dynamic> toJson() => {
        'count': count,
        'lote': lote,
      };
}

class ShoppingListUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedCreateInput({
    required this.stockId,
    this.count,
  });

  final int stockId;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCreateManyInput({
    required this.stockId,
    this.count,
  });

  final int stockId;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class CreateManyShoppingListAndReturnOutputTypeLoteArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyShoppingListAndReturnOutputTypeLoteArgs({
    this.select,
    this.include,
  });

  final _i2.LoteSelect? select;

  final _i2.LoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyShoppingListAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyShoppingListAndReturnOutputTypeSelect({
    this.stockId,
    this.count,
    this.lote,
  });

  final bool? stockId;

  final bool? count;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyShoppingListAndReturnOutputTypeLoteArgs>?
      lote;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        'lote': lote,
      };
}

class CreateManyShoppingListAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyShoppingListAndReturnOutputTypeInclude({this.lote});

  final _i1
      .PrismaUnion<bool, _i2.CreateManyShoppingListAndReturnOutputTypeLoteArgs>?
      lote;

  @override
  Map<String, dynamic> toJson() => {'lote': lote};
}

class LoteUpdateWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateWithoutShoppingListInput({
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
    this.loteUpdates,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.ProductUpdateOneRequiredWithoutLotesNestedInput? product;

  final _i2.LoteUpdatesUpdateManyWithoutLoteNestedInput? loteUpdates;

  @override
  Map<String, dynamic> toJson() => {
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'product': product,
        'lote_updates': loteUpdates,
      };
}

class LoteUncheckedUpdateWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUncheckedUpdateWithoutShoppingListInput({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.loteUpdates,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? productId;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityMinimum;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>?
      quantityCurrent;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? expirationDate;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      creationDate;

  final _i1.PrismaUnion<
      double,
      _i1.PrismaUnion<_i2.NullableFloatFieldUpdateOperationsInput,
          _i1.PrismaNull>>? purchasePrice;

  final _i2.LoteUpdatesUncheckedUpdateManyWithoutLoteNestedInput? loteUpdates;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate,
        'creation_date': creationDate,
        'purchase_price': purchasePrice,
        'lote_updates': loteUpdates,
      };
}

class LoteUpsertWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpsertWithoutShoppingListInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.LoteUpdateWithoutShoppingListInput,
      _i2.LoteUncheckedUpdateWithoutShoppingListInput> update;

  final _i1.PrismaUnion<_i2.LoteCreateWithoutShoppingListInput,
      _i2.LoteUncheckedCreateWithoutShoppingListInput> create;

  final _i2.LoteWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class LoteUpdateToOneWithWhereWithoutShoppingListInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateToOneWithWhereWithoutShoppingListInput({
    this.where,
    required this.data,
  });

  final _i2.LoteWhereInput? where;

  final _i1.PrismaUnion<_i2.LoteUpdateWithoutShoppingListInput,
      _i2.LoteUncheckedUpdateWithoutShoppingListInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class LoteUpdateOneRequiredWithoutShoppingListNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LoteUpdateOneRequiredWithoutShoppingListNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.LoteCreateWithoutShoppingListInput,
      _i2.LoteUncheckedCreateWithoutShoppingListInput>? create;

  final _i2.LoteCreateOrConnectWithoutShoppingListInput? connectOrCreate;

  final _i2.LoteUpsertWithoutShoppingListInput? upsert;

  final _i2.LoteWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.LoteUpdateToOneWithWhereWithoutShoppingListInput,
      _i1.PrismaUnion<_i2.LoteUpdateWithoutShoppingListInput,
          _i2.LoteUncheckedUpdateWithoutShoppingListInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ShoppingListUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUpdateInput({
    this.count,
    this.lote,
  });

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? count;

  final _i2.LoteUpdateOneRequiredWithoutShoppingListNestedInput? lote;

  @override
  Map<String, dynamic> toJson() => {
        'count': count,
        'lote': lote,
      };
}

class ShoppingListUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedUpdateInput({
    this.stockId,
    this.count,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? stockId;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUpdateManyMutationInput({this.count});

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? count;

  @override
  Map<String, dynamic> toJson() => {'count': count};
}

class ShoppingListUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListUncheckedUpdateManyInput({
    this.stockId,
    this.count,
  });

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? stockId;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListCountAggregateOutputType {
  const ShoppingListCountAggregateOutputType({
    this.stockId,
    this.count,
    this.$all,
  });

  factory ShoppingListCountAggregateOutputType.fromJson(Map json) =>
      ShoppingListCountAggregateOutputType(
        stockId: json['stock_id'],
        count: json['count'],
        $all: json['_all'],
      );

  final int? stockId;

  final int? count;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        '_all': $all,
      };
}

class ShoppingListAvgAggregateOutputType {
  const ShoppingListAvgAggregateOutputType({
    this.stockId,
    this.count,
  });

  factory ShoppingListAvgAggregateOutputType.fromJson(Map json) =>
      ShoppingListAvgAggregateOutputType(
        stockId: json['stock_id'],
        count: json['count'],
      );

  final double? stockId;

  final double? count;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListSumAggregateOutputType {
  const ShoppingListSumAggregateOutputType({
    this.stockId,
    this.count,
  });

  factory ShoppingListSumAggregateOutputType.fromJson(Map json) =>
      ShoppingListSumAggregateOutputType(
        stockId: json['stock_id'],
        count: json['count'],
      );

  final int? stockId;

  final int? count;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListMinAggregateOutputType {
  const ShoppingListMinAggregateOutputType({
    this.stockId,
    this.count,
  });

  factory ShoppingListMinAggregateOutputType.fromJson(Map json) =>
      ShoppingListMinAggregateOutputType(
        stockId: json['stock_id'],
        count: json['count'],
      );

  final int? stockId;

  final int? count;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListMaxAggregateOutputType {
  const ShoppingListMaxAggregateOutputType({
    this.stockId,
    this.count,
  });

  factory ShoppingListMaxAggregateOutputType.fromJson(Map json) =>
      ShoppingListMaxAggregateOutputType(
        stockId: json['stock_id'],
        count: json['count'],
      );

  final int? stockId;

  final int? count;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListGroupByOutputType {
  const ShoppingListGroupByOutputType({
    this.stockId,
    this.count,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory ShoppingListGroupByOutputType.fromJson(Map json) =>
      ShoppingListGroupByOutputType(
        stockId: json['stock_id'],
        count: json['count'],
        $count: json['_count'] is Map
            ? _i2.ShoppingListCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ShoppingListAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ShoppingListSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ShoppingListMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ShoppingListMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final int? stockId;

  final int? count;

  final _i2.ShoppingListCountAggregateOutputType? $count;

  final _i2.ShoppingListAvgAggregateOutputType? $avg;

  final _i2.ShoppingListSumAggregateOutputType? $sum;

  final _i2.ShoppingListMinAggregateOutputType? $min;

  final _i2.ShoppingListMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ShoppingListCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCountOrderByAggregateInput({
    this.stockId,
    this.count,
  });

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListAvgOrderByAggregateInput({
    this.stockId,
    this.count,
  });

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListMaxOrderByAggregateInput({
    this.stockId,
    this.count,
  });

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListMinOrderByAggregateInput({
    this.stockId,
    this.count,
  });

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListSumOrderByAggregateInput({
    this.stockId,
    this.count,
  });

  final _i2.SortOrder? stockId;

  final _i2.SortOrder? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListOrderByWithAggregationInput({
    this.stockId,
    this.count,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? stockId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? count;

  final _i2.ShoppingListCountOrderByAggregateInput? $count;

  final _i2.ShoppingListAvgOrderByAggregateInput? $avg;

  final _i2.ShoppingListMaxOrderByAggregateInput? $max;

  final _i2.ShoppingListMinOrderByAggregateInput? $min;

  final _i2.ShoppingListSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class ShoppingListScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.stockId,
    this.count,
  });

  final _i1.PrismaUnion<_i2.ShoppingListScalarWhereWithAggregatesInput,
      Iterable<_i2.ShoppingListScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ShoppingListScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ShoppingListScalarWhereWithAggregatesInput,
      Iterable<_i2.ShoppingListScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? stockId;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? count;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListCountAggregateOutputTypeSelect({
    this.stockId,
    this.count,
    this.$all,
  });

  final bool? stockId;

  final bool? count;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        '_all': $all,
      };
}

class ShoppingListGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListGroupByOutputTypeCountArgs({this.select});

  final _i2.ShoppingListCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ShoppingListAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListAvgAggregateOutputTypeSelect({
    this.stockId,
    this.count,
  });

  final bool? stockId;

  final bool? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListGroupByOutputTypeAvgArgs({this.select});

  final _i2.ShoppingListAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ShoppingListSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListSumAggregateOutputTypeSelect({
    this.stockId,
    this.count,
  });

  final bool? stockId;

  final bool? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListGroupByOutputTypeSumArgs({this.select});

  final _i2.ShoppingListSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ShoppingListMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListMinAggregateOutputTypeSelect({
    this.stockId,
    this.count,
  });

  final bool? stockId;

  final bool? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListGroupByOutputTypeMinArgs({this.select});

  final _i2.ShoppingListMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ShoppingListMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListMaxAggregateOutputTypeSelect({
    this.stockId,
    this.count,
  });

  final bool? stockId;

  final bool? count;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
      };
}

class ShoppingListGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListGroupByOutputTypeMaxArgs({this.select});

  final _i2.ShoppingListMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ShoppingListGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ShoppingListGroupByOutputTypeSelect({
    this.stockId,
    this.count,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? stockId;

  final bool? count;

  final _i1.PrismaUnion<bool, _i2.ShoppingListGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.ShoppingListGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.ShoppingListGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.ShoppingListGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ShoppingListGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateShoppingList {
  const AggregateShoppingList({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateShoppingList.fromJson(Map json) => AggregateShoppingList(
        $count: json['_count'] is Map
            ? _i2.ShoppingListCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.ShoppingListAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.ShoppingListSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ShoppingListMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ShoppingListMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ShoppingListCountAggregateOutputType? $count;

  final _i2.ShoppingListAvgAggregateOutputType? $avg;

  final _i2.ShoppingListSumAggregateOutputType? $sum;

  final _i2.ShoppingListMinAggregateOutputType? $min;

  final _i2.ShoppingListMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateShoppingListCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateShoppingListCountArgs({this.select});

  final _i2.ShoppingListCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateShoppingListAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateShoppingListAvgArgs({this.select});

  final _i2.ShoppingListAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateShoppingListSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateShoppingListSumArgs({this.select});

  final _i2.ShoppingListSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateShoppingListMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateShoppingListMinArgs({this.select});

  final _i2.ShoppingListMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateShoppingListMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateShoppingListMaxArgs({this.select});

  final _i2.ShoppingListMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateShoppingListSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateShoppingListSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateShoppingListCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateShoppingListAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateShoppingListSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateShoppingListMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateShoppingListMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
