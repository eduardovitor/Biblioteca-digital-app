import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:flutter/material.dart';

class CadastroMaterial extends StatefulWidget {
  const CadastroMaterial({Key? key}) : super(key: key);

  @override
  _CadastroMaterialState createState() => _CadastroMaterialState();
}

class _CadastroMaterialState extends State<CadastroMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Cadastro de materiais', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green));
  }
}
