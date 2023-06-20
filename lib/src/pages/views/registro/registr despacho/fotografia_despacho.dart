import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/conf_Despacho_Pag.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/documento_despacho.dart';

class FotografiaDespacho extends StatefulWidget {
  const FotografiaDespacho({super.key});

  @override
  State<FotografiaDespacho> createState() => _FotografiaDespacho();
}

class _FotografiaDespacho extends State<FotografiaDespacho> {
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
            Image.asset('assets/imagenes/Logo.jpg'),
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
                const Padding(padding: EdgeInsets.all(20)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DocumenDespacho()));
                    },
                    child: const Text('CANCELAR')),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Confdespacho()));
                    },
                    child: const Text('CONFIRMAR')),
              ],
            ),
          ],
        ));
  }
}
