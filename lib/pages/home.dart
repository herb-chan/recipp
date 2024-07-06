import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
          child: Container(
        child: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}
