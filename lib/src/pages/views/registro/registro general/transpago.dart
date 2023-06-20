import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20general/pago_general.dart';

class transpago extends StatelessWidget {
  const transpago({super.key});

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
  DateTime date = DateTime(2023, 12, 31);

  Groceries? _groceryItem = Groceries.pickles;
  String _titular = "";
  String _numerotarjeta = "";
  String _fecha = '';
  String _pin = '';
  String _domicilio = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 200.0,
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
                    image: AssetImage('assets/imagenes/transacciones.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          const ListTile(
              title: Center(
            child: Text('Pay with',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Roboto',
                )),
          )),
          Row(
            children: [
              Expanded(
                child: RadioListTile<Groceries>(
                  contentPadding: EdgeInsets.all(0.0),
                  value: Groceries.pickles,
                  groupValue: _groceryItem,
                  onChanged: (Groceries? value) {
                    setState(() {
                      _groceryItem = value;
                    });
                  },
                  title: const Text(
                    'Tarjeta',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: RadioListTile<Groceries>(
                  contentPadding: EdgeInsets.all(0.0),
                  value: Groceries.tomato,
                  groupValue: _groceryItem,
                  onChanged: (Groceries? value) {
                    setState(() {
                      _groceryItem = value;
                    });
                  },
                  title: const Text(
                    'PayPal',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Column(
          //   children: [
          //     ClipRRect(
          //         borderRadius: BorderRadius.circular(30),
          //         child: Image.asset('assets/imagenes/tarjeta.jpg',
          //             fit: BoxFit.cover)),
          //   ],
          // ),
          const Padding(padding: EdgeInsets.all(20)),
          const Row(
            children: [
              Text('Correo electronico o nro telefono',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          SizedBox(
            width: 380,
            height: 58,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu correo",

                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                // helperText: 'Ingrese un email valido',
                // suffixIcon: const Icon(
                //   Icons.card_membership_sharp,
                // ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blue, width: 1.8),
                ),
              ),
              onSubmitted: (valor) {
                String _titular = valor;
                print('El nombre es: $_titular');
              },
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const Column(
            children: [
              Text(
                'Conecta con tu cuenta de paypal',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF0080ff),
                ),
              )
            ],
          ),

          const Padding(padding: EdgeInsets.all(110)),
          // SizedBox(
          //     width: 380,
          //     height: 58,
          //     child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => const PagoGeneral()));
          //         },
          //         child: const Text('Guardar y continuar'),
          //         style: ElevatedButton.styleFrom(
          //             textStyle: const TextStyle(
          //               fontFamily: 'Roboto',
          //               fontWeight: FontWeight.bold,
          //               fontSize: 18,
          //             ),
          //             primary: Color(0xFF0080ff),
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(15))))),
        ],
      ),
    );
  }
}
