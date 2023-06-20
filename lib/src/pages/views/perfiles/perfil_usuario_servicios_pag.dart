import 'package:flutter/material.dart';

class ProfileUserServiciosPag extends StatelessWidget {
  const ProfileUserServiciosPag({super.key});

  @override
  Widget build(BuildContext context) {
    return const cabecera_perfil_general();
  }
}

// ignore: camel_case_types
class cabecera_perfil_general extends StatelessWidget {
  const cabecera_perfil_general({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 10.0,
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: SizedBox(
              child: Container(
                width: 400,
                height: 400,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/imagenes/profile_gen.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ),
        ),
      ),
      body: const perfil_usuario(),
    );
  }
}

// ignore: camel_case_types
class perfil_usuario extends StatefulWidget {
  const perfil_usuario({
    super.key,
  });

  @override
  State<perfil_usuario> createState() => _perfil_usuarioState();
}

// ignore: camel_case_types
class _perfil_usuarioState extends State<perfil_usuario> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Gal Gadot',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.accessibility),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    '31 años',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.book_rounded),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    'Perito',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Guardar')),
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text('Contactar')),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0x71D3E2EB),
                  borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                      'assets/imagenes/profile_gen.jpg'),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gal Gadot',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                  //const Text('30 years'),
                                  const Text('31 Años'),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_downward)),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                            child: Text(
                                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur')),
                      ),
                      const Divider(
                        color: Colors.blue,
                        thickness: 1.0,
                        indent: 16.0,
                        endIndent: 16.0,
                      ),
                      const SizedBox(
                        height: 20,
                        width: 20,
                      ),
                    ],
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          child: ElevatedButton(
              onPressed: () {}, child: const Text('Contacto para premium')),
        ),
      ],
    );
  }
}
