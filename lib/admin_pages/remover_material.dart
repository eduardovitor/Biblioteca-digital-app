import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:flutter/material.dart';

class RemoverMaterial extends StatefulWidget {
  const RemoverMaterial({Key? key}) : super(key: key);

  @override
  _RemoverMaterialState createState() => _RemoverMaterialState();
}

class _RemoverMaterialState extends State<RemoverMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Remover material', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green));
  }
}
