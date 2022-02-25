import 'package:app_biblioteca_digital/admin_pages/home_admin.dart';
import 'package:app_biblioteca_digital/widget/form_input.dart';
import 'package:app_biblioteca_digital/model/livro.dart';
import 'package:app_biblioteca_digital/provider/livro_provider.dart';
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

  TextEditingController controllerTitulo = TextEditingController();
  TextEditingController controllerAutor = TextEditingController();
  TextEditingController controllerAno = TextEditingController();
  TextEditingController controllerGenero = TextEditingController();
  TextEditingController controllerISBN = TextEditingController();
  TextEditingController controllerEditora = TextEditingController();
  TextEditingController controllerVolume = TextEditingController();
  TextEditingController controllerPais = TextEditingController();
  TextEditingController controllerLink = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: ListView(padding: const EdgeInsets.all(16), children: <Widget>[
          const SizedBox(height: 30),
          MyFormInput(
              label: 'Título',
              hint: 'Digite o título do livro',
              validator: checkFieldEmpty,
              controller: controllerTitulo),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Autor',
              hint: 'Digite o autor do livro',
              validator: checkFieldEmpty,
              controller: controllerAutor),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Ano de publicação',
              hint: 'Digite o ano de publicação',
              validator: checkFieldEmpty,
              controller: controllerAno),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Gênero',
              hint: 'Digite o gênero de livro',
              validator: checkFieldEmpty,
              controller: controllerGenero),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'ISBN',
              hint: 'Digite o IBSN do livro',
              validator: checkFieldEmpty,
              controller: controllerISBN),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Editora',
              hint: 'Digite a editora do livro',
              validator: checkFieldEmpty,
              controller: controllerEditora),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Volume',
              hint: 'Digite o volume do livro',
              validator: checkFieldEmpty,
              controller: controllerVolume),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'País',
              hint: 'Digite o país de publicação do livro',
              validator: checkFieldEmpty,
              controller: controllerPais),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Link',
              hint: 'Digite o link para download',
              validator: checkFieldEmpty,
              controller: controllerLink),
          const SizedBox(height: 15),
          const SizedBox(height: 15),
          MyElevatedButton(text: 'Atualizar', onPressed: () {}),
        ]));
  }

  void onPressed() async {
    Livro livro = Livro(
        BigInt.parse(controllerISBN.text),
        controllerTitulo.text,
        controllerAutor.text,
        controllerAno.text,
        controllerEditora.text,
        controllerGenero.text,
        controllerPais.text,
        int.parse(controllerVolume.text),
        controllerLink.text);
    bool isValid = _formkey.currentState!.validate();
    if (isValid) {
      await LivroProvider().put(livro);
      pushHomePage();
    }
  }

  void pushHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeAdmin(),
      ),
    );
  }
}
