import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/Reg_despacho_pag.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/conf_Despacho_Pag.dart';

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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(220),
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
            Padding(padding: EdgeInsets.all(5)),
            Center(
              child: Stack(
                children: [
                  Container(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xFF0080ff),
                              ),
                            ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                                'assets/imagenes/fotoselectorotherselect.png',
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 80,
                      )),
                      //Padding(padding: EdgeInsetsDirectional.all(20)),
                      Center(
                        child: Container(
                          child: const Align(
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(130, 231, 230, 230),
                                  spreadRadius: 0.01,
                                  blurRadius: 5,
                                  offset: Offset(0.1, 0.1),
                                )
                              ]),
                          child: SizedBox(
                            width: 200,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Tomar foto frontal '),
                              style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontFamily: 'RobotoR',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  primary: Color(0xFF000000),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Center(
              child: Stack(
                children: [
                  Container(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                color: Color(0xFF0080ff),
                              ),
                            ]),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                                'assets/imagenes/fotoselectorotherselect.png',
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 80,
                      )),
                      //Padding(padding: EdgeInsetsDirectional.all(20)),
                      Center(
                        child: Container(
                          child: const Align(
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(130, 231, 230, 230),
                                  spreadRadius: 0.01,
                                  blurRadius: 5,
                                  offset: Offset(0.1, 0.1),
                                )
                              ]),
                          child: SizedBox(
                            width: 200,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Tomar foto revés '),
                              style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                    fontFamily: 'RobotoR',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  primary: Color(0xFF000000),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
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
                                        const RegDespachosPage()));
                          },
                          child: const Text('Cancelar'),
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                              primary: Color(0xFF0080FF),
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
                                        const Confdespacho()));
                          },
                          child: const Text('Confirmar'),
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
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
