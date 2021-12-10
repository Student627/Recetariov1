import 'package:flutter/material.dart';

class CampoNombre extends StatefulWidget {
  const CampoNombre({Key? key}) : super(key: key);

  @override
  _CampoNombreState createState() => _CampoNombreState();
}

String nameValue = "";

class _CampoNombreState extends State<CampoNombre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Nombre"),
              onSaved: (value) {
                nameValue = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Llene este campo";
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
