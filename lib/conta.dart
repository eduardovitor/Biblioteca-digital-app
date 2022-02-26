import 'package:app_biblioteca_digital/admin_pages/home_admin.dart';
import 'package:app_biblioteca_digital/model/usuario.dart';
import 'package:app_biblioteca_digital/provider/usuario_provider.dart';
import 'package:app_biblioteca_digital/widget/form_input.dart';
import 'package:app_biblioteca_digital/widget/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Conta extends StatefulWidget {
  const Conta({Key? key}) : super(key: key);

  @override
  _ContaState createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Perfil',
                style: GoogleFonts.carterOne(
                    textStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
            automaticallyImplyLeading: false,
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
          const MyFormInput(
              label: 'Nome', hint: 'Digite o nome', validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Sobrenome',
              hint: 'Digite o sobrenome',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Data de nascimento',
              hint: 'Digite a data de nascimento',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Email',
              hint: 'Digite o email',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Senha',
              hint: 'Digite a senha',
              validator: checkFieldEmpty,
              isTextObscured: true),
          const SizedBox(height: 15),
          const MyFormInput(label: 'Matrícula (opcional)'),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'ID de administrador (opcional) ',
              validator: checkFieldEmpty),
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
                    MaterialPageRoute(builder: (context) => HomeAdmin()),
                  );
                }
              },
              child: Text("Salvar alterações")),
        ]));
  }
}
