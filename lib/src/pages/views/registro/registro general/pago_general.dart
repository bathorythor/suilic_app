import 'package:flutter/material.dart';

class PagoGeneral extends StatelessWidget {
  const PagoGeneral({super.key});

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
  State<RadioListTileExample> createState() => _pago();
}

class _pago extends State<RadioListTileExample> {
  Groceries? _groceryItem = Groceries.pickles;
  // String _scaner = "";
  // String _numerotarjeta = "";
  // String _nombretarjeta = '';
  // String _fechacaducidad = '';
  // String _cvc = '';

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
          title: const Align(
            alignment: Alignment.centerRight,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 30.0,
        ),
        children: <Widget>[
          const Center(
            child: Text('planes acceso',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 25,
                )),
          ),
          Padding(padding: EdgeInsets.all(20)),
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
                    '1mes',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  //subtitle: const Text(''),
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
                    '6 meses',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  //subtitle: const Text(''),
                ),
              ),
              Expanded(
                child: RadioListTile<Groceries>(
                  contentPadding: EdgeInsets.all(0.0),
                  value: Groceries.lettuce,
                  groupValue: _groceryItem,
                  onChanged: (Groceries? value) {
                    setState(() {
                      _groceryItem = value;
                    });
                  },
                  title: const Text(
                    '1 año',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  //subtitle: const Text(''),
                ),
              ),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1.7,
            color: Color(0xFF0080ff),
          ),
          const Padding(padding: EdgeInsets.all(180)),
          // SizedBox(
          //     width: 380,
          //     height: 58,
          //     child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => const RegGeralPage()));
          //         },
          //         child: const Text('Realizar pago'),
          //         style: ElevatedButton.styleFrom(
          //             textStyle: const TextStyle(
          //               fontFamily: 'Roboto',
          //               fontSize: 18,
          //               fontWeight: FontWeight.bold,
          //             ),
          //             primary: Color(0xFF0080ff),
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(15))))),
        ],
      ),
    );
  }
}
