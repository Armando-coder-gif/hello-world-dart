import 'package:flutter/material.dart';

void main() {
  // widget inicial
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta de debug en la pantalla
      home: Scaffold(
        body:Center(child: Text("Hola mundo")),
      ),

    );
  }
}
