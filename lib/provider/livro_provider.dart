import 'dart:convert';
import 'package:app_biblioteca_digital/model/livro.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class LivroProvider with ChangeNotifier {
  final Map<String, Livro> _livros = {};
  static const _url = 'https://roleapp-f7a94-default-rtdb.firebaseio.com/';

  List<Livro> get all {
    return [..._livros.values];
  }

  int get count {
    return _livros.length;
  }

  Livro byIndex(int i) {
    return _livros.values.elementAt(i);
  }

  Future<void> put(Livro livro) async {
    if (livro == null) {
      return;
    }

    if (livro.isbn != null && _livros.containsKey(livro.isbn)) {
      _livros.update(
          livro.isbn.toString(),
          (_) => Livro(
              livro.isbn,
              livro.titulo,
              livro.autor,
              livro.anopubli,
              livro.editora,
              livro.genero,
              livro.pais,
              livro.volume,
              livro.link));
    } else {
      final response = await http.post(Uri.parse('$_url/livro.json'),
          body: json.encode({
            'isbn': livro.isbn,
            'titulo': livro.titulo,
            'autor': livro.autor,
            'anopublic': livro.anopubli,
            'editora': livro.editora,
            'genero': livro.genero,
            'pais': livro.pais,
            'volume': livro.volume,
            'link': livro.link
          }));

      final id = json.decode(response.body)['autor'];

      _livros.putIfAbsent(
          id,
          () => Livro(
              livro.isbn,
              livro.titulo,
              livro.autor,
              livro.anopubli,
              livro.editora,
              livro.genero,
              livro.pais,
              livro.volume,
              livro.link));

      notifyListeners();
    }
  }

  void remove(Livro livro) {
    if (livro != null && livro.isbn != null) {
      _livros.remove(livro.isbn);

      notifyListeners();
    }
  }
}
