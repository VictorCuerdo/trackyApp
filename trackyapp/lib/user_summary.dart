import 'package:flutter/material.dart';

class UserSummaryPage extends StatefulWidget {
  const UserSummaryPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UserSummaryPageState createState() => _UserSummaryPageState();
}

class _UserSummaryPageState extends State<UserSummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: const Color.fromARGB(255, 64, 147, 206),
              padding: const EdgeInsets.all(
                  35.0), // ajusta los bordes laterale del formulario. Establece que tan ancho es el formulario
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //FILA 1 - PARA EL ICONO DE VOLVER ATRÁS
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new_outlined,
                            size: 30),
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  //FILA 2 - PARA EL TITULO Y EL ICONO DE CRONOMETRO
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Summary',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1.5,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.timer_outlined, size: 40),
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  //FILA 3 - PARA EL NOMBRE DEL EJERCICIO
                  Row(
                    children: const [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: Text(
                            'Running',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // FILA 4 - PARA EL MAPA
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/mapa.png',
                          height: MediaQuery.of(context).size.height * 0.25),
                    ],
                  ),
                  // FILA 5 - PARA EL TEXTO DE KILOMETROS
                  const SizedBox(height: 30.0),
                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Km: 90km',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text(
                        'Time: 2:00:00',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
