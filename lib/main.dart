import 'package:flutter/material.dart';
import 'package:moussa_alkathem_hammoud/flip_coin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home :Scaffold(
       body: FlipCoin(),),
    );
  }
}

