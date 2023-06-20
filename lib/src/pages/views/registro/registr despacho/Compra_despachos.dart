import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/home/barra_navegacion_principal.dart';

class CompraDespachos extends StatefulWidget {
  const CompraDespachos({super.key});

  @override
  State<CompraDespachos> createState() => _CompraDespachos();
}

class _CompraDespachos extends State<CompraDespachos> {
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
        title: const Text("Compras"),
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
              const Padding(padding: EdgeInsets.all(200)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BarNavHome()));
                  },
                  child: const Text('REGRESAR'))
            ],
          )
        ],
      ),
    );
  }
}
