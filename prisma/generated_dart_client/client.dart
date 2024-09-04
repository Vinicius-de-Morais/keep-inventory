// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm_flutter/orm_flutter.dart' as _i5;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UserDelegate {
  const UserDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.User?> findUnique({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findUniqueUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findUniqueOrThrow({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findUniqueUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> findFirst({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findFirstUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findFirstOrThrow({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findFirstUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.User>> findMany({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.User>>(
      action: 'findManyUser',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.User.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User> create({
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
        data,
    _i3.UserSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'createOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.UserCreateManyInput,
              Iterable<_i3.UserCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyUserAndReturnOutputType>>
      createManyAndReturn({
    required _i1
        .PrismaUnion<_i3.UserCreateManyInput, Iterable<_i3.UserCreateManyInput>>
        data,
    _i3.CreateManyUserAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyUserAndReturnOutputType>>(
      action: 'createManyUserAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyUserAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User?> update({
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
        data,
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'updateOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UserUpdateManyMutationInput,
            _i3.UserUncheckedUpdateManyInput>
        data,
    _i3.UserWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User> upsert({
    required _i3.UserWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
        update,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'upsertOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> delete({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'deleteOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UserWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>> groupBy({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithAggregationInput>,
            _i3.UserOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UserScalar>, _i3.UserScalar> by,
    _i3.UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UserGroupByOutputTypeSelect? select,
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
      modelName: 'User',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>>(
      action: 'groupByUser',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UserGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUser> aggregate({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UserOrderByWithRelationInput>,
            _i3.UserOrderByWithRelationInput>?
        orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUserSelect? select,
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
      modelName: 'User',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUser>(
      action: 'aggregateUser',
      result: result,
      factory: (e) => _i3.AggregateUser.fromJson(e),
    );
  }
}

class MacacoDelegate {
  const MacacoDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Macaco?> findUnique({
    required _i3.MacacoWhereUniqueInput where,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco?>(
      action: 'findUniqueMacaco',
      result: result,
      factory: (e) => e != null ? _i2.Macaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Macaco> findUniqueOrThrow({
    required _i3.MacacoWhereUniqueInput where,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco>(
      action: 'findUniqueMacacoOrThrow',
      result: result,
      factory: (e) => _i2.Macaco.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Macaco?> findFirst({
    _i3.MacacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MacacoOrderByWithRelationInput>,
            _i3.MacacoOrderByWithRelationInput>?
        orderBy,
    _i3.MacacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MacacoScalar, Iterable<_i3.MacacoScalar>>? distinct,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco?>(
      action: 'findFirstMacaco',
      result: result,
      factory: (e) => e != null ? _i2.Macaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Macaco> findFirstOrThrow({
    _i3.MacacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MacacoOrderByWithRelationInput>,
            _i3.MacacoOrderByWithRelationInput>?
        orderBy,
    _i3.MacacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MacacoScalar, Iterable<_i3.MacacoScalar>>? distinct,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco>(
      action: 'findFirstMacacoOrThrow',
      result: result,
      factory: (e) => _i2.Macaco.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Macaco>> findMany({
    _i3.MacacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MacacoOrderByWithRelationInput>,
            _i3.MacacoOrderByWithRelationInput>?
        orderBy,
    _i3.MacacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MacacoScalar, Iterable<_i3.MacacoScalar>>? distinct,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Macaco>>(
      action: 'findManyMacaco',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Macaco.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Macaco> create({
    required _i1
        .PrismaUnion<_i3.MacacoCreateInput, _i3.MacacoUncheckedCreateInput>
        data,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco>(
      action: 'createOneMacaco',
      result: result,
      factory: (e) => _i2.Macaco.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.MacacoCreateManyInput,
              Iterable<_i3.MacacoCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyMacaco',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyMacacoAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.MacacoCreateManyInput,
            Iterable<_i3.MacacoCreateManyInput>>
        data,
    _i3.CreateManyMacacoAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyMacacoAndReturnOutputType>>(
      action: 'createManyMacacoAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyMacacoAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Macaco?> update({
    required _i1
        .PrismaUnion<_i3.MacacoUpdateInput, _i3.MacacoUncheckedUpdateInput>
        data,
    required _i3.MacacoWhereUniqueInput where,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco?>(
      action: 'updateOneMacaco',
      result: result,
      factory: (e) => e != null ? _i2.Macaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.MacacoUpdateManyMutationInput,
            _i3.MacacoUncheckedUpdateManyInput>
        data,
    _i3.MacacoWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyMacaco',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Macaco> upsert({
    required _i3.MacacoWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.MacacoCreateInput, _i3.MacacoUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.MacacoUpdateInput, _i3.MacacoUncheckedUpdateInput>
        update,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco>(
      action: 'upsertOneMacaco',
      result: result,
      factory: (e) => _i2.Macaco.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Macaco?> delete({
    required _i3.MacacoWhereUniqueInput where,
    _i3.MacacoSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Macaco?>(
      action: 'deleteOneMacaco',
      result: result,
      factory: (e) => e != null ? _i2.Macaco.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.MacacoWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyMacaco',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.MacacoGroupByOutputType>> groupBy({
    _i3.MacacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MacacoOrderByWithAggregationInput>,
            _i3.MacacoOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.MacacoScalar>, _i3.MacacoScalar> by,
    _i3.MacacoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.MacacoGroupByOutputTypeSelect? select,
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
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.MacacoGroupByOutputType>>(
      action: 'groupByMacaco',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.MacacoGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateMacaco> aggregate({
    _i3.MacacoWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MacacoOrderByWithRelationInput>,
            _i3.MacacoOrderByWithRelationInput>?
        orderBy,
    _i3.MacacoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateMacacoSelect? select,
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
      modelName: 'Macaco',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateMacaco>(
      action: 'aggregateMacaco',
      result: result,
      factory: (e) => _i3.AggregateMacaco.fromJson(e),
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
        'name': 'User',
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
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
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
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Macaco',
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
            'name': 'cor',
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
        'model': 'User',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'User',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'email'}
        ],
      },
      {
        'model': 'Macaco',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
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
            'generator client {\n  provider   = "dart run orm"\n  engineType = "flutter"\n}\n\ndatasource db {\n  provider = "sqlite"\n  url      = "file:./dev.db"\n}\n\nmodel User {\n  id    Int     @id @default(autoincrement())\n  email String  @unique\n  name  String?\n}\n\nmodel Macaco {\n  id  Int    @id @default(autoincrement())\n  cor String\n}\n',
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

  UserDelegate get user => UserDelegate._(this);

  MacacoDelegate get macaco => MacacoDelegate._(this);
}
