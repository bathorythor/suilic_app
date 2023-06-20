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
      //backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.zero, bottom: Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/imagenes/inicio_login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(
                height: 18.0,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        shape: ContinuousRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          //height: 20.0,
                        ),
                        backgroundColor: Color(0xFF0080ff),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'loginPage');
                      },
                      child: const Text('Ingresar'),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        shape: ContinuousRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(20.0)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          //height: 20.0,
                        ),
                        backgroundColor: Color(0xFF0080ff),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'preRegistroPage');
                      },
                      child: const Text('Crerar Cuenta'),
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                  ],
                ),
              ),
              const Divider(
                height: 18.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.lightBlue, // foreground
                ),
                onPressed: () => null,
                child: const Text(
                  '¿ Olvido su contraseña?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0,
                      fontFamily: 'AlfaSlabOne'),
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
                      'haga clic y recuperela',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                          fontFamily: 'AlfaSlabOne'),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
