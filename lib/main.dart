import 'package:flutter/material.dart';
import 'package:recetario_v1/ui/pages/principal/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Material App',
        home: myhome());
  }
}
