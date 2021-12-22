import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:flutter/material.dart';

class AtualizarLivro extends StatefulWidget {
  const AtualizarLivro({Key? key}) : super(key: key);

  @override
  _AtualizarLivroState createState() => _AtualizarLivroState();
}

class _AtualizarLivroState extends State<AtualizarLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Atualizar livro', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green));
  }
}
