import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/home/barra_navegacion_principal.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/transaccionDespacho.dart';

class MembresiaDespacho extends StatefulWidget {
  const MembresiaDespacho({super.key});

  @override
  State<MembresiaDespacho> createState() => _MembresiaDespacho();
}

class _MembresiaDespacho extends State<MembresiaDespacho> {
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
          title: const Text("MEMBRESIA VIP"),
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
                              builder: (context) => const BarNavHome()));
                    },
                    child: const Text('OMITIR!')),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TransaccionesDespacho()));
                    },
                    child: const Text('COMPRAS')),
              ],
            ),
          ],
        ));
  }
}
