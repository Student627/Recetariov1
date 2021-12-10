import 'package:flutter/material.dart';

class CampoEmail extends StatefulWidget {
  const CampoEmail({Key? key}) : super(key: key);

  @override
  _CampoEmailState createState() => _CampoEmailState();
}

String email = "";

class _CampoEmailState extends State<CampoEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.email,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Correo"),
              onSaved: (value) {
                email = value!;
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
