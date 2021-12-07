import 'package:app_biblioteca_digital/home.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: ListView(padding: EdgeInsets.all(16), children: <Widget>[
          const SizedBox(height: 30),
          buildNomeInput(),
          const SizedBox(height: 15),
          buildSobrenomeInput(),
          const SizedBox(height: 15),
          buildDataNascInput(),
          const SizedBox(height: 15),
          buildEmailInput(),
          const SizedBox(height: 15),
          buildSenhaInput(),
          const SizedBox(height: 15),
          buildMatriculaInput(),
          const SizedBox(height: 15),
          buildIdAdminInput(),
          const SizedBox(height: 15),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  primary: Color(0xFF61b98e),
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  )),
              onPressed: () {
                if (_formkey.currentState!.validate()) {
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

buildEmailInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite seu email',
          labelText: 'Email',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}

buildSenhaInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite sua senha',
          labelText: 'Senha',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}

buildNomeInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite seu nome',
          labelText: 'Nome',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}

buildSobrenomeInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite seu sobrenome',
          labelText: 'Sobrenome',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}

buildDataNascInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite sua data de nascimento',
          labelText: 'Data de nascimento',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}

buildMatriculaInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite sua matrícula',
          labelText: 'Matrícula (opcional)',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}

buildIdAdminInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor digite algo';
        }
        return null;
      },
      cursorColor: Color(0xFF61b98e),
      decoration: InputDecoration(
          hintText: 'Digite seu ID de adminstrador',
          labelText: 'ID de administrador (opcional)',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(30),
              borderSide: BorderSide(color: Color(0xFF61b98e)))));
}
