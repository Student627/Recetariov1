import 'package:flutter/material.dart';
import 'package:recetario_v1/ui/pages/formulario/formulario.dart';
import 'package:recetario_v1/ui/pages/menuRecetas/recetas.dart';
import 'package:recetario_v1/ui/pages/receta_sencilla/receta_sencilla.dart';
import 'package:recetario_v1/ui/widgets/creditos.dart';

class Boton extends StatefulWidget {
  const Boton({Key? key}) : super(key: key);

  @override
  _BotonState createState() => _BotonState();
}

class _BotonState extends State<Boton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Aprende a cocinar facil y rapido",
          style: TextStyle(
            fontSize: 14,
            height: 1.5,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const receta_sencilla()));
            },
            child: const Text("Receta sencilla")),
        OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const receta_sencilla()));
            },
            child: const Text("Receta Rapida")),
        OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Menusencillo()));
            },
            child: const Text("Descargadas")),
        OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const formulario()));
            },
            child: const Text("Registrarse")),
        const Creditos()
      ],
    );
  }
}
