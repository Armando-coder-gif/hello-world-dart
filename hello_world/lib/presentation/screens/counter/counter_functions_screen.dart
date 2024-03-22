import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),
          //? es una lista de widgets
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  clickCounter = 0; //? puede estar antes o dentro del setState
                  setState(() {});
                })
          ], // colocarlo del otro lado. Antes estaba en el izq
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              (clickCounter == 1) ? 'Click' : 'Clicks',
              style: const TextStyle(
                fontSize: 25,
              ),
            )
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.refresh_rounded),
            const SizedBox(
              height: 10,
            ),
            CustomButton(icon: Icons.plus_one_outlined),
            const SizedBox(
              height: 10,
            ),
           CustomButton(icon: Icons.exposure_minus_1),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  // final onPress

  const CustomButton({
    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
