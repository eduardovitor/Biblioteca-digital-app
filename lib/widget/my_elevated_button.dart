import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final dynamic Function()? onPressed;
  const MyElevatedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
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
        onPressed: onPressed,
        child: Text(text));
  }
}
