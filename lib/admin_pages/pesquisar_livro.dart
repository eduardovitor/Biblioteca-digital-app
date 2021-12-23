import 'package:app_biblioteca_digital/widget/form_input.dart';
import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:app_biblioteca_digital/widget/my_elevated_button.dart';
import 'package:flutter/material.dart';

class PesquisarLivro extends StatefulWidget {
  const PesquisarLivro({Key? key}) : super(key: key);

  @override
  _PesquisarLivroState createState() => _PesquisarLivroState();
}

class _PesquisarLivroState extends State<PesquisarLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const MyCustomText(
                text: 'Pesquisar livro', font_weight: FontWeight.bold),
            backgroundColor: MyColors.my_green),
        body: buildBody());
  }
}

buildBody() {
  return Column(
    children: [
      const SizedBox(height: 15),
      buildFormInputPadding(),
      MyElevatedButton(text: 'Pesquisar', onPressed: () {})
    ],
  );
}

buildFormInputPadding() {
  return const Padding(
      padding: EdgeInsets.all(16),
      child: MyFormInput(
          label: 'Pesquise por título do livro ou autor',
          icon: Icon(Icons.search)));
}
