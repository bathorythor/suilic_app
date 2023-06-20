import 'package:flutter/material.dart';
import 'package:suilic_app/src/pages/Home_pag.dart';
import 'package:suilic_app/src/screens/chat/chat_screen.dart';

import '../perfiles/editar_perfiles/edit_perfil_usuario_general_pag.dart';

class BarNavHome extends StatefulWidget {
  const BarNavHome({super.key});

  @override
  State<BarNavHome> createState() => _BarNavHomeState();
}

class _BarNavHomeState extends State<BarNavHome> {
  int selectedIndexNav = 0;

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    final screens = [
      const HomePage(),
      ChatScreen(),
      EditProfileUserGeneralPag()
    ];

    return Scaffold(
      // body: screens[selecterIndexNav],
      body: IndexedStack(
        index: selectedIndexNav,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndexNav,
          selectedItemColor: Colors.blue,
          onTap: (value) {
            setState(() {
              selectedIndexNav = value;
            });
          },
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //activeIcon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 46, 111, 231),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              //activeIcon: Icon(Icons.message),
              label: 'Chat',
              backgroundColor: Color.fromARGB(255, 187, 186, 186),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessible),
              //activeIcon: Icon(Icons.message),
              label: 'Perfil',
              backgroundColor: Color.fromARGB(255, 187, 186, 186),
            ),
          ]),
    );
  }
}
