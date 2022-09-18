import 'package:flutter/material.dart';

class SessionOne extends StatelessWidget {
  const SessionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) {
                return const SessionOne();
              }),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.green,
        ),
        elevation: 0,
        backgroundColor: const Color(0xfffffbf6),
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
