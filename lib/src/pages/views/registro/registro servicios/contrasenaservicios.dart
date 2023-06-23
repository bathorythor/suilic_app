import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/Membresia_servicios.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/conf_servicios_Pag.dart';

class Contrasenaservicios extends StatefulWidget {
  const Contrasenaservicios({super.key});

  @override
  State<Contrasenaservicios> createState() => _Contrasenaservicios();
}

class _Contrasenaservicios extends State<Contrasenaservicios> {
  //    variables de registro
  String _contrasena = "";
  String _newcontrasena = '';
  String _confircontrasena = '';
  String _verificacion = "";

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(238),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 0.0,
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
                    image: AssetImage('assets/imagenes/contrasenas.png'),
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
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('Contraseña actual',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(130, 221, 221, 221),
                        spreadRadius: 0.01,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: SizedBox(
                  width: 380,
                  height: 58,
                  child: TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _contrasena = valor;
                      print('El nombre es: $_contrasena');
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('Nueva contraseña ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(130, 221, 221, 221),
                        spreadRadius: 0.01,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: SizedBox(
                  width: 380,
                  height: 58,
                  child: TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _newcontrasena = valor;
                      print('El nombre es: $_newcontrasena');
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('Confirmar contraseña ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(130, 221, 221, 221),
                        spreadRadius: 0.01,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: SizedBox(
                  width: 380,
                  height: 58,
                  child: TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _confircontrasena = valor;
                      print('El nombre es: $_confircontrasena');
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('Ingresa código de verificación ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(130, 221, 221, 221),
                        spreadRadius: 0.01,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: SizedBox(
                  width: 380,
                  height: 58,
                  child: TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _verificacion = valor;
                      print('El nombre es: $_verificacion');
                    },
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 5,
              )),
              const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: 380,
                height: 58,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(130, 172, 172, 172),
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
                                builder: (context) =>
                                    const MembresiaServicios()));
                      },
                      child: const Center(child: Text('Confirmar')),
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                          primary: Color(0xFF0080ff),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)))),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(130, 34, 33, 33),
                      spreadRadius: 0.01,
                      blurRadius: 2,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 380,
                  height: 58,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Confservicios()));
                      },
                      child: Container(
                        height: 58,
                        width: 380,
                        alignment: Alignment.centerLeft,
                        color: Color(0xFF0080ff),
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                child: Image.asset(
                                  'assets/imagenes/iconos/iconatras.png',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(
                              horizontal: 52,
                            )),
                            const Text(
                              'Ir atras',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
            ],
          ),
        ],
      ),
    );
  }
}
