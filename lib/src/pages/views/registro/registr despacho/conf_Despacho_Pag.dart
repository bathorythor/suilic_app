import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/Membresia_Despacho.dart';

class Confdespacho extends StatefulWidget {
  const Confdespacho({super.key});

  @override
  State<Confdespacho> createState() => _Confdespacho();
}

class _Confdespacho extends State<Confdespacho> {
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
                            builder: (context) => const MembresiaDespacho()));
                  },
                  child: const Text('CONFIRMAR')),
            ],
          )
        ],
      ),
    );
  }
}
