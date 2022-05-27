import 'dart:convert';

class CadastroModel {
  String nome;
  String cpf;
  String celular;
  String email;
  String senha;
  CadastroModel({
    required this.nome,
    required this.cpf,
    required this.celular,
    required this.email,
    required this.senha,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'cpf': cpf,
      'celular': celular,
      'email': email,
      'senha': senha,
    };
  }

  factory CadastroModel.fromMap(Map<String, dynamic> map) {
    return CadastroModel(
      nome: map['nome'],
      cpf: map['cpf'],
      celular: map['celular'],
      email: map['email'],
      senha: map['senha'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CadastroModel.fromJson(String source) =>
      CadastroModel.fromMap(json.decode(source));
}
