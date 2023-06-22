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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(220),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 400.0,
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/imagenes/documento.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        children: <Widget>[
          Padding(padding: EdgeInsets.all(100)),
          SizedBox(
            width: 380,
            height: 58,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(130, 211, 210, 210),
                      spreadRadius: 0.01,
                      blurRadius: 5,
                      offset: Offset(1.5, 1.5),
                    )
                  ]),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MembresiaServicios()));
                },
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    primary: Color(0xFF0080ff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Center(child: Text('Registrarse ahora')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
