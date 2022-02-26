import 'dart:convert';
import 'package:app_biblioteca_digital/model/livro.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class LivroProvider with ChangeNotifier {
  Future<void> put(Livro livro) async {
    if (livro == null && livro.isbn != null && !livro.isbn.trim().isEmpty) {
      return;
    } else {
      DatabaseReference ref = FirebaseDatabase.instance.ref("livro");

      await ref.set({
        'isbn': livro.isbn,
        'titulo': livro.titulo,
        'autor': livro.autor,
        'anopublic': livro.anopubli,
        'editora': livro.editora,
        'genero': livro.genero,
        'pais': livro.pais,
        'volume': livro.volume,
        'link': livro.link
      });
    }
    notifyListeners();
  }
}

void remove(Livro livro) {
  if (livro != null && livro.isbn != null) {
    print(livro.isbn);
  }
}
