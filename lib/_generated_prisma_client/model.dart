class User {
  const User({
    this.id,
    this.email,
    this.name,
  });

  factory User.fromJson(Map json) => User(
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

class CreateManyUserAndReturnOutputType {
  const CreateManyUserAndReturnOutputType({
    this.id,
    this.email,
    this.name,
  });

  factory CreateManyUserAndReturnOutputType.fromJson(Map json) =>
      CreateManyUserAndReturnOutputType(
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

class Macaco {
  const Macaco({
    this.id,
    this.cor,
  });

  factory Macaco.fromJson(Map json) => Macaco(
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

class CreateManyMacacoAndReturnOutputType {
  const CreateManyMacacoAndReturnOutputType({
    this.id,
    this.cor,
  });

  factory CreateManyMacacoAndReturnOutputType.fromJson(Map json) =>
      CreateManyMacacoAndReturnOutputType(
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
