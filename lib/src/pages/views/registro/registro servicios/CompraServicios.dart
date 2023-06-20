import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/home/barra_navegacion_principal.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/Reg_servicios_pag.dart';

class CompraServicios extends StatefulWidget {
  const CompraServicios({super.key});

  @override
  State<CompraServicios> createState() => _CompraServicios();
}

class _CompraServicios extends State<CompraServicios> {
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
