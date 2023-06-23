import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:suilic_app/src/pages/views/registro/registro%20general/transpago.dart';

class TransaccionesGeneral extends StatelessWidget {
  const TransaccionesGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(useMaterial3: true),
      home: RadioListTileExample(),
    );
  }
}

String dropdownValue = 'Ext';

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
  String _telefono = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 150.0,
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
          vertical: 8.0,
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
            height: 100.0,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 97 / 350,
                viewportFraction: 0.5,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 300),
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
          Padding(padding: EdgeInsets.all(5)),
          Column(
            children: [
              const Padding(
                //inputfield titulo
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('Titular',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          fontSize: 17,
                        )),
                  ],
                ),
              ),
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
                      hintText: "Nombre del titular",
                      hintStyle: const TextStyle(
                        fontFamily: 'RobotoR',
                        fontSize: 16.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _titular = valor;
                      print('El nombre es: $_titular');
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text('Número de tarjeta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
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
                      hintText: "Número de tarjeta ",
                      hintStyle: const TextStyle(
                        fontFamily: 'RobotoR',
                        fontSize: 16.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFF0080ff), width: 1.8),
                      ),
                    ),
                    onSubmitted: (valor) {
                      _numerotarjeta = valor;
                      print('El nombre es: $_numerotarjeta');
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(2)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    child: Text(
                      '${date.year}/ ${date.month} / ${date.day}',
                      style: const TextStyle(
                          color: Color(0xFF0080ff),
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(padding: EdgeInsets.all(2)),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      primary: Color(0xFF0080ff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (newDate == null) return;
                    setState(() => date = newDate);
                  },
                  child: const SizedBox(
                    width: 280,
                    height: 58,
                    child: Center(
                      child: Text(
                        'selecciona fecha de expiración',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(2)),
          Container(
            child: const Text(
              'Número de pin',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(2)),
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
                enableInteractiveSelection: false,
                obscureText: true,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Numero de pin",
                  hintStyle: const TextStyle(
                    fontFamily: 'RobotoR',
                    fontSize: 16.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: Color(0xFF0080ff), width: 1.8),
                  ),
                ),
                onSubmitted: (valor) {
                  _pin = valor;
                  print('El nombre es: $_pin');
                },
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(2)),
          Container(
            child: const Text(
              'Domicilio',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Row(
            children: [
              Center(
                  child: SizedBox(
                height: 58,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                      border: Border.all(
                          color: Color(0xFF0080ff),
                          style: BorderStyle.solid,
                          width: 1.8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(130, 221, 221, 221),
                          spreadRadius: 0.01,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ]),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Ext',
                        child: Text(
                          'Ext',
                          style: TextStyle(
                              fontFamily: 'RobotoR',
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      DropdownMenuItem<String>(
                          value: '+51', child: Text('+51')),
                      DropdownMenuItem<String>(
                          value: '+52', child: Text('+52')),
                      DropdownMenuItem<String>(
                          value: '+53', child: Text('+53')),
                      DropdownMenuItem<String>(
                          value: '+54', child: Text('+54')),
                      DropdownMenuItem<String>(
                          value: '+55', child: Text('+55')),
                      DropdownMenuItem<String>(
                          value: '+56', child: Text('+56')),
                      DropdownMenuItem<String>(
                          value: '+57', child: Text('+57')),
                      DropdownMenuItem<String>(
                          value: '+58', child: Text('+58')),
                      DropdownMenuItem<String>(
                          value: '+59', child: Text('+59')),
                      DropdownMenuItem<String>(
                          value: '+60', child: Text('+60')),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
              )),
              const Padding(
                  padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 2,
              )),
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
                  //width: MediaQuery.of(context).size.width * 0.6,
                  child: SizedBox(
                    width: 241,
                    height: 58,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: " Número de Telefono",
                        hintStyle: const TextStyle(
                          fontFamily: 'RobotoR',
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              color: Color(0xFF0080ff), width: 1.8),
                        ),
                      ),
                      onSubmitted: (valor) {
                        String _telefono = valor;
                        print('El nombre es: $_telefono');
                      },
                    ),
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          SizedBox(
              width: 380,
              height: 58,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const transpago()));
                  },
                  child: const Text('Guardar y continuar'),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      primary: Color(0xFF0080ff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))))),
        ],
      ),
    );
  }
}
