import 'package:app_biblioteca_digital/home.dart';
import 'package:app_biblioteca_digital/model/usuario.dart';
import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:app_biblioteca_digital/provider/usuario_provider.dart';

import 'widget/form_input.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyForm());
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formkey = GlobalKey<FormState>();

  final _provider = new UsuariosProvider();

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerSobrenome = TextEditingController();
  TextEditingController controllerApelido = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  TextEditingController controllerDatanasc = TextEditingController();
  TextEditingController controllerIDAdm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: ListView(padding: EdgeInsets.all(16), children: <Widget>[
          const SizedBox(height: 30),
          MyFormInput(
              label: 'Nome',
              hint: 'Digite o nome',
              validator: checkFieldEmpty,
              controller: controllerNome),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Sobrenome',
              hint: 'Digite o sobrenome',
              validator: checkFieldEmpty,
              controller: controllerSobrenome),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Apelido',
              hint: 'Escolha um apelido (será único)',
              validator: checkFieldEmpty,
              controller: controllerApelido),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Data de nascimento',
              hint: 'Digite sua data de nascimento',
              validator: checkFieldEmpty,
              controller: controllerDatanasc),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Email',
              hint: 'Digite seu email',
              validator: checkFieldEmpty,
              controller: controllerEmail),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'Senha',
              hint: 'Digite a senha',
              validator: checkFieldEmpty,
              controller: controllerSenha,
              isTextObscured: true),
          const SizedBox(height: 15),
          MyFormInput(
              label: 'ID de administrador (opcional)',
              validator: checkFieldEmpty,
              controller: controllerIDAdm),
          const SizedBox(height: 15),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  primary: MyColors.my_green,
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  )),
              onPressed: () async {
                if (_formkey.currentState!.validate()) {
                  Usuario usuario = Usuario(
                      controllerApelido.text,
                      controllerNome.text,
                      controllerSobrenome.text,
                      controllerDatanasc.text,
                      controllerSenha.text,
                      controllerEmail.text,
                      int.parse(controllerIDAdm.text));
                  await _provider.put(usuario);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('')),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                }
              },
              child: Text("Cadastrar")),
        ]));
  }
}
