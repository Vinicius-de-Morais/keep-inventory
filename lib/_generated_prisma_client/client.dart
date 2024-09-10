// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm_flutter/orm_flutter.dart' as _i5;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class AccountDelegate {
  const AccountDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Account?> findUnique({
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'findUniqueAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Account> findUniqueOrThrow({
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'findUniqueAccountOrThrow',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account?> findFirst({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AccountOrderByWithRelationInput>,
            _i3.AccountOrderByWithRelationInput>?
        orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AccountScalar, Iterable<_i3.AccountScalar>>? distinct,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'findFirstAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Account> findFirstOrThrow({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AccountOrderByWithRelationInput>,
            _i3.AccountOrderByWithRelationInput>?
        orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AccountScalar, Iterable<_i3.AccountScalar>>? distinct,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'findFirstAccountOrThrow',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Account>> findMany({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AccountOrderByWithRelationInput>,
            _i3.AccountOrderByWithRelationInput>?
        orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AccountScalar, Iterable<_i3.AccountScalar>>? distinct,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Account>>(
      action: 'findManyAccount',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Account.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Account> create({
    required _i1
        .PrismaUnion<_i3.AccountCreateInput, _i3.AccountUncheckedCreateInput>
        data,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'createOneAccount',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.AccountCreateManyInput,
              Iterable<_i3.AccountCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAccount',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyAccountAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.AccountCreateManyInput,
            Iterable<_i3.AccountCreateManyInput>>
        data,
    _i3.CreateManyAccountAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyAccountAndReturnOutputType>>(
      action: 'createManyAccountAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyAccountAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Account?> update({
    required _i1
        .PrismaUnion<_i3.AccountUpdateInput, _i3.AccountUncheckedUpdateInput>
        data,
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'updateOneAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.AccountUpdateManyMutationInput,
            _i3.AccountUncheckedUpdateManyInput>
        data,
    _i3.AccountWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAccount',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account> upsert({
    required _i3.AccountWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.AccountCreateInput, _i3.AccountUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.AccountUpdateInput, _i3.AccountUncheckedUpdateInput>
        update,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'upsertOneAccount',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account?> delete({
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'deleteOneAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.AccountWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAccount',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AccountGroupByOutputType>> groupBy({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AccountOrderByWithAggregationInput>,
            _i3.AccountOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.AccountScalar>, _i3.AccountScalar> by,
    _i3.AccountScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AccountGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AccountGroupByOutputType>>(
      action: 'groupByAccount',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.AccountGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateAccount> aggregate({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AccountOrderByWithRelationInput>,
            _i3.AccountOrderByWithRelationInput>?
        orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAccountSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAccount>(
      action: 'aggregateAccount',
      result: result,
      factory: (e) => _i3.AggregateAccount.fromJson(e),
    );
  }
}

class ProductDelegate {
  const ProductDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Product?> findUnique({
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'findUniqueProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Product> findUniqueOrThrow({
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'findUniqueProductOrThrow',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Product?> findFirst({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductScalar, Iterable<_i3.ProductScalar>>? distinct,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'findFirstProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Product> findFirstOrThrow({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductScalar, Iterable<_i3.ProductScalar>>? distinct,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'findFirstProductOrThrow',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Product>> findMany({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductScalar, Iterable<_i3.ProductScalar>>? distinct,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Product>>(
      action: 'findManyProduct',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Product.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Product> create({
    required _i1
        .PrismaUnion<_i3.ProductCreateInput, _i3.ProductUncheckedCreateInput>
        data,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'createOneProduct',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.ProductCreateManyInput,
              Iterable<_i3.ProductCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyProduct',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyProductAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ProductCreateManyInput,
            Iterable<_i3.ProductCreateManyInput>>
        data,
    _i3.CreateManyProductAndReturnOutputTypeSelect? select,
    _i3.CreateManyProductAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyProductAndReturnOutputType>>(
      action: 'createManyProductAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyProductAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Product?> update({
    required _i1
        .PrismaUnion<_i3.ProductUpdateInput, _i3.ProductUncheckedUpdateInput>
        data,
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'updateOneProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProductUpdateManyMutationInput,
            _i3.ProductUncheckedUpdateManyInput>
        data,
    _i3.ProductWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyProduct',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Product> upsert({
    required _i3.ProductWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ProductCreateInput, _i3.ProductUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ProductUpdateInput, _i3.ProductUncheckedUpdateInput>
        update,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product>(
      action: 'upsertOneProduct',
      result: result,
      factory: (e) => _i2.Product.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Product?> delete({
    required _i3.ProductWhereUniqueInput where,
    _i3.ProductSelect? select,
    _i3.ProductInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Product?>(
      action: 'deleteOneProduct',
      result: result,
      factory: (e) => e != null ? _i2.Product.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProductWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyProduct',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProductGroupByOutputType>> groupBy({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithAggregationInput>,
            _i3.ProductOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProductScalar>, _i3.ProductScalar> by,
    _i3.ProductScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProductGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProductGroupByOutputType>>(
      action: 'groupByProduct',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProductGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProduct> aggregate({
    _i3.ProductWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductOrderByWithRelationInput>,
            _i3.ProductOrderByWithRelationInput>?
        orderBy,
    _i3.ProductWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProductSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Product',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProduct>(
      action: 'aggregateProduct',
      result: result,
      factory: (e) => _i3.AggregateProduct.fromJson(e),
    );
  }
}

class ProductCategoryDelegate {
  const ProductCategoryDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ProductCategory?> findUnique({
    required _i3.ProductCategoryWhereUniqueInput where,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory?>(
      action: 'findUniqueProductCategory',
      result: result,
      factory: (e) => e != null ? _i2.ProductCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ProductCategory> findUniqueOrThrow({
    required _i3.ProductCategoryWhereUniqueInput where,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory>(
      action: 'findUniqueProductCategoryOrThrow',
      result: result,
      factory: (e) => _i2.ProductCategory.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProductCategory?> findFirst({
    _i3.ProductCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductCategoryOrderByWithRelationInput>,
            _i3.ProductCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.ProductCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductCategoryScalar,
            Iterable<_i3.ProductCategoryScalar>>?
        distinct,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory?>(
      action: 'findFirstProductCategory',
      result: result,
      factory: (e) => e != null ? _i2.ProductCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ProductCategory> findFirstOrThrow({
    _i3.ProductCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductCategoryOrderByWithRelationInput>,
            _i3.ProductCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.ProductCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductCategoryScalar,
            Iterable<_i3.ProductCategoryScalar>>?
        distinct,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory>(
      action: 'findFirstProductCategoryOrThrow',
      result: result,
      factory: (e) => _i2.ProductCategory.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ProductCategory>> findMany({
    _i3.ProductCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductCategoryOrderByWithRelationInput>,
            _i3.ProductCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.ProductCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProductCategoryScalar,
            Iterable<_i3.ProductCategoryScalar>>?
        distinct,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ProductCategory>>(
      action: 'findManyProductCategory',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ProductCategory.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ProductCategory> create({
    required _i1.PrismaUnion<_i3.ProductCategoryCreateInput,
            _i3.ProductCategoryUncheckedCreateInput>
        data,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory>(
      action: 'createOneProductCategory',
      result: result,
      factory: (e) => _i2.ProductCategory.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.ProductCategoryCreateManyInput,
              Iterable<_i3.ProductCategoryCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyProductCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyProductCategoryAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ProductCategoryCreateManyInput,
            Iterable<_i3.ProductCategoryCreateManyInput>>
        data,
    _i3.CreateManyProductCategoryAndReturnOutputTypeSelect? select,
    _i3.CreateManyProductCategoryAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyProductCategoryAndReturnOutputType>>(
      action: 'createManyProductCategoryAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyProductCategoryAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ProductCategory?> update({
    required _i1.PrismaUnion<_i3.ProductCategoryUpdateInput,
            _i3.ProductCategoryUncheckedUpdateInput>
        data,
    required _i3.ProductCategoryWhereUniqueInput where,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory?>(
      action: 'updateOneProductCategory',
      result: result,
      factory: (e) => e != null ? _i2.ProductCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProductCategoryUpdateManyMutationInput,
            _i3.ProductCategoryUncheckedUpdateManyInput>
        data,
    _i3.ProductCategoryWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyProductCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProductCategory> upsert({
    required _i3.ProductCategoryWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.ProductCategoryCreateInput,
            _i3.ProductCategoryUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.ProductCategoryUpdateInput,
            _i3.ProductCategoryUncheckedUpdateInput>
        update,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory>(
      action: 'upsertOneProductCategory',
      result: result,
      factory: (e) => _i2.ProductCategory.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProductCategory?> delete({
    required _i3.ProductCategoryWhereUniqueInput where,
    _i3.ProductCategorySelect? select,
    _i3.ProductCategoryInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProductCategory?>(
      action: 'deleteOneProductCategory',
      result: result,
      factory: (e) => e != null ? _i2.ProductCategory.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProductCategoryWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyProductCategory',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProductCategoryGroupByOutputType>> groupBy({
    _i3.ProductCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductCategoryOrderByWithAggregationInput>,
            _i3.ProductCategoryOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProductCategoryScalar>,
            _i3.ProductCategoryScalar>
        by,
    _i3.ProductCategoryScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProductCategoryGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProductCategoryGroupByOutputType>>(
      action: 'groupByProductCategory',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProductCategoryGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProductCategory> aggregate({
    _i3.ProductCategoryWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProductCategoryOrderByWithRelationInput>,
            _i3.ProductCategoryOrderByWithRelationInput>?
        orderBy,
    _i3.ProductCategoryWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProductCategorySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ProductCategory',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProductCategory>(
      action: 'aggregateProductCategory',
      result: result,
      factory: (e) => _i3.AggregateProductCategory.fromJson(e),
    );
  }
}

class LoteDelegate {
  const LoteDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Lote?> findUnique({
    required _i3.LoteWhereUniqueInput where,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote?>(
      action: 'findUniqueLote',
      result: result,
      factory: (e) => e != null ? _i2.Lote.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Lote> findUniqueOrThrow({
    required _i3.LoteWhereUniqueInput where,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote>(
      action: 'findUniqueLoteOrThrow',
      result: result,
      factory: (e) => _i2.Lote.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Lote?> findFirst({
    _i3.LoteWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteOrderByWithRelationInput>,
            _i3.LoteOrderByWithRelationInput>?
        orderBy,
    _i3.LoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LoteScalar, Iterable<_i3.LoteScalar>>? distinct,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote?>(
      action: 'findFirstLote',
      result: result,
      factory: (e) => e != null ? _i2.Lote.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Lote> findFirstOrThrow({
    _i3.LoteWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteOrderByWithRelationInput>,
            _i3.LoteOrderByWithRelationInput>?
        orderBy,
    _i3.LoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LoteScalar, Iterable<_i3.LoteScalar>>? distinct,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote>(
      action: 'findFirstLoteOrThrow',
      result: result,
      factory: (e) => _i2.Lote.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Lote>> findMany({
    _i3.LoteWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteOrderByWithRelationInput>,
            _i3.LoteOrderByWithRelationInput>?
        orderBy,
    _i3.LoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LoteScalar, Iterable<_i3.LoteScalar>>? distinct,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Lote>>(
      action: 'findManyLote',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Lote.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Lote> create({
    required _i1.PrismaUnion<_i3.LoteCreateInput, _i3.LoteUncheckedCreateInput>
        data,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote>(
      action: 'createOneLote',
      result: result,
      factory: (e) => _i2.Lote.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.LoteCreateManyInput,
              Iterable<_i3.LoteCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyLote',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyLoteAndReturnOutputType>>
      createManyAndReturn({
    required _i1
        .PrismaUnion<_i3.LoteCreateManyInput, Iterable<_i3.LoteCreateManyInput>>
        data,
    _i3.CreateManyLoteAndReturnOutputTypeSelect? select,
    _i3.CreateManyLoteAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyLoteAndReturnOutputType>>(
      action: 'createManyLoteAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyLoteAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Lote?> update({
    required _i1.PrismaUnion<_i3.LoteUpdateInput, _i3.LoteUncheckedUpdateInput>
        data,
    required _i3.LoteWhereUniqueInput where,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote?>(
      action: 'updateOneLote',
      result: result,
      factory: (e) => e != null ? _i2.Lote.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.LoteUpdateManyMutationInput,
            _i3.LoteUncheckedUpdateManyInput>
        data,
    _i3.LoteWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyLote',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Lote> upsert({
    required _i3.LoteWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.LoteCreateInput, _i3.LoteUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.LoteUpdateInput, _i3.LoteUncheckedUpdateInput>
        update,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote>(
      action: 'upsertOneLote',
      result: result,
      factory: (e) => _i2.Lote.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Lote?> delete({
    required _i3.LoteWhereUniqueInput where,
    _i3.LoteSelect? select,
    _i3.LoteInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Lote?>(
      action: 'deleteOneLote',
      result: result,
      factory: (e) => e != null ? _i2.Lote.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.LoteWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyLote',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.LoteGroupByOutputType>> groupBy({
    _i3.LoteWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteOrderByWithAggregationInput>,
            _i3.LoteOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.LoteScalar>, _i3.LoteScalar> by,
    _i3.LoteScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.LoteGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LoteGroupByOutputType>>(
      action: 'groupByLote',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.LoteGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateLote> aggregate({
    _i3.LoteWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteOrderByWithRelationInput>,
            _i3.LoteOrderByWithRelationInput>?
        orderBy,
    _i3.LoteWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateLoteSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Lote',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLote>(
      action: 'aggregateLote',
      result: result,
      factory: (e) => _i3.AggregateLote.fromJson(e),
    );
  }
}

class LoteUpdatesDelegate {
  const LoteUpdatesDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.LoteUpdates?> findUnique({
    required _i3.LoteUpdatesWhereUniqueInput where,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates?>(
      action: 'findUniqueLoteUpdates',
      result: result,
      factory: (e) => e != null ? _i2.LoteUpdates.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.LoteUpdates> findUniqueOrThrow({
    required _i3.LoteUpdatesWhereUniqueInput where,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates>(
      action: 'findUniqueLoteUpdatesOrThrow',
      result: result,
      factory: (e) => _i2.LoteUpdates.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.LoteUpdates?> findFirst({
    _i3.LoteUpdatesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteUpdatesOrderByWithRelationInput>,
            _i3.LoteUpdatesOrderByWithRelationInput>?
        orderBy,
    _i3.LoteUpdatesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LoteUpdatesScalar, Iterable<_i3.LoteUpdatesScalar>>?
        distinct,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates?>(
      action: 'findFirstLoteUpdates',
      result: result,
      factory: (e) => e != null ? _i2.LoteUpdates.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.LoteUpdates> findFirstOrThrow({
    _i3.LoteUpdatesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteUpdatesOrderByWithRelationInput>,
            _i3.LoteUpdatesOrderByWithRelationInput>?
        orderBy,
    _i3.LoteUpdatesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LoteUpdatesScalar, Iterable<_i3.LoteUpdatesScalar>>?
        distinct,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates>(
      action: 'findFirstLoteUpdatesOrThrow',
      result: result,
      factory: (e) => _i2.LoteUpdates.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.LoteUpdates>> findMany({
    _i3.LoteUpdatesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteUpdatesOrderByWithRelationInput>,
            _i3.LoteUpdatesOrderByWithRelationInput>?
        orderBy,
    _i3.LoteUpdatesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LoteUpdatesScalar, Iterable<_i3.LoteUpdatesScalar>>?
        distinct,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.LoteUpdates>>(
      action: 'findManyLoteUpdates',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.LoteUpdates.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.LoteUpdates> create({
    required _i1.PrismaUnion<_i3.LoteUpdatesCreateInput,
            _i3.LoteUpdatesUncheckedCreateInput>
        data,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates>(
      action: 'createOneLoteUpdates',
      result: result,
      factory: (e) => _i2.LoteUpdates.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.LoteUpdatesCreateManyInput,
              Iterable<_i3.LoteUpdatesCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyLoteUpdates',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyLoteUpdatesAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.LoteUpdatesCreateManyInput,
            Iterable<_i3.LoteUpdatesCreateManyInput>>
        data,
    _i3.CreateManyLoteUpdatesAndReturnOutputTypeSelect? select,
    _i3.CreateManyLoteUpdatesAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyLoteUpdatesAndReturnOutputType>>(
      action: 'createManyLoteUpdatesAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyLoteUpdatesAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.LoteUpdates?> update({
    required _i1.PrismaUnion<_i3.LoteUpdatesUpdateInput,
            _i3.LoteUpdatesUncheckedUpdateInput>
        data,
    required _i3.LoteUpdatesWhereUniqueInput where,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates?>(
      action: 'updateOneLoteUpdates',
      result: result,
      factory: (e) => e != null ? _i2.LoteUpdates.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.LoteUpdatesUpdateManyMutationInput,
            _i3.LoteUpdatesUncheckedUpdateManyInput>
        data,
    _i3.LoteUpdatesWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyLoteUpdates',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.LoteUpdates> upsert({
    required _i3.LoteUpdatesWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.LoteUpdatesCreateInput,
            _i3.LoteUpdatesUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.LoteUpdatesUpdateInput,
            _i3.LoteUpdatesUncheckedUpdateInput>
        update,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates>(
      action: 'upsertOneLoteUpdates',
      result: result,
      factory: (e) => _i2.LoteUpdates.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.LoteUpdates?> delete({
    required _i3.LoteUpdatesWhereUniqueInput where,
    _i3.LoteUpdatesSelect? select,
    _i3.LoteUpdatesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LoteUpdates?>(
      action: 'deleteOneLoteUpdates',
      result: result,
      factory: (e) => e != null ? _i2.LoteUpdates.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.LoteUpdatesWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyLoteUpdates',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.LoteUpdatesGroupByOutputType>> groupBy({
    _i3.LoteUpdatesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteUpdatesOrderByWithAggregationInput>,
            _i3.LoteUpdatesOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.LoteUpdatesScalar>, _i3.LoteUpdatesScalar>
        by,
    _i3.LoteUpdatesScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.LoteUpdatesGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LoteUpdatesGroupByOutputType>>(
      action: 'groupByLoteUpdates',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.LoteUpdatesGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateLoteUpdates> aggregate({
    _i3.LoteUpdatesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LoteUpdatesOrderByWithRelationInput>,
            _i3.LoteUpdatesOrderByWithRelationInput>?
        orderBy,
    _i3.LoteUpdatesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateLoteUpdatesSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LoteUpdates',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLoteUpdates>(
      action: 'aggregateLoteUpdates',
      result: result,
      factory: (e) => _i3.AggregateLoteUpdates.fromJson(e),
    );
  }
}

class ShoppingListDelegate {
  const ShoppingListDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ShoppingList?> findUnique({
    required _i3.ShoppingListWhereUniqueInput where,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList?>(
      action: 'findUniqueShoppingList',
      result: result,
      factory: (e) => e != null ? _i2.ShoppingList.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ShoppingList> findUniqueOrThrow({
    required _i3.ShoppingListWhereUniqueInput where,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList>(
      action: 'findUniqueShoppingListOrThrow',
      result: result,
      factory: (e) => _i2.ShoppingList.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ShoppingList?> findFirst({
    _i3.ShoppingListWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ShoppingListOrderByWithRelationInput>,
            _i3.ShoppingListOrderByWithRelationInput>?
        orderBy,
    _i3.ShoppingListWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ShoppingListScalar, Iterable<_i3.ShoppingListScalar>>?
        distinct,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList?>(
      action: 'findFirstShoppingList',
      result: result,
      factory: (e) => e != null ? _i2.ShoppingList.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ShoppingList> findFirstOrThrow({
    _i3.ShoppingListWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ShoppingListOrderByWithRelationInput>,
            _i3.ShoppingListOrderByWithRelationInput>?
        orderBy,
    _i3.ShoppingListWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ShoppingListScalar, Iterable<_i3.ShoppingListScalar>>?
        distinct,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList>(
      action: 'findFirstShoppingListOrThrow',
      result: result,
      factory: (e) => _i2.ShoppingList.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ShoppingList>> findMany({
    _i3.ShoppingListWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ShoppingListOrderByWithRelationInput>,
            _i3.ShoppingListOrderByWithRelationInput>?
        orderBy,
    _i3.ShoppingListWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ShoppingListScalar, Iterable<_i3.ShoppingListScalar>>?
        distinct,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ShoppingList>>(
      action: 'findManyShoppingList',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ShoppingList.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ShoppingList> create({
    required _i1.PrismaUnion<_i3.ShoppingListCreateInput,
            _i3.ShoppingListUncheckedCreateInput>
        data,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList>(
      action: 'createOneShoppingList',
      result: result,
      factory: (e) => _i2.ShoppingList.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.ShoppingListCreateManyInput,
              Iterable<_i3.ShoppingListCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyShoppingList',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyShoppingListAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ShoppingListCreateManyInput,
            Iterable<_i3.ShoppingListCreateManyInput>>
        data,
    _i3.CreateManyShoppingListAndReturnOutputTypeSelect? select,
    _i3.CreateManyShoppingListAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyShoppingListAndReturnOutputType>>(
      action: 'createManyShoppingListAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyShoppingListAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ShoppingList?> update({
    required _i1.PrismaUnion<_i3.ShoppingListUpdateInput,
            _i3.ShoppingListUncheckedUpdateInput>
        data,
    required _i3.ShoppingListWhereUniqueInput where,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList?>(
      action: 'updateOneShoppingList',
      result: result,
      factory: (e) => e != null ? _i2.ShoppingList.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ShoppingListUpdateManyMutationInput,
            _i3.ShoppingListUncheckedUpdateManyInput>
        data,
    _i3.ShoppingListWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyShoppingList',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ShoppingList> upsert({
    required _i3.ShoppingListWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.ShoppingListCreateInput,
            _i3.ShoppingListUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.ShoppingListUpdateInput,
            _i3.ShoppingListUncheckedUpdateInput>
        update,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList>(
      action: 'upsertOneShoppingList',
      result: result,
      factory: (e) => _i2.ShoppingList.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ShoppingList?> delete({
    required _i3.ShoppingListWhereUniqueInput where,
    _i3.ShoppingListSelect? select,
    _i3.ShoppingListInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ShoppingList?>(
      action: 'deleteOneShoppingList',
      result: result,
      factory: (e) => e != null ? _i2.ShoppingList.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ShoppingListWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyShoppingList',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ShoppingListGroupByOutputType>> groupBy({
    _i3.ShoppingListWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ShoppingListOrderByWithAggregationInput>,
            _i3.ShoppingListOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.ShoppingListScalar>, _i3.ShoppingListScalar>
        by,
    _i3.ShoppingListScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ShoppingListGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ShoppingListGroupByOutputType>>(
      action: 'groupByShoppingList',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ShoppingListGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateShoppingList> aggregate({
    _i3.ShoppingListWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ShoppingListOrderByWithRelationInput>,
            _i3.ShoppingListOrderByWithRelationInput>?
        orderBy,
    _i3.ShoppingListWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateShoppingListSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ShoppingList',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateShoppingList>(
      action: 'aggregateShoppingList',
      result: result,
      factory: (e) => _i3.AggregateShoppingList.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'Account',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'products',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Product',
            'relationName': 'AccountToProduct',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'categories',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ProductCategory',
            'relationName': 'AccountToProductCategory',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Product',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'account_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product_category_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'barcode_content',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'account',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Account',
            'relationName': 'AccountToProduct',
            'relationFromFields': ['account_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'category',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ProductCategory',
            'relationName': 'ProductToProductCategory',
            'relationFromFields': ['product_category_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'lotes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Lote',
            'relationName': 'LoteToProduct',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ProductCategory',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'parent_category',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'account_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'account',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Account',
            'relationName': 'AccountToProductCategory',
            'relationFromFields': ['account_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'parent',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ProductCategory',
            'relationName': 'ParentCategory',
            'relationFromFields': ['parent_category'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'children',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ProductCategory',
            'relationName': 'ParentCategory',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'products',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Product',
            'relationName': 'ProductToProductCategory',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Lote',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'quantity_minimum',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'quantity_current',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expiration_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'creation_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'purchase_price',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Float',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'product',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Product',
            'relationName': 'LoteToProduct',
            'relationFromFields': ['product_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'lote_updates',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'LoteUpdates',
            'relationName': 'LoteToLoteUpdates',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'shopping_list',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ShoppingList',
            'relationName': 'LoteToShoppingList',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'LoteUpdates',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'stock_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'update_time',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'quantity_delta',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'lote',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Lote',
            'relationName': 'LoteToLoteUpdates',
            'relationFromFields': ['stock_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ShoppingList',
        'dbName': null,
        'fields': [
          {
            'name': 'stock_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'count',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'lote',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Lote',
            'relationName': 'LoteToShoppingList',
            'relationFromFields': ['stock_id'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'Account',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Account',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Product',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Product',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Product',
        'type': 'normal',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'account_id'}
        ],
      },
      {
        'model': 'Product',
        'type': 'normal',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'product_category_id'}
        ],
      },
      {
        'model': 'ProductCategory',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'ProductCategory',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'ProductCategory',
        'type': 'normal',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'account_id'}
        ],
      },
      {
        'model': 'ProductCategory',
        'type': 'normal',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'parent_category'}
        ],
      },
      {
        'model': 'Lote',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Lote',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'Lote',
        'type': 'normal',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'product_id'}
        ],
      },
      {
        'model': 'LoteUpdates',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'LoteUpdates',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'LoteUpdates',
        'type': 'normal',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'stock_id'}
        ],
      },
      {
        'model': 'ShoppingList',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'stock_id'}
        ],
      },
      {
        'model': 'ShoppingList',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'stock_id'}
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.LibraryEngine(
        schema:
            'generator client {\n  provider   = "dart run orm"\n  output     = "../lib/_generated_prisma_client"\n  engineType = "flutter"\n}\n\ndatasource db {\n  provider = "sqlite"\n  url      = "file:./dev.db"\n}\n\nmodel Account {\n  id          Int               @id @unique @default(autoincrement())\n  name        String\n  user_name   String\n  description String?\n  products    Product[]\n  categories  ProductCategory[]\n}\n\nmodel Product {\n  id                  Int              @id @unique @default(autoincrement())\n  account_id          Int\n  description         String?\n  product_category_id Int?\n  name                String\n  barcode_content     String?\n  account             Account          @relation(fields: [account_id], references: [id])\n  category            ProductCategory? @relation(fields: [product_category_id], references: [id])\n  lotes               Lote[]\n\n  @@index([account_id])\n  @@index([product_category_id])\n}\n\nmodel ProductCategory {\n  id              Int               @id @unique @default(autoincrement())\n  parent_category Int?\n  account_id      Int\n  name            String?\n  description     String?\n  account         Account           @relation(fields: [account_id], references: [id])\n  parent          ProductCategory?  @relation("ParentCategory", fields: [parent_category], references: [id])\n  children        ProductCategory[] @relation("ParentCategory")\n  products        Product[]\n\n  @@index([account_id])\n  @@index([parent_category])\n}\n\nmodel Lote {\n  id               Int           @id @unique @default(autoincrement())\n  product_id       Int\n  quantity_minimum Int\n  quantity_current Int\n  expiration_date  DateTime?\n  creation_date    DateTime      @default(now())\n  purchase_price   Float?\n  product          Product       @relation(fields: [product_id], references: [id])\n  lote_updates     LoteUpdates[]\n  shopping_list    ShoppingList?\n\n  @@index([product_id])\n}\n\nmodel LoteUpdates {\n  id             Int      @id @unique @default(autoincrement())\n  stock_id       Int\n  update_time    DateTime @default(now())\n  quantity_delta Int\n  lote           Lote     @relation(fields: [stock_id], references: [id])\n\n  @@index([stock_id])\n}\n\nmodel ShoppingList {\n  stock_id Int  @id @unique\n  count    Int?\n  lote     Lote @relation(fields: [stock_id], references: [id])\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.url,
            'file:./dev.db',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  AccountDelegate get account => AccountDelegate._(this);

  ProductDelegate get product => ProductDelegate._(this);

  ProductCategoryDelegate get productCategory =>
      ProductCategoryDelegate._(this);

  LoteDelegate get lote => LoteDelegate._(this);

  LoteUpdatesDelegate get loteUpdates => LoteUpdatesDelegate._(this);

  ShoppingListDelegate get shoppingList => ShoppingListDelegate._(this);
}
