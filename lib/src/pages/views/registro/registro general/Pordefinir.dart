import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/Reg_contrasena.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/Reg_general_Pag.dart';

class Pordefinir extends StatefulWidget {
  const Pordefinir({super.key});

  @override
  State<Pordefinir> createState() => _Pordefinir();
}

class _Pordefinir extends State<Pordefinir> {
  //    variables de registro

  String _correo = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(240),
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
                    image: AssetImage('assets/imagenes/correo.png'),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text('LOREM IPSUM DOLOR ',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                      )),
                ],
              ),
              const Padding(padding: EdgeInsetsDirectional.all(10)),
              Center(
                child: Container(
                    child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(' Lorem ipsum dolor sit amet, ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'RobotoR',
                              fontSize: 16,
                            )),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(0)),
                    Row(
                      children: [
                        Text(' consectetuer adipiscing elit, ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'RobotoR',
                              fontSize: 16,
                            )),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(0)),
                    Row(
                      children: [
                        Text(' sed diam nonummy nibh euismod. r sit amet,  ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontFamily: 'RobotoR',
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ],
                )),
              ),
              Padding(padding: EdgeInsets.all(2)),
              const Divider(
                color: Color(0xFF0080ff),
                height: 20,
                thickness: 1.6,
              ),
              const Padding(padding: EdgeInsets.all(5)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('Ingresa tu email ',
                            style: TextStyle(
                              fontFamily: 'RobotoR',
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
                          AssetImage('assets/imagenes/iconos/iconarroba.png'),
                          color: Color(0xFF0080ff),
                        ),
                      ),
                      hintText: "Enviar correo",
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _correo = valor;
                      print('El nombre es: $_correo');
                    },
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(50)),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2)),
              const Padding(
                  padding: EdgeInsets.symmetric(
                vertical: 2,
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
                                builder: (context) => const Regcontrasena()));
                      },
                      child: const Center(child: Text('Registrarse ahora')),
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
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
                                builder: (context) => const RegGeralPage()));
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
