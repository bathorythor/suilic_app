import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/Membresia_Despacho.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/conf_Despacho_Pag.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/documento_despacho.dart';

class FotografiaDespacho extends StatefulWidget {
  const FotografiaDespacho({super.key});

  @override
  State<FotografiaDespacho> createState() => _FotografiaDespacho();
}

class _FotografiaDespacho extends State<FotografiaDespacho> {
  //    variables de registro
  // String _nombres = "";
  // String _apellidos = "";
  // String _email = '';
  // String _password = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(240),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 00.0,
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
                      image: AssetImage('assets/imagenes/scandocumento.png'),
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
            Padding(padding: EdgeInsets.all(10)),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color.fromARGB(255, 125, 126, 128),
                      ),
                    ]),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/imagenes/Logo.jpg'))),
            Container(
              child: const Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(50)),
                ],
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(0)),
                SizedBox(
                    width: 165,
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
                                        const DocumenDespacho()));
                          },
                          child: const Text('Cancelar'),
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              primary: Color(0xFF0080ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    )),
                Padding(padding: EdgeInsets.all(10)),
                SizedBox(
                    width: 165,
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
                                        const MembresiaDespacho()));
                          },
                          child: const Text('Confirmar'),
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              primary: Color(0xFF0080ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    )),
              ],
            ),
          ],
        ));
  }
}
