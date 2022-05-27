import 'package:flutter/material.dart';
import 'package:projetos/Pages/login.dart';

void main() {
  runApp(const CentelhaApp());
}

class CentelhaApp extends StatelessWidget {
  const CentelhaApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A centelha Divina',
      home: LoginCcu(),
    );
  }
}
