import 'package:flutter/material.dart';

class Creditos extends StatefulWidget {
  const Creditos({Key? key}) : super(key: key);

  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "Creada por Luis Manuel Alemán Pérez",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }
}
