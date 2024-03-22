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
    return  MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta de debug en la pantalla
      theme: ThemeData(
        useMaterial3: true, // se pueden editar los widgets como aparecen en material3
        colorSchemeSeed: Colors.blue, // crea una paleta de colores
      ),
      home: const CounterScreen(),

    );
  }
}
