import 'package:flutter/material.dart';
//import 'package:asistencia/page/homeus.dart';
import 'package:ass/page/splas.dart';
//import 'package:asistencia/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splascreen(), //HomePageUs(), //HomePageState(),
    );
  }
}
