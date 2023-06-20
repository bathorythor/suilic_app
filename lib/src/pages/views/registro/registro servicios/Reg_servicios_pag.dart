import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/documento_servicios.dart';

class RegserviciosPage extends StatefulWidget {
  const RegserviciosPage({super.key});

  @override
  State<RegserviciosPage> createState() => _Regserviciospage();
}

class _Regserviciospage extends State<RegserviciosPage> {
  //    variables de registro
  String _nombres = "";
  String _apellidos = "";
  String _id = "";

  String _email = '';
  String _password = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text("Registro Servicios"),
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Ingrese nombre de usuario",
                  labelText: "Nombres:",
                  //helperText: 'Ingrese un usuario valido',
                  suffixIcon: const Icon(
                    Icons.accessibility,
                  ),
                  //icon: const Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onSubmitted: (valor) {
                  _nombres = valor;
                  print('El nombre es: $_nombres');
                },
              ),
              const Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ingrese Apellidos",
                  labelText: "Apellidos:",
                  //helperText: 'Ingrese un usuario valido',
                  suffixIcon: const Icon(
                    Icons.accessibility_new,
                  ),
                  //icon: const Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onSubmitted: (valor) {
                  _apellidos = valor;
                  print('El nombre es: $_apellidos');
                },
              ),
              const Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ingrese ID",
                  labelText: "id:",
                  //helperText: 'Ingrese un usuario valido',
                  suffixIcon: const Icon(
                    Icons.account_box,
                  ),
                  //icon: const Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onSubmitted: (valor) {
                  _id = valor;
                  print('El nombre es: $_id');
                },
              ),

              const Divider(
                height: 18.0,
              ),

              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Ingrese email",
                  labelText: "Email",
                  //helperText: 'Ingrese un e-mail valido',
                  suffixIcon: const Icon(
                    Icons.alternate_email,
                  ),
                  //icon: const Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onSubmitted: (valor) {
                  _email = valor;
                  print('El nombre es: $_email');
                },
              ),
              const Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Ingrese su Contraseña",
                  labelText: "Password",
                  suffixIcon: const Icon(
                    Icons.key,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onSubmitted: (valor) {
                  _password = valor;
                  print('El nombre es: $_password');
                },
              ),
              const Divider(
                height: 18.0,
              ),
              const Padding(padding: EdgeInsets.all(70)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Documentservicios()));
                  },
                  child: const Text('REGISTRO'))

              // SizedBox(
              //     width: double.infinity,
              //     child: TextButton(
              //       style: TextButton.styleFrom(
              //         foregroundColor: Colors.lightBlue, // foreground
              //       ),
              // onPressed: () {
              //   // Navigator.push(context,
              //   //     MaterialPageRoute(builder: (context) => PreReg()));
              // },
              // child: const Text(
              //   '¿Olvidaste la contraseña?',
              //   style: TextStyle(
              //       color: Colors.blue,
              //       fontSize: 15.0,
              //       fontFamily: 'AlfaSlabOne'),
              //),
            ],
          )
        ],
      ),
    );
  }
}
