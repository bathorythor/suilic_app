import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/pagodespacho.dart';

class TransaccionesDespacho extends StatelessWidget {
  const TransaccionesDespacho({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(useMaterial3: true),
      home: RadioListTileExample(),
    );
  }
}

enum Groceries { pickles, tomato, lettuce }

class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  Groceries? _groceryItem = Groceries.pickles;
  String _scaner = "";
  String _numerotarjeta = "";
  String _nombretarjeta = '';
  String _fechacaducidad = '';
  String _cvc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: const Text('Agregar Tarjeta')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          const ListTile(
              title: Text('pay with',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))),
          RadioListTile<Groceries>(
            value: Groceries.pickles,
            groupValue: _groceryItem,
            onChanged: (Groceries? value) {
              setState(() {
                _groceryItem = value;
              });
            },
            title: const Text('Tarjeta de Credito'),
            subtitle: const Text(''),
          ),
          RadioListTile<Groceries>(
            value: Groceries.tomato,
            groupValue: _groceryItem,
            onChanged: (Groceries? value) {
              setState(() {
                _groceryItem = value;
              });
            },
            title: const Text('PayPal'),
            subtitle: const Text(''),
          ),
          const Divider(
            height: 1.0,
          ),
          const ListTile(
              title: Text('you card details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ))),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "escanea tu tarjeta",
                labelText: "tarjeta",
                // helperText: 'Ingrese un email valido',
                suffixIcon: const Icon(
                  Icons.card_membership_sharp,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
              onSubmitted: (valor) {
                String _scaner = valor;
                print('El nombre es: $_scaner');
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ingrese su numero de tarjeta",
                labelText: "numero de tarjeta",
                // helperText: 'Ingrese un email valido',
                // suffixIcon: const Icon(
                //   //Icons.card_membership_sharp,
                // ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
              onSubmitted: (valor) {
                String _numerotarjeta = valor;
                print('El nombre es: $_numerotarjeta');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ingrese el nombre de su tarjeta",
                labelText: "nombre de la tarjeta",
                // helperText: 'Ingrese un email valido',
                // suffixIcon: const Icon(
                //   Icons.card_membership_sharp,
                // ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
              onSubmitted: (valor) {
                String _nombretarjeta = valor;
                print('El nombre es: $_nombretarjeta');
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ingrese fecha de caducidad de su tarjeta",
                labelText: "fecha de caducidad",
                // helperText: 'Ingrese un email valido',
                // suffixIcon: const Icon(
                //   Icons.card_membership_sharp,
                // ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
              onSubmitted: (valor) {
                String _fechacaducidad = valor;
                print('El nombre es: $_fechacaducidad');
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ingrese su cvc",
                labelText: "cvc",
                // helperText: 'Ingrese un email valido',
                // suffixIcon: const Icon(
                //   Icons.card_membership_sharp,
                // ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
              onSubmitted: (valor) {
                String _cvc = valor;
                print('El nombre es: $_cvc');
              },
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Pagodespaho()));
              },
              child: const Text('GUARDAR Y CONTINUAR'))

          // SizedBox(
          //     width: double.infinity,
          //     child: TextButton(
          //       style: TextButton.styleFrom(
          //         foregroundColor: Colors.lightBlue, // foreground
          //       ),
          //       onPressed: () {
          //         //print('Diste Click');
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => const pago2()));
          //       },
          //       child: const Text(
          //         'Guardar y Continuar',
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 15.0,
          //             fontFamily: 'AlfaSlabOne'),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
