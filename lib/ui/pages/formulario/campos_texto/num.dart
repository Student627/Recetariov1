import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoNum extends StatefulWidget {
  const CampoNum({Key? key}) : super(key: key);

  @override
  _CampoNumState createState() => _CampoNumState();
}

String phonenumber = "";

class _CampoNumState extends State<CampoNum> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              maxLength: 10,
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9]+|\s'),
                ),
              ],
              decoration: const InputDecoration(labelText: "Telefono"),
              onSaved: (value) {
                phonenumber = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Aqui va el numero telefonico";
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
