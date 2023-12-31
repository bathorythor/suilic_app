import 'package:flutter/material.dart';

import '../../home/barra_navegacion_principal.dart';

class Usuariodespacho extends StatefulWidget {
  const Usuariodespacho({super.key});

  @override
  State<Usuariodespacho> createState() => _Usuariodespacho();
}

class _Usuariodespacho extends State<Usuariodespacho> {
  //    variables de registro

  String _documento = '';
  String _seguridad = '';
  String _foto = '';
  String _membresia = '';
  String _notificacion = '';
  String _cerrar = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(230),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 200.0,
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
          vertical: 5.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Documento ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ],
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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/icondocumento.png'),
                          color: Color(0xFF0080ff),
                        ),
                      ),
                      hintText: "Documentos",
                      hintStyle: const TextStyle(
                        fontFamily: 'RobotoR',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconflechaderecha.png'),
                          color: Color(0xFF161C38),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _documento = valor;
                      print('El nombre es: $_documento');
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(1)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Seguridad ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ],
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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconcontrasena.png'),
                          color: Color(0xFF0080ff),
                        ),
                      ),
                      hintText: "Seguridad",
                      hintStyle: const TextStyle(
                          fontFamily: 'RobotoR',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconflechaderecha.png'),
                          color: Color(0xFF161C38),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _seguridad = valor;
                      print('El nombre es: $_seguridad');
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(1)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Foto de perfil  ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ],
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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage('assets/imagenes/iconos/iconfoto.png'),
                          color: Color(0xFF0080ff),
                        ),
                      ),
                      hintText: "Cambio de foto",
                      hintStyle: const TextStyle(
                          fontFamily: 'RobotoR',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconflechaderecha.png'),
                          color: Color(0xFF161C38),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _foto = valor;
                      print('El nombre es: $_foto');
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(1)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Membresia ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ],
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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage('assets/imagenes/iconos/icontarjeta.png'),
                          color: Color(0xFF0080ff),
                        ),
                      ),
                      hintText: "Tarjeta",
                      hintStyle: const TextStyle(
                          fontFamily: 'RobotoR',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconflechaderecha.png'),
                          color: Color(0xFF161C38),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _membresia = valor;
                      print('El nombre es: $_membresia');
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(1)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Notifications ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ],
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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconnotificaciones.png'),
                          color: Color(0xFF0080ff),
                        ),
                      ),
                      hintText: "Notificaciones",
                      hintStyle: const TextStyle(
                          fontFamily: 'RobotoR',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconflechaderecha.png'),
                          color: Color(0xFF161C38),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _notificacion = valor;
                      print('El nombre es: $_notificacion');
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(1)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Cerrar ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            )),
                      ],
                    ),
                  ),
                ],
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
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Container(
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ImageIcon(
                            AssetImage(
                                'assets/imagenes/iconos/iconcancelarcuenta.png'),
                            color: Color(0xFF0080ff),
                          ),
                        ),
                      ),
                      hintText: "Cerrar cuenta",
                      hintStyle: const TextStyle(
                          fontFamily: 'RobotoR',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: ImageIcon(
                          AssetImage(
                              'assets/imagenes/iconos/iconflechaderecha.png'),
                          color: Color(0xFF161C38),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _cerrar = valor;
                      print('El nombre es: $_cerrar');
                    },
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              const Divider(
                height: 5,
                thickness: 1.7,
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BarNavHome()));
                      },
                      child: Image.asset('assets/imagenes/iconos/iconhome.png'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child:
                          Image.asset('assets/imagenes/iconos/iconmensaje.png'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(25)),
                  Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onLongPress: () {},
                      child: Image.asset(
                          'assets/imagenes/iconos/iconlibreria.png'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(25)),
                  Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child:
                          Image.asset('assets/imagenes/iconos/iconusuario.png'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Image.asset(
                          'assets/imagenes/iconos/iconlibranza.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
