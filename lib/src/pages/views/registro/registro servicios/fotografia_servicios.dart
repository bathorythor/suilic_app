import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/conf_servicios_Pag.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/documento_servicios.dart';

class Fotografiaservicios extends StatefulWidget {
  const Fotografiaservicios({super.key});

  @override
  State<Fotografiaservicios> createState() => _Fotografiaservicios();
}

class _Fotografiaservicios extends State<Fotografiaservicios> {
  //    variables de registro
  // String _nombres = "";
  // String _apellidos = "";
  // String _email = '';
  // String _password = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.white,
          title: const Text("Fotografia"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          children: <Widget>[
            Image.asset('assets/imagenes/pre_reg2.jpg'),
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(50)),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(30)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Documentservicios()));
                    },
                    child: const Text('CANCELAR')),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Confservicios()));
                    },
                    child: const Text('CONFIRMAR')),
              ],
            ),
          ],
        ));
  }
}
