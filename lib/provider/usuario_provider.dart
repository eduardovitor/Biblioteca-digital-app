import 'dart:convert';
import 'package:app_biblioteca_digital/model/usuario.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class UsuariosProvider with ChangeNotifier {
  final Map<String, Usuario> _usuarios = {};
  static const _url = 'https://roleapp-f7a94-default-rtdb.firebaseio.com/';

  List<Usuario> get all {
    return [..._usuarios.values];
  }

  int get count {
    return _usuarios.length;
  }

  Usuario byIndex(int i) {
    return _usuarios.values.elementAt(i);
  }

  Future<void> put(Usuario usuario) async {
    if (usuario == null &&
        usuario.apelido != null &&
        !usuario.apelido.trim().isEmpty) {
      return;
    } else {
      DatabaseReference ref = FirebaseDatabase.instance.ref('usuario');

      await ref.set({
        'apelido': usuario.apelido,
        'nome': usuario.nome,
        'sobrenome': usuario.sobrenome,
        'datanasc': usuario.datanasc,
        'senha': usuario.senha,
        'email': usuario.email,
        'idAdm': usuario.idAdm
      });
    }
    notifyListeners();
  }

  void remove(Usuario usuario) {
    if (usuario != null && usuario.apelido != null) {
      print('ok');
    }
  }
}
