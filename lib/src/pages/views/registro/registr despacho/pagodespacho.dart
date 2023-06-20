import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/Compra_despachos.dart';

class Pagodespaho extends StatelessWidget {
  const Pagodespaho({super.key});

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
  // String _scaner = "";
  // String _numerotarjeta = "";
  // String _nombretarjeta = '';
  // String _fechacaducidad = '';
  // String _cvc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: const Text('Agregar Pago')),
      body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 30.0,
          ),
          children: <Widget>[
            const ListTile(
                title: Text('planes acceso',
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
              title: const Text('6 meses'),
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
              title: const Text('1 año'),
              subtitle: const Text(''),
            ),
            const Divider(
              height: 1.0,
            ),
            const Padding(padding: EdgeInsets.all(200)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompraDespachos()));
                },
                child: const Text('REALIZAR PAGO'))
          ]),
    );
  }
}
