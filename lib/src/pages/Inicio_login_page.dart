import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/Login_Pag.dart';
import 'package:suilic_app/src/pages/Pre_reg_pag.dart';

class InicioLoginPag extends StatefulWidget {
  const InicioLoginPag({super.key});

  @override
  State<InicioLoginPag> createState() => _InicioLoginPag();
}

class _InicioLoginPag extends State<InicioLoginPag> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(495),
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
                    image: AssetImage('assets/imagenes/inicio_login.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ),
      //backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 40.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(30.0),
              //   ),
              //   child: ClipRRect(
              //     borderRadius: const BorderRadius.vertical(
              //         top: Radius.zero, bottom: Radius.circular(20.0)),
              //     child: Image.asset(
              //       'assets/imagenes/inicio_login.png',
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // const Divider(
              //   height: 18.0,
              // ),
              // Padding(padding: EdgeInsets.all(5.0)),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // const SizedBox(height: 30),
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
                            Navigator.pushNamed(context, 'loginPage');
                          },
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                              primary: Color(0xFF0080ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: const Center(child: Text('Ingresar')),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
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
                            Navigator.pushNamed(context, 'preRegistroPage');
                          },
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                              primary: Color(0xFF0080ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: const Center(child: Text('Crear Cuenta')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.lightBlue, // foreground
                ),
                onPressed: () => null,
                child: const Text(
                  'Olvido su contraseña?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'RobotoR',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlue, // foreground
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => PreReg()));
                    },
                    child: const Text(
                      'haga click aquí para recuperela',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 17.0,
                        fontFamily: 'RobotoR',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
