import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/Membresia_General.dart';

class ConfEmailGeneralPag extends StatefulWidget {
  const ConfEmailGeneralPag({super.key});

  @override
  State<ConfEmailGeneralPag> createState() => _ConfEmailGeneralPag();
}

class _ConfEmailGeneralPag extends State<ConfEmailGeneralPag> {
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
        preferredSize: Size.fromHeight(230),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 200.0,
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/imagenes/conf.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          title: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Text('Confirma '),
                Text(' tu email'),
                Icon(Icons.check_box),
              ],
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
              const Padding(padding: EdgeInsets.all(110)),
              // const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: 320,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MembresiaGeneral()));
                    },
                    child: const Text('CONFIRMAR'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0080ff),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
              )
            ],
          )
        ],
      ),
    );
  }
}
