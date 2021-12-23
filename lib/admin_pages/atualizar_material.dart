import 'package:app_biblioteca_digital/widget/form_input.dart';
import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:app_biblioteca_digital/widget/my_elevated_button.dart';
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
            backgroundColor: MyColors.my_green),
        body: MyForm());
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: ListView(padding: const EdgeInsets.all(16), children: <Widget>[
          const SizedBox(height: 30),
          const MyFormInput(
              label: 'Descrição',
              hint: 'Digite a descrição do material',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Link',
              hint:
                  'Digite o link para visualizar ou fazer o download do material',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const SizedBox(height: 15),
          MyElevatedButton(text: 'Atualizar', onPressed: () {}),
        ]));
  }
}
