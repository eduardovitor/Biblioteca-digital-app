import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:flutter/material.dart';

import '../widget/my_custom_text.dart';

class CadastroLivro extends StatefulWidget {
  const CadastroLivro({Key? key}) : super(key: key);

  @override
  _CadastroLivroState createState() => _CadastroLivroState();
}

class _CadastroLivroState extends State<CadastroLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Cadastro de livros', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green));
  }
}
