import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/Pre_reg_pag.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/Pordefinir.dart';

class RegGeralPage extends StatefulWidget {
  const RegGeralPage({super.key});

  @override
  State<RegGeralPage> createState() => _RegGeralPage();
}

class _RegGeralPage extends State<RegGeralPage> {
  //    variables de registro
  String _telefono = "";
  String _password = '';
  String _usuario = "";
  String _edad = '';
  String _codigo = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(240),
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
                    image: AssetImage('assets/imagenes/Componente1.png'),
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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(130, 221, 221, 221),
                        spreadRadius: 0.01,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                      // BoxShadow(
                      //   color: Color.fromARGB(130, 122, 122, 122),
                      //   spreadRadius: 0.01,
                      //   blurRadius: 1,
                      //   offset: Offset(1, -2),
                      // ),
                    ]),
                child: SizedBox(
                  width: 380,
                  height: 58,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Ingresa tu número teléfono",
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
                      _telefono = valor;
                      print('El nombre es: $_telefono');
                    },
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
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
                      hintText: "Establece tu contraseña",
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
                      _password = valor;
                      print('El nombre es: $_password');
                    },
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Ingresa tu número de usuario",
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
                      _usuario = valor;
                      print('El nombre es: $_usuario');
                    },
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Ingresa tu edad",
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
                      _edad = valor;
                      print('El nombre es: $_edad');
                    },
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
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
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Código de verificación",
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
                      _codigo = valor;
                      print('El nombre es: $_codigo');
                    },
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8)),
              const Padding(padding: EdgeInsets.all(5)),
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
                              builder: (context) => const Pordefinir()));
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
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PreReg()));
                    },
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Icon(
                        // <-- Icon
                        Icons.arrow_circle_left_rounded,
                        size: 30.0,
                      ),
                    ),
                    label: const Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                          horizontal: 40,
                        )),
                        Center(child: Text('Ir atras')),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      primary: Color(0xFF0080ff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ), // <-- Text
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
