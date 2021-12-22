import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:flutter/material.dart';

class AtualizarMaterial extends StatefulWidget {
  const AtualizarMaterial({Key? key}) : super(key: key);

  @override
  _AtualizarMaterialState createState() => _AtualizarMaterialState();
}

class _AtualizarMaterialState extends State<AtualizarMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Atualizar material', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green));
  }
}
