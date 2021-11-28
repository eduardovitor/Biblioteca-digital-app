import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presentation_model.dart';

class Slide2 extends StatelessWidget {
  const Slide2({Key? key}) : super(key: key);
  final String texto1 = 'Livros para todos os \n          humores';
  final String texto2 = 'Leia, aprenda, disfrute, divirta-se!';
  final String path = 'assets/book-lover.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildPresentationModel(texto1, texto2, path));
  }
}
