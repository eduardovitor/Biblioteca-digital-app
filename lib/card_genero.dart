import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardGenero extends StatefulWidget {
  final String url_imagem;
  final String genero;
  final Color cor;
  const CardGenero(
      {Key? key,
      required this.url_imagem,
      required this.genero,
      required this.cor})
      : super(key: key);

  @override
  _CardGeneroState createState() => _CardGeneroState();
}

class _CardGeneroState extends State<CardGenero> {
  String get url_imagem => widget.url_imagem;
  String get genero => widget.genero;
  Color get cor => widget.cor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            color: cor,
            child: buildImageWidget()));
  }

  buildImageWidget() {
    return Column(
      children: [buildTextGenero(), buildImage()],
    );
  }

  buildImage() {
    return Image.network(url_imagem, height: 100, width: 100);
  }

  buildTextGenero() {
    return Text(genero,
        style: GoogleFonts.carterOne(
            textStyle: const TextStyle(fontSize: 16, color: Colors.white)));
  }
}
