import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pesquisar extends StatefulWidget {
  const Pesquisar({Key? key}) : super(key: key);

  @override
  _PesquisarState createState() => _PesquisarState();
}

class _PesquisarState extends State<Pesquisar> {
  Icon customIcon = const Icon(Icons.search, color: Colors.white);
  Widget customSearchBar = Text('Pesquisar livros',
      style: GoogleFonts.carterOne(
          textStyle: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'Autores, livros ou ISBN',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = Text('Pesquisar livros',
                      style: GoogleFonts.carterOne(
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)));
                }
              });
            },
            icon: customIcon,
          )
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF61b98e),
      ),
    );
  }
}
