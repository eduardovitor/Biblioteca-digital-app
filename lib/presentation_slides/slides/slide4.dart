import 'package:flutter/material.dart';

import '../presentation_model.dart';

class Slide4 extends StatelessWidget {
  const Slide4({Key? key}) : super(key: key);
  final String texto1 = 'Descubra mais sobre \n seus assuntos favoritos';
  final String texto2 =
      ' Sejam livros didáticos ou paradidáticos, aqui você tem \n uma leitura produtiva e interessante ';
  final String path = 'assets/box.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildPresentationModel(texto1, texto2, path));
  }
}
