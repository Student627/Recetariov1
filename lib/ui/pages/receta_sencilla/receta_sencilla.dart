import 'package:flutter/material.dart';

class receta_sencilla extends StatefulWidget {
  const receta_sencilla({Key? key}) : super(key: key);

  @override
  _receta_sencillaState createState() => _receta_sencillaState();
}

class _receta_sencillaState extends State<receta_sencilla> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/arrozblanco.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const campodescripcion(),
            const Text(
              "Ingredientes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const ingredientes(),
            const Text(
              "Procedimiento",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const informacion(),
            const iconollamada(),
          ],
        ),
      )),
    );
  }
}

class campodescripcion extends StatelessWidget {
  const campodescripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 600,
      height: 40,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: const Text(
                "Arroz blanco",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            ),
          ),
          const Text("42"),
        ],
      ),
    );
  }
}

class iconollamada extends StatelessWidget {
  const iconollamada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 600,
      height: 70,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  const Icon(
                    Icons.phone_android_outlined,
                    color: Colors.blue,
                  ),
                  Text("llamar"),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    Text("Correo"),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  const Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text("Compartir"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class informacion extends StatelessWidget {
  const informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Builder(builder: (context) {
            return const Text("Añadimos dos cucharadas de aceite por cada taza de arroz que vayáis a utilizar. El aceite es el ingrediente que ayudará a que no se pegue el arroz." +
                " Calentamos la cazuela y echamos el aceite, en cuanto veamos que está caliente añadimos el arroz y removemos durante un minuto aproximadamente a temperatura media para tostar el arroz."
                    " Vertemos 2 tazas de agua y media por cada taza de arroz, dejamos a fuego fuerte durante 4 minutos hasta que pille mucha temperatura y empiece a hacer borbotones. Añadimos sal y luego bajamos a fuego medio unos 12 minutos con la tapa de la cazuela puesta." +
                " Cuando veamos que ya casi no hay agua y empiezan a quedar pequeños agujeros entre los granos de arroz, bajamos la temperatura al mínimo tres minutos o simplemente apagamos el fuego." +
                " Dejamos que repose con la tapa puesta o con un trapo de algodón durante unos 5 minutos. Mientras reposa, el arroz absorberá el resto de agua y te debería quedar en su punto y los granos separados. Podemos ir probando el arroz en el reposo para ver como está quedando, a mi me gusta que quede un poquito duro.");
          })
        ],
      ),
    );
  }
}

class ingredientes extends StatelessWidget {
  const ingredientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Builder(builder: (context) {
            return const Text("Arroz" +
                " 2 cucharadas de aceite por cada taza de arroz" +
                " 1 taza de arroz blanco de grano redondo" +
                " 2 tazas y media de agua" +
                " 5 g. de sal");
          })
        ],
      ),
    );
  }
}
