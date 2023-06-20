import 'package:flutter/material.dart';

import 'Home_pag.dart';

class PreReg extends StatefulWidget {
  @override
  _PreRegState createState() => _PreRegState();
}

class _PreRegState extends State<PreReg> {
  String imagen = 'assets/imagenes/userge.png';
  String titulo = 'Usuario General';
  String texto =
      'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno';

  void actualizarContenido(
      String nuevaImagen, String nuevoTitulo, String nuevoTexto) {
    setState(() {
      imagen = nuevaImagen;
      titulo = nuevoTitulo;
      texto = nuevoTexto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(340),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 400.0,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.zero, bottom: Radius.circular(20.0)),
              child: Image.asset(
                imagen,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 40),
            Container(
              child: Center(
                child: Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ), //texto titulo
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 0.0,
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Text(
                      texto,
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ), // texto subtitulo
                  ],
                ),
              ),
            ), // texto subtitulo
            const SizedBox(height: 60),

            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // children: <Widget>[
            Column(
              children: [
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
                    child: Column(
                      children: [
                        SizedBox(
                          width: 380,
                          height: 58,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                primary: Color(0xFF0080ff),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () => actualizarContenido(
                              'assets/imagenes/usergeneral.png',
                              'Usuario General',
                              'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno ',
                            ),
                            child: const Text(
                              'General',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(5)),
            Column(
              children: [
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
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          primary: Color(0xFF0080ff),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () => actualizarContenido(
                        'assets/imagenes/despachos.png',
                        'Usuario Despachos',
                        'Texto de la opción 2',
                      ),
                      child: const Text(
                        'Despachos',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(5)),
            Column(
              children: [
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
                            blurRadius: 7,
                            offset: Offset(1.5, 1.5),
                          )
                        ]),
                    child: SizedBox(
                      width: 100,
                      height: 58,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            primary: Color(0xFF0080ff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () => actualizarContenido(
                          'assets/imagenes/servicios.png',
                          'Usuario Servicios',
                          'Texto de la opción 3',
                        ),
                        child: const Text(
                          'Servicios',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //],

            const SizedBox(height: 10),
            const Divider(
              height: 18.0,
            ),

            SizedBox(
                // width: double.infinity,
                child: SizedBox(
              // width: 380,
              // height: 58,
              child: TextButton(
                onPressed: () {
                  if (titulo == 'Usuario General') {
                    Navigator.pushNamed(context, 'regGeralPage');
                  } else if (titulo == 'Usuario Despachos') {
                    Navigator.pushNamed(context, 'regDespachosPage');
                  } else {
                    Navigator.pushNamed(context, 'regServiciosPage');
                  }
                },
                child: const Center(
                  child: Text(
                    'Siguente',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: 'AlfaSlabOne'),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
