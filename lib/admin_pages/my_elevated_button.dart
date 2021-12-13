import 'package:flutter/material.dart';

class MyElevatedButton extends StatefulWidget {
  final String text;
  const MyElevatedButton({Key? key, required this.text}) : super(key: key);

  @override
  _MyElevatedButtonState createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  String get text => widget.text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 40),
            primary: const Color(0xFF61b98e),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            )),
        onPressed: () {},
        child: Text(text));
  }
}
