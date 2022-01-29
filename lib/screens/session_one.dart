import 'package:flutter/material.dart';

class SessionOne extends StatelessWidget {
  const SessionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffffbf6),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/session.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
