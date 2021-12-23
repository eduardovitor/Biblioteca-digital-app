import 'package:app_biblioteca_digital/widget/form_input.dart';
import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:app_biblioteca_digital/widget/my_custom_text.dart';
import 'package:app_biblioteca_digital/widget/my_elevated_button.dart';
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
              label: 'Título',
              hint: 'Digite o título do livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Autor',
              hint: 'Digite o autor do livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Ano de publicação',
              hint: 'Digite o ano de publicação',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Gênero',
              hint: 'Digite o gênero de livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'ISBN',
              hint: 'Digite o IBSN do livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Editora',
              hint: 'Digite a editora do livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Volume',
              hint: 'Digite o volume do livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'País',
              hint: 'Digite o país de publicação do livro',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Link',
              hint: 'Digite o link para download',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const SizedBox(height: 15),
          MyElevatedButton(text: 'Atualizar', onPressed: () {}),
        ]));
  }
}
