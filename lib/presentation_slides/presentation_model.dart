import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

buildPresentationModel(String texto1, String texto2, String path) {
  return Center(
    child: Column(children: [
      const Flexible(
          child: FractionallySizedBox(
        heightFactor: 0.6,
      )),
      Padding(
          padding: const EdgeInsets.all(7),
          child: Text(texto1,
              style: GoogleFonts.carterOne(
                  textStyle: const TextStyle(
                      fontSize: 25, color: MyColors.my_green)))),
      Padding(
          padding: const EdgeInsets.all(7),
          child: Text(texto2,
              style: GoogleFonts.carterOne(
                  textStyle: const TextStyle(
                      fontSize: 13, color: Color(0xFF768c83))))),
      const Flexible(
          child: FractionallySizedBox(
        heightFactor: 0.4,
      )),
      Flexible(
          child: FractionallySizedBox(
              heightFactor: 2, child: Image(image: AssetImage(path))))
    ]),
  );
}
