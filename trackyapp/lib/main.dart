import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TRACKY-Editar informacion personal',
      home: EditPersonalInfo(),
    );
  }
}

class EditPersonalInfo extends StatefulWidget {
  const EditPersonalInfo({super.key});

  @override
  _EditPersonalInfoState createState() => _EditPersonalInfoState();
}

class _EditPersonalInfoState extends State<EditPersonalInfo> {
  String? _name = '';
  String? _lastName = '';
  String? _email = '';
  String? _telephone = '';
  double? _weight = 0.0;
  double? _height = 0.0;

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
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Tania',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1.5,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.logout, size: 40),
                        color: Colors.white,
                        padding: const EdgeInsets.only(top: 5.0, right: 10.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20),
                          child: Text(
                            'Barranquilla, Atlantico',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 130,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.photo_camera, size: 70),
                          color: Color.fromARGB(255, 0, 0, 0),
                          onPressed: () {
                            // TODO: implement photo upload
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Inserte Nombre(s)'),
                          initialValue: _name,
                          onChanged: (value) {
                            setState(() {
                              _name = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Inserte Apellido(s)'),
                          initialValue: _lastName,
                          onChanged: (value) {
                            setState(() {
                              _lastName = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Inserte Email'),
                          initialValue: _email,
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Inserte Numero telefono'),
                          initialValue: _telephone,
                          onChanged: (value) {
                            setState(() {
                              _telephone = value;
                            });
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Inserte su peso'),
                          initialValue: _weight?.toString(),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _weight = double.tryParse(value);
                            });
                          },
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Inserte su estatura'),
                          initialValue: _height?.toString(),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          onChanged: (value) {
                            setState(() {
                              _height = double.tryParse(value);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 2.0, color: Colors.white),
                      minimumSize: const Size(double.infinity, 0),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(width: 20.0),
                        Text(
                          'Editar Perfil',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 30.0,
                        )
                      ],
                    ),
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
