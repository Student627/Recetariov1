import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recetario_v1/ui/pages/principal/home.dart';

class formulario extends StatefulWidget {
  const formulario({Key? key}) : super(key: key);

  @override
  _formularioState createState() => _formularioState();
}

String nameValue = "";
String lastnameValue = "";
String email = "";
String phonenumber = "";
String contra = "";
String verificar = "";

final formkey = GlobalKey<FormState>();

class _formularioState extends State<formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const campoNombre(),
              const campoCorreo(),
              const campotelefono(),
              const campollave(),
              const campoveri(),
              OutlinedButton(
                  onPressed: () {
                    _showSecondPage(context);
                  },
                  child: const Text("Registrarse")),
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const myhome()));
    }
  }
}

class campoNombre extends StatelessWidget {
  const campoNombre({Key? key}) : super(key: key);

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

class campoCorreo extends StatelessWidget {
  const campoCorreo({Key? key}) : super(key: key);

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

class campotelefono extends StatelessWidget {
  const campotelefono({Key? key}) : super(key: key);

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

class campollave extends StatelessWidget {
  const campollave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.lock,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              maxLength: 15,
              decoration: const InputDecoration(labelText: "Contraseña"),
              onSaved: (value) {
                contra = value!;
              },
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Llene este campo";
                }
                formkey.currentState!.save();
              },
            ),
          )
        ],
      ),
    );
  }
}

class campoveri extends StatelessWidget {
  const campoveri({Key? key}) : super(key: key);

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
              maxLength: 15,
              decoration:
                  const InputDecoration(labelText: "Verificar Contraseña"),
              onSaved: (value) {
                verificar = value!;
              },
              validator: (value) {
                if (verificar != contra) {
                  return "La contraseña no es la misma";
                }
              },
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }
}
