import 'package:meta/meta.dart';

class Usuario {
  final String apelido;
  final String nome;
  final String sobrenome;
  final String datanasc;
  final String senha;
  final String email;
  final int idAdm;

  const Usuario(
      @required this.apelido,
      @required this.nome,
      @required this.sobrenome,
      @required this.datanasc,
      @required this.senha,
      @required this.email,
      @required this.idAdm);

  Map<String, dynamic> toMap() {
    return {
      'apelido': apelido,
      'nome': nome,
      'sobrenome': sobrenome,
      'datanasc': datanasc,
      'senha': senha,
      'email': email,
      'idAdm': idAdm
    };
  }
}
