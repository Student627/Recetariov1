import 'package:flutter/material.dart';
import 'package:recetario_v1/ui/widgets/boton.dart';

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/cocina.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const Boton(),
          ],
        ),
      ),
    );
  }
}
