// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class ProductCategory {
  const ProductCategory({
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

  factory ProductCategory.fromJson(Map json) => ProductCategory(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
        name: json['name'],
        description: json['description'],
        account: json['account'] is Map
            ? _i1.Account.fromJson(json['account'])
            : null,
        parent: json['parent'] is Map
            ? _i1.ProductCategory.fromJson(json['parent'])
            : null,
        children: (json['children'] as Iterable?)
            ?.map((json) => _i1.ProductCategory.fromJson(json)),
        products: (json['products'] as Iterable?)
            ?.map((json) => _i1.Product.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.ProductCategoryCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  final String? name;

  final String? description;

  final _i1.Account? account;

  final _i1.ProductCategory? parent;

  final Iterable<_i1.ProductCategory>? children;

  final Iterable<_i1.Product>? products;

  final _i2.ProductCategoryCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account?.toJson(),
        'parent': parent?.toJson(),
        'children': children?.map((e) => e.toJson()),
        'products': products?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class LoteUpdates {
  const LoteUpdates({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  factory LoteUpdates.fromJson(Map json) => LoteUpdates(
        id: json['id'],
        stockId: json['stock_id'],
        updateTime: switch (json['update_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['update_time']
        },
        quantityDelta: json['quantity_delta'],
        lote: json['lote'] is Map ? _i1.Lote.fromJson(json['lote']) : null,
      );

  final int? id;

  final int? stockId;

  final DateTime? updateTime;

  final int? quantityDelta;

  final _i1.Lote? lote;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime?.toIso8601String(),
        'quantity_delta': quantityDelta,
        'lote': lote?.toJson(),
      };
}

class ShoppingList {
  const ShoppingList({
    this.stockId,
    this.count,
    this.lote,
  });

  factory ShoppingList.fromJson(Map json) => ShoppingList(
        stockId: json['stock_id'],
        count: json['count'],
        lote: json['lote'] is Map ? _i1.Lote.fromJson(json['lote']) : null,
      );

  final int? stockId;

  final int? count;

  final _i1.Lote? lote;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        'lote': lote?.toJson(),
      };
}

class Lote {
  const Lote({
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

  factory Lote.fromJson(Map json) => Lote(
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
        product: json['product'] is Map
            ? _i1.Product.fromJson(json['product'])
            : null,
        loteUpdates: (json['lote_updates'] as Iterable?)
            ?.map((json) => _i1.LoteUpdates.fromJson(json)),
        shoppingList: json['shopping_list'] is Map
            ? _i1.ShoppingList.fromJson(json['shopping_list'])
            : null,
        $count: json['_count'] is Map
            ? _i2.LoteCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final DateTime? expirationDate;

  final DateTime? creationDate;

  final double? purchasePrice;

  final _i1.Product? product;

  final Iterable<_i1.LoteUpdates>? loteUpdates;

  final _i1.ShoppingList? shoppingList;

  final _i2.LoteCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate?.toIso8601String(),
        'creation_date': creationDate?.toIso8601String(),
        'purchase_price': purchasePrice,
        'product': product?.toJson(),
        'lote_updates': loteUpdates?.map((e) => e.toJson()),
        'shopping_list': shoppingList?.toJson(),
        '_count': $count?.toJson(),
      };
}

class Product {
  const Product({
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

  factory Product.fromJson(Map json) => Product(
        id: json['id'],
        accountId: json['account_id'],
        description: json['description'],
        productCategoryId: json['product_category_id'],
        name: json['name'],
        barcodeContent: json['barcode_content'],
        account: json['account'] is Map
            ? _i1.Account.fromJson(json['account'])
            : null,
        category: json['category'] is Map
            ? _i1.ProductCategory.fromJson(json['category'])
            : null,
        lotes: (json['lotes'] as Iterable?)
            ?.map((json) => _i1.Lote.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.ProductCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final int? accountId;

  final String? description;

  final int? productCategoryId;

  final String? name;

  final String? barcodeContent;

  final _i1.Account? account;

  final _i1.ProductCategory? category;

  final Iterable<_i1.Lote>? lotes;

  final _i2.ProductCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account?.toJson(),
        'category': category?.toJson(),
        'lotes': lotes?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Account {
  const Account({
    this.id,
    this.name,
    this.userName,
    this.description,
    this.products,
    this.categories,
    this.$count,
  });

  factory Account.fromJson(Map json) => Account(
        id: json['id'],
        name: json['name'],
        userName: json['user_name'],
        description: json['description'],
        products: (json['products'] as Iterable?)
            ?.map((json) => _i1.Product.fromJson(json)),
        categories: (json['categories'] as Iterable?)
            ?.map((json) => _i1.ProductCategory.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.AccountCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? name;

  final String? userName;

  final String? description;

  final Iterable<_i1.Product>? products;

  final Iterable<_i1.ProductCategory>? categories;

  final _i2.AccountCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'user_name': userName,
        'description': description,
        'products': products?.map((e) => e.toJson()),
        'categories': categories?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyAccountAndReturnOutputType {
  const CreateManyAccountAndReturnOutputType({
    this.id,
    this.name,
    this.userName,
    this.description,
  });

  factory CreateManyAccountAndReturnOutputType.fromJson(Map json) =>
      CreateManyAccountAndReturnOutputType(
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

class CreateManyProductAndReturnOutputType {
  const CreateManyProductAndReturnOutputType({
    this.id,
    this.accountId,
    this.description,
    this.productCategoryId,
    this.name,
    this.barcodeContent,
    this.account,
    this.category,
  });

  factory CreateManyProductAndReturnOutputType.fromJson(Map json) =>
      CreateManyProductAndReturnOutputType(
        id: json['id'],
        accountId: json['account_id'],
        description: json['description'],
        productCategoryId: json['product_category_id'],
        name: json['name'],
        barcodeContent: json['barcode_content'],
        account: json['account'] is Map
            ? _i1.Account.fromJson(json['account'])
            : null,
        category: json['category'] is Map
            ? _i1.ProductCategory.fromJson(json['category'])
            : null,
      );

  final int? id;

  final int? accountId;

  final String? description;

  final int? productCategoryId;

  final String? name;

  final String? barcodeContent;

  final _i1.Account? account;

  final _i1.ProductCategory? category;

  Map<String, dynamic> toJson() => {
        'id': id,
        'account_id': accountId,
        'description': description,
        'product_category_id': productCategoryId,
        'name': name,
        'barcode_content': barcodeContent,
        'account': account?.toJson(),
        'category': category?.toJson(),
      };
}

class CreateManyProductCategoryAndReturnOutputType {
  const CreateManyProductCategoryAndReturnOutputType({
    this.id,
    this.parentCategory,
    this.accountId,
    this.name,
    this.description,
    this.account,
    this.parent,
  });

  factory CreateManyProductCategoryAndReturnOutputType.fromJson(Map json) =>
      CreateManyProductCategoryAndReturnOutputType(
        id: json['id'],
        parentCategory: json['parent_category'],
        accountId: json['account_id'],
        name: json['name'],
        description: json['description'],
        account: json['account'] is Map
            ? _i1.Account.fromJson(json['account'])
            : null,
        parent: json['parent'] is Map
            ? _i1.ProductCategory.fromJson(json['parent'])
            : null,
      );

  final int? id;

  final int? parentCategory;

  final int? accountId;

  final String? name;

  final String? description;

  final _i1.Account? account;

  final _i1.ProductCategory? parent;

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_category': parentCategory,
        'account_id': accountId,
        'name': name,
        'description': description,
        'account': account?.toJson(),
        'parent': parent?.toJson(),
      };
}

class CreateManyLoteAndReturnOutputType {
  const CreateManyLoteAndReturnOutputType({
    this.id,
    this.productId,
    this.quantityMinimum,
    this.quantityCurrent,
    this.expirationDate,
    this.creationDate,
    this.purchasePrice,
    this.product,
  });

  factory CreateManyLoteAndReturnOutputType.fromJson(Map json) =>
      CreateManyLoteAndReturnOutputType(
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
        product: json['product'] is Map
            ? _i1.Product.fromJson(json['product'])
            : null,
      );

  final int? id;

  final int? productId;

  final int? quantityMinimum;

  final int? quantityCurrent;

  final DateTime? expirationDate;

  final DateTime? creationDate;

  final double? purchasePrice;

  final _i1.Product? product;

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_id': productId,
        'quantity_minimum': quantityMinimum,
        'quantity_current': quantityCurrent,
        'expiration_date': expirationDate?.toIso8601String(),
        'creation_date': creationDate?.toIso8601String(),
        'purchase_price': purchasePrice,
        'product': product?.toJson(),
      };
}

class CreateManyLoteUpdatesAndReturnOutputType {
  const CreateManyLoteUpdatesAndReturnOutputType({
    this.id,
    this.stockId,
    this.updateTime,
    this.quantityDelta,
    this.lote,
  });

  factory CreateManyLoteUpdatesAndReturnOutputType.fromJson(Map json) =>
      CreateManyLoteUpdatesAndReturnOutputType(
        id: json['id'],
        stockId: json['stock_id'],
        updateTime: switch (json['update_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['update_time']
        },
        quantityDelta: json['quantity_delta'],
        lote: json['lote'] is Map ? _i1.Lote.fromJson(json['lote']) : null,
      );

  final int? id;

  final int? stockId;

  final DateTime? updateTime;

  final int? quantityDelta;

  final _i1.Lote? lote;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stock_id': stockId,
        'update_time': updateTime?.toIso8601String(),
        'quantity_delta': quantityDelta,
        'lote': lote?.toJson(),
      };
}

class CreateManyShoppingListAndReturnOutputType {
  const CreateManyShoppingListAndReturnOutputType({
    this.stockId,
    this.count,
    this.lote,
  });

  factory CreateManyShoppingListAndReturnOutputType.fromJson(Map json) =>
      CreateManyShoppingListAndReturnOutputType(
        stockId: json['stock_id'],
        count: json['count'],
        lote: json['lote'] is Map ? _i1.Lote.fromJson(json['lote']) : null,
      );

  final int? stockId;

  final int? count;

  final _i1.Lote? lote;

  Map<String, dynamic> toJson() => {
        'stock_id': stockId,
        'count': count,
        'lote': lote?.toJson(),
      };
}
