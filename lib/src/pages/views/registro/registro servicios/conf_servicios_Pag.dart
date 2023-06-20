import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/Membresia_servicios.dart';

class Confservicios extends StatefulWidget {
  const Confservicios({super.key});

  @override
  State<Confservicios> createState() => _Confservicios();
}

class _Confservicios extends State<Confservicios> {
  //    variables de registro
  //String _nombres = "";
  //String _apellidos = "";
  //String _email = '';
  // String _password = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text("Confirmacion de Documento"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(250)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MembresiaServicios()));
                  },
                  child: const Text('CONFIRMAR')),
            ],
          )
        ],
      ),
    );
  }
}
