import 'package:flutter/material.dart';

TextButton buttonText() {
  return TextButton(
    child: const Text("Set a goal", style: TextStyle(fontSize: 14)),
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(1),
        padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(horizontal: 21)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: const BorderSide(color: Colors.greenAccent)))),
    onPressed: () {},
  );
}
