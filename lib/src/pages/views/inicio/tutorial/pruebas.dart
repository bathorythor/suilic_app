import 'package:flutter/material.dart';

class PruebasPag extends StatefulWidget {
  @override
  _PruebasPagState createState() => _PruebasPagState();
}

class _PruebasPagState extends State<PruebasPag> {
  bool expandirTexto = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Pellentesque vitae feugiat lacus. Phasellus id neque eget '
                  'dolor pulvinar convallis eu sit amet dui. Phasellus '
                  'sollicitudin odio eu ultrices gravida.',
                  //textAlign: TextAlign.justify,
                  overflow: expandirTexto
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                  maxLines: expandirTexto ? null : 2,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor:
                      const Color.fromARGB(255, 1, 44, 124), // foreground
                ),
                onPressed: () {
                  setState(() {
                    expandirTexto = !expandirTexto;
                  });
                },
                child: Text(
                  expandirTexto ? 'Ver menos' : 'Ver más',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
