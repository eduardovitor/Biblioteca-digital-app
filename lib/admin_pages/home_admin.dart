import 'package:app_biblioteca_digital/admin_pages/atualizar_livro.dart';
import 'package:app_biblioteca_digital/admin_pages/atualizar_material.dart';
import 'package:app_biblioteca_digital/admin_pages/cadastro_livro.dart';
import 'package:app_biblioteca_digital/admin_pages/cadastro_material.dart';
import 'package:app_biblioteca_digital/admin_pages/pesquisar_livro.dart';
import 'package:app_biblioteca_digital/admin_pages/remover_livro.dart';
import 'package:app_biblioteca_digital/admin_pages/remover_material.dart';
import 'package:app_biblioteca_digital/widget/my_elevated_button.dart';
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

  irParaCadastroLivro() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CadastroLivro()));
  }

  irParaCadastroMaterial() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CadastroMaterial()));
  }

  irParaAtualizarLivro() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AtualizarLivro()));
  }

  irParaAtualizarMaterial() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AtualizarMaterial()));
  }

  irParaPesquisarLivro() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PesquisarLivro()));
  }

  irParaRemoverLivro() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RemoverLivro()));
  }

  irParaRemoverMaterial() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RemoverMaterial()));
  }

  buildBody() {
    return Padding(
        padding: const EdgeInsets.only(left: 65),
        child: Column(
          children: [
            SizedBox(height: 5),
            MyElevatedButton(
                text: 'Cadastrar livro', onPressed: irParaCadastroLivro),
            SizedBox(height: 5),
            MyElevatedButton(
              text: 'Cadastrar um material',
              onPressed: irParaCadastroMaterial,
            ),
            SizedBox(height: 5),
            MyElevatedButton(
                text: 'Atualizar um livro', onPressed: irParaAtualizarLivro),
            SizedBox(height: 5),
            MyElevatedButton(
                text: 'Atualizar um material',
                onPressed: irParaAtualizarMaterial),
            SizedBox(height: 5),
            MyElevatedButton(
                text: 'Pesquisar um livro', onPressed: irParaPesquisarLivro),
            SizedBox(height: 5),
            MyElevatedButton(
                text: 'Remover um livro', onPressed: irParaRemoverLivro),
            SizedBox(height: 5),
            MyElevatedButton(
                text: 'Remover um material', onPressed: irParaRemoverMaterial),
            SizedBox(height: 5),
            MyElevatedButton(text: 'Sair', onPressed: teste)
          ],
        ));
  }
}

teste() {}
