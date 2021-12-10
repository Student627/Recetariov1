import 'package:flutter/material.dart';
import 'package:recetario_v1/ui/pages/receta_sencilla/receta_sencilla.dart';

class Menusencillo extends StatefulWidget {
  const Menusencillo({Key? key}) : super(key: key);

  @override
  _MenusencilloState createState() => _MenusencilloState();
}

class _MenusencilloState extends State<Menusencillo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recetas sencillas"),
      ),
      body: Center(
        child: Column(
          children: [menuRecetas1()],
        ),
      ),
    );
  }
}

class menuRecetas1 extends StatelessWidget {
  const menuRecetas1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 80,
                color: Colors.blue,
                child: Center(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const receta_sencilla()));
                      },
                      child: const Text(
                        "Receta Arroz",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      )),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                height: 80,
                color: Colors.red,
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const receta_sencilla()));
                      },
                      child: const Text(
                        "Arroz Blanco",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
