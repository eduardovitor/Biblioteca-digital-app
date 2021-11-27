import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Slide1 extends StatelessWidget {
  const Slide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody());
  }
}

buildBody() {
  return Center(
    child: Column(children: [
      const SizedBox(height: 96),
      const Image(
          image: AssetImage('assets/boy-reading.png'), height: 250, width: 250),
      const SizedBox(height: 32),
      Padding(
          padding: const EdgeInsets.all(6),
          child: Text('         Esse é o guia do \n estudante das galáxias',
              style: GoogleFonts.carterOne(
                  textStyle: const TextStyle(
                      fontSize: 25, color: Color(0xFF61b98e))))),
      const SizedBox(height: 80),
      Padding(
          padding: const EdgeInsets.all(6),
          child: Text(
              'Reza a lenda que tudo que você precisará \n para explorar o universo é uma toalha e \n este maravilhoso e engenhoso aplicativo',
              style: GoogleFonts.carterOne(
                  textStyle:
                      const TextStyle(fontSize: 13, color: Color(0xFF768c83)))))
    ]),
  );
}
