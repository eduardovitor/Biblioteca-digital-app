import 'package:app_biblioteca_digital/admin_pages/my_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  _HomeAdminState createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF61b98e),
          title: Text('Painel de administrador',
              style: GoogleFonts.carterOne(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)))),
      body: buildBody(),
    );
  }
}

buildBody() {
  return Padding(
      padding: const EdgeInsets.only(left: 65),
      child: Column(
        children: const [
          SizedBox(height: 5),
          MyElevatedButton(text: 'Cadastrar livro'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Cadastrar um material'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Atualizar um livro'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Atualizar um material'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Pesquisar um livro'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Remover um livro'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Remover um material'),
          SizedBox(height: 5),
          MyElevatedButton(text: 'Sair')
        ],
      ));
}
