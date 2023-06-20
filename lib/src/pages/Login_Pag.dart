import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/Home_pag.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
        
      ),
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 90.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/imagenes/Logo.jpg'),
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'AlfaSlabOne',
                  fontSize: 50.0,
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 50.0,
                child: Divider(
                  color: Colors.blueGrey[600],
                ),
              ),
              const Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Ingrese su Email",
                  labelText: "Email",
                  helperText: 'Ingrese un email valido',
                  suffixIcon: const Icon(
                    Icons.alternate_email,
                  ),
                  //icon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
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
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
                onSubmitted: (valor) {
                  _password = valor;
                  print('El nombre es: $_password');
                },
              ),
              const Divider(
                height: 18.0,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.lightBlue, // foreground
                    ),
                    onPressed: () {
                      // Navigator.of(context).pushNamedAndRemoveUntil(
                      //     'barNavHome', (Route<dynamic> route) => false);
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'barNavHome', ModalRoute.withName('/'));
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontFamily: 'AlfaSlabOne'),
                    ),
                  )),
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
                      '¿Olvidaste la contraseña?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                          fontFamily: 'AlfaSlabOne'),
                    ),
                  )
                ),
            ],
          )
        ],
      ),
    );
  }
}
