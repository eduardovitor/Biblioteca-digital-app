import 'package:meta/meta.dart';

class Usuario {
  final int id;
  final String nome;
  final String sobrenome;
  final String datanasc;
  final String senha;
  final String email;
  final int idAdm;

  const Usuario(
      this.id,
      @required this.nome,
      @required this.sobrenome,
      @required this.datanasc,
      @required this.senha,
      @required this.email,
      @required this.idAdm);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'sobrenome': sobrenome,
      'datanasc': datanasc,
      'senha': senha,
      'email': email,
      'idAdm': idAdm
    };
  }
}
