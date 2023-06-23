import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/Pre_reg_pag.dart';

import 'package:suilic_app/src/pages/views/registro/registro%20general/Transacciones_general.dart';

class MembresiaGeneral extends StatefulWidget {
  const MembresiaGeneral({super.key});

  @override
  State<MembresiaGeneral> createState() => _MembresiaGeneral();
}

class _MembresiaGeneral extends State<MembresiaGeneral> {
  //    variables de registro
  // String _nombres = "";
  // String _apellidos = "";
  // String _email = '';
  // String _password = '';

  /////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(240),
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
                    image: AssetImage('assets/imagenes/membresia_logo.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          //Padding(padding: EdgeInsets.all(20)),
          SizedBox(
            height: 450.0,
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
                enlargeFactor: 0.4,
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
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                    'assets/imagenes/paquete1.png',
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 180,
                          )),
                          //Padding(padding: EdgeInsetsDirectional.all(20)),
                          Center(
                            child: Container(
                              child: const Align(
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(130, 231, 230, 230),
                                      spreadRadius: 0.01,
                                      blurRadius: 5,
                                      offset: Offset(0.1, 0.1),
                                    )
                                  ]),
                              child: SizedBox(
                                width: 108,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Compra'),
                                  style: ElevatedButton.styleFrom(
                                      textStyle: const TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      primary: Color(0xFF0080ff),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Padding(padding: EdgeInsets.all(18)),
              SizedBox(
                  width: 160,
                  height: 58,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 172, 172, 172),
                            spreadRadius: 0.01,
                            blurRadius: 5,
                            offset: Offset(1.5, 1.5),
                          )
                        ]),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreReg()));
                        },
                        child: const Text('Omitir'),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            primary: Color(0xFF0080FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)))),
                  )),
              Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                  width: 160,
                  height: 58,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(130, 172, 172, 172),
                            spreadRadius: 0.01,
                            blurRadius: 5,
                            offset: Offset(1.5, 1.5),
                          )
                        ]),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const TransaccionesGeneral()));
                        },
                        child: const Text('Compras'),
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            primary: Color(0xFF0080ff),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)))),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
