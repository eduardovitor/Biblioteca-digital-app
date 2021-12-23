import 'package:app_biblioteca_digital/widget/form_input.dart';
import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:app_biblioteca_digital/widget/my_elevated_button.dart';
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
            backgroundColor: MyColors.my_green),
        body: buildBody());
  }
}

buildBody() {
  return Column(children: [
    buildFormInputPadding(),
    MyElevatedButton(text: 'Remover material', onPressed: () {})
  ]);
}

buildFormInputPadding() {
  return const Padding(
      padding: EdgeInsets.all(16),
      child: MyFormInput(label: 'ID', hint: 'Digite o ID do material'));
}
