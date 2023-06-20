import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Suilic'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverToBoxAdapter(
          //   child: Placeholder(
          //     fallbackHeight: 200,
          //   ),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    _cardTipo2(),
                    _cardTipo1(),
                  ],
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Hola a todos'),
            subtitle: Text('Soy el subtitulo de esta targeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor:
                      const Color.fromARGB(255, 1, 44, 124), // foreground
                ),
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor:
                      const Color.fromARGB(255, 1, 44, 124), // foreground
                ),
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Column(
      children: <Widget>[
        //cabecera
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.network(
                      'https://img.europapress.es/fotoweb/fotonoticia_20200221191003_420.jpg',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Text(
                    'alin',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
        ),

        // imagen del post

        Image.network(
            'https://elcomercio.pe/resizer/05vJ_zeXnEIsbUWSqD4teIDK97Q=/1200x1200/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/QXFVU5QDOBCAXHCSX6HAHDESCU.jpg'),

        // iconos de interaccion con el usuario
        Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
              ],
            )),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 15.0),
              ClipOval(
                child: Image.network(
                  'https://img.europapress.es/fotoweb/fotonoticia_20200221191003_420.jpg',
                  width: 25.0,
                  height: 25.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15.0),
              const Text('Les gusta a'),
              const SizedBox(width: 5.0),
              const Text(
                'Antonella',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 5.0),
              const Text('y'),
              const SizedBox(width: 5.0),
              const Text(
                '1.585 mas',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        // Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: <Widget>[
        //         IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        //         SizedBox(
        //           width: 10.0,
        //         ),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.pages)),
        //         SizedBox(
        //           width: 10.0,
        //         ),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //         SizedBox(
        //           width: 10.0,
        //         ),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.save)),
        //       ],
        //     )
        //     ),
      ],
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0)),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}
