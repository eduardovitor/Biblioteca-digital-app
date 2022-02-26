import 'package:meta/meta.dart';

class Livro {
  final String isbn;
  final String titulo;
  final String autor;
  final String anopubli;
  final String editora;
  final String genero;
  final String pais;
  final int volume;
  final String link;

  const Livro(
      @required this.isbn,
      @required this.titulo,
      @required this.autor,
      @required this.anopubli,
      @required this.editora,
      @required this.genero,
      @required this.pais,
      @required this.volume,
      @required this.link);

  Map<String, dynamic> toMap() {
    return {
      'isbn': isbn,
      'titulo': titulo,
      'autor': autor,
      'anopublic': anopubli,
      'editora': editora,
      'genero': genero,
      'pais': pais,
      'volume': volume,
      'link': link
    };
  }
}
