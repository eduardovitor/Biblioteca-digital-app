import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Favoritos',
          style: GoogleFonts.carterOne(
              textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))),
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF61b98e),
    ));
  }
}
