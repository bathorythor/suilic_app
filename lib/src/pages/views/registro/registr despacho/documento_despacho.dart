import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/Reg_despacho_pag.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/fotografia_despacho.dart';

class DocumenDespacho extends StatefulWidget {
  const DocumenDespacho({super.key});

  @override
  State<DocumenDespacho> createState() => _DocumenDespacho();
}

class _DocumenDespacho extends State<DocumenDespacho> {
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
          title: const Text("Imagen Documento"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          children: <Widget>[
            const ListTile(
                title: Text('FRENTE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))),
            Image.asset('assets/imagenes/pre_reg3.jpg'),
            const ListTile(
                title: Text('REVES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ))),
            Image.asset('assets/imagenes/pre_reg3.jpg'),
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
                              builder: (context) => const RegDespachosPage()));
                    },
                    child: const Text('CANCELAR')),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FotografiaDespacho()));
                    },
                    child: const Text('CONFIRMAR')),
              ],
            ),
          ],
        ));
  }
}
