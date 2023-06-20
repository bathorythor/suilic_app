import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/Membresia_General.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/Transacciones_general.dart';

class CompraGeneral extends StatefulWidget {
  const CompraGeneral({super.key});

  @override
  State<CompraGeneral> createState() => _CompraGeneral();
}

class _CompraGeneral extends State<CompraGeneral> {
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
        preferredSize: Size.fromHeight(190),
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
                    image: AssetImage('assets/imagenes/transacciones.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          title: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),
                Text('Compras '),
                //Text(' tu interaccion'),
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
              const Padding(padding: EdgeInsets.all(150)),
              Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(50)),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      width: 135,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MembresiaGeneral()));
                          },
                          child: const Text('OMITIR'),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF0080ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))))),
                  Padding(padding: EdgeInsets.all(16)),
                  SizedBox(
                      width: 135,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TransaccionesGeneral()));
                          },
                          child: const Text('COMPRAS'),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF0080ff),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))))),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
