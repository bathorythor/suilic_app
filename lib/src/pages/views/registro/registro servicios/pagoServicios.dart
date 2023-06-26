import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/usuarioservicios.dart';

class PagoServicios extends StatelessWidget {
  const PagoServicios({super.key});

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
  String _correo3 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
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
                    image: AssetImage('assets/imagenes/transacciones.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 5.0,
        ),
        children: [
          Column(
            children: [
              const Text('Pay with',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                child: Row(
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
                            fontFamily: 'RobotoR',
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
                            fontFamily: 'RobotoR',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120.0,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 97 / 350,
                viewportFraction: 0.5,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.7,
                scrollDirection: Axis.horizontal,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              ),
              items: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color.fromARGB(255, 163, 162, 162),
                                  ),
                                ]),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    'assets/imagenes/tarjeta.png',
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color.fromARGB(255, 163, 162, 162),
                                  ),
                                ]),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    'assets/imagenes/pv1paypal.png',
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          const Row(
            children: [
              Text('Correo electronico o nro telefono',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17,
                    fontFamily: 'Roboto',
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(130, 221, 221, 221),
                    spreadRadius: 0.01,
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ]),
            child: SizedBox(
              width: 380,
              height: 58,
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 25,
                  ),
                  border: InputBorder.none,
                  // prefixIcon: const Padding(
                  //   padding: EdgeInsets.all(5.0),
                  //   child: ImageIcon(
                  //     AssetImage('assets/imagenes/iconos/iconarroba.png'),
                  //     color: Color(0xFF0080ff),
                  //   ),
                  // ),
                  hintText: "Ingresa tu correo",
                  hintStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: Color(0xFF0080ff), width: 1.8),
                  ),
                ),
                onSubmitted: (valor) {
                  _correo3 = valor;
                  print('El nombre es: $_correo3');
                },
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
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
          const Padding(padding: EdgeInsets.all(50)),
          SizedBox(
              width: 380,
              height: 58,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Usuarioservicios()));
                  },
                  child: const Text('Guardar y continuar'),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                      primary: Color(0xFF0080ff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))))),
        ],
      ),
    );
  }
}
