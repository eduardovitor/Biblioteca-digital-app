import 'package:app_biblioteca_digital/form_input.dart';
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
            backgroundColor: const Color(0xFF61b98e)),
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
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'Matrícula (opcional)', validator: checkFieldEmpty),
          const SizedBox(height: 15),
          const MyFormInput(
              label: 'ID de administrador (opcional) ',
              validator: checkFieldEmpty),
          const SizedBox(height: 15),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  primary: Color(0xFF61b98e),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  )),
              onPressed: () {},
              child: Text("Salvar alterações")),
        ]));
  }
}
