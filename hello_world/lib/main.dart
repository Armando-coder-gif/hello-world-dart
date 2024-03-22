import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/counter/counter_screen.dart';

void main() {
  // widget inicial
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta de debug en la pantalla
      home: CounterScreen(),

    );
  }
}
