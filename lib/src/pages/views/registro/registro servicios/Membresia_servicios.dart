import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/Reg_servicios_pag.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/transaccionServicios.dart';

class MembresiaServicios extends StatefulWidget {
  const MembresiaServicios({super.key});

  @override
  State<MembresiaServicios> createState() => _MembresiaServicios();
}

class _MembresiaServicios extends State<MembresiaServicios> {
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
          title: const Text("MEMBRESIA"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 40.0,
          ),
          children: <Widget>[
            Image.asset('assets/imagenes/pre_reg1.jpg'),
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(40)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegserviciosPage()));
                    },
                    child: const Text('OMITIR')),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const TransaccionesServicios()));
                    },
                    child: const Text('COMPRAS')),
              ],
            ),
          ],
        ));
  }
}
