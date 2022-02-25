import 'dart:convert';
import 'package:app_biblioteca_digital/model/usuario.dart';
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
    if (usuario == null) {
      return;
    }

    if (usuario.id != null && _usuarios.containsKey(usuario.id)) {
      _usuarios.update(
          usuario.id.toString(),
          (_) => Usuario(usuario.id, usuario.nome, usuario.sobrenome,
              usuario.datanasc, usuario.senha, usuario.email, usuario.idAdm));
    } else {
      final response = await http.post(Uri.parse('$_url/test.json'),
          body: json.encode({
            'id': usuario.id,
            'nome': usuario.nome,
            'sobrenome': usuario.sobrenome,
            'datanasc': usuario.datanasc,
            'senha': usuario.senha,
            'email': usuario.email,
            'idAdm': usuario.idAdm
          }));

      final id = json.decode(response.body)['nome'];

      _usuarios.putIfAbsent(
          id,
          () => Usuario(id, usuario.nome, usuario.sobrenome, usuario.datanasc,
              usuario.senha, usuario.email, usuario.idAdm));

      notifyListeners();
    }
  }

  void remove(Usuario usuario) {
    if (usuario != null && usuario.id != null) {
      _usuarios.remove(usuario.id);

      notifyListeners();
    }
  }

  Future<bool> login(email, senha) async {
    final response = await http.post(Uri.parse('$_url/livro.json'),
        body: json.encode({
          'email': email,
          'senha': senha,
        }));
  }
}
