import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:flutter/material.dart';

class RemoverLivro extends StatefulWidget {
  const RemoverLivro({Key? key}) : super(key: key);

  @override
  _RemoverLivroState createState() => _RemoverLivroState();
}

class _RemoverLivroState extends State<RemoverLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Remover livros', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green));
  }
}
