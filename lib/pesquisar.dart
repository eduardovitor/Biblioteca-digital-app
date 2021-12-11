import 'package:app_biblioteca_digital/card_genero.dart';
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
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 2,
            children: <Widget>[
              CardGenero(
                  url_imagem:
                      'https://images-na.ssl-images-amazon.com/images/I/81ZUTqZPK9L.jpg',
                  genero: 'Biografia',
                  cor: Colors.black),
              CardGenero(
                  url_imagem:
                      'https://lojasaraiva.vteximg.com.br/arquivos/ids/12104715/1008975660.jpg?v=637142231219470000',
                  genero: 'Terror',
                  cor: Colors.redAccent),
              CardGenero(
                  url_imagem:
                      'https://m.media-amazon.com/images/I/51OVtZk6LUL.jpg',
                  genero: 'Detetive',
                  cor: Colors.blueAccent)
            ]));
  }
}
