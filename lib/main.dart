import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/constants.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),debugShowCheckedModeBanner: false,
  )); //MaterialApp
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor:primary,
        foregroundColor: secondary,
      ),
      body: Text("First App"),
    );
  }
}
