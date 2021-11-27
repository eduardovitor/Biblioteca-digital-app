import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide2 extends StatelessWidget {
  const Slide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody());
  }
}

buildBody() {
  return Center(
    child: Column(children: [
      const SizedBox(height: 96),
      Padding(
          padding: const EdgeInsets.all(6),
          child: Text('Livros para todos os \n          humores',
              style: GoogleFonts.carterOne(
                  textStyle: const TextStyle(
                      fontSize: 25, color: Color(0xFF61b98e))))),
      Padding(
          padding: const EdgeInsets.all(6),
          child: Text('Leia, aprenda, disfrute, divirta-se!',
              style: GoogleFonts.carterOne(
                  textStyle: const TextStyle(
                      fontSize: 13, color: Color(0xFF768c83))))),
      const Image(
          image: AssetImage('assets/book-lover.png'), height: 400, width: 400)
    ]),
  );
}
