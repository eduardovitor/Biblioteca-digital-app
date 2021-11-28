import 'package:flutter/material.dart';

import '../presentation_model.dart';

class Slide3 extends StatelessWidget {
  const Slide3({Key? key}) : super(key: key);
  final String texto1 = 'A biblioteca na palma \n               da sua mão';
  final String texto2 = 'Leve conhecimento com você aonde for';
  final String path = 'assets/library.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildPresentationModel(texto1, texto2, path));
  }
}
