import 'package:app_biblioteca_digital/start_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  runApp(const MaterialApp(home: StartPage()));
}
