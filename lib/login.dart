import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          const SizedBox(height: 150),
          buildEmailInput(),
          const SizedBox(height: 15),
          buildSenhaInput(),
          const SizedBox(height: 25),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 40),
                  primary: Color(0xFF61b98e),
                  onPrimary: Colors.white),
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('')),
                  );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MenuPage()),
                  // );
                }
              },
              child: Text("Entrar")),
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
      decoration: InputDecoration(
          hintText: 'Digite seu email',
          labelText: 'Email',
          border: OutlineInputBorder()));
}

buildSenhaInput() {
  return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: 'Digite sua senha',
          labelText: 'Senha',
          border: OutlineInputBorder()));
}
