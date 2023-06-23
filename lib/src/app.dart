import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suilic_app/src/pages/Home_pag.dart';
import 'package:suilic_app/src/pages/Inicio_login_page.dart';
import 'package:suilic_app/src/pages/Login_Pag.dart';
import 'package:suilic_app/src/pages/Pre_reg_pag.dart';
import 'package:suilic_app/src/pages/views/home/barra_navegacion_principal.dart';
import 'package:suilic_app/src/pages/views/inicio/slidesShowTutorial_page.dart';
import 'package:suilic_app/src/pages/views/inicio/tutorial/pruebas.dart';
import 'package:suilic_app/src/pages/views/inicio/tutorial/tutorial_slideshow.dart';
import 'package:suilic_app/src/pages/views/perfiles/editar_perfiles/edit_perfil_usuario_general_pag.dart';
import 'package:suilic_app/src/pages/views/perfiles/perfil_usuario_despachos_Pag.dart';
import 'package:suilic_app/src/pages/views/perfiles/perfil_usuario_general_pag.dart';
import 'package:suilic_app/src/pages/views/perfiles/perfil_usuario_servicios_pag.dart';
import 'package:suilic_app/src/pages/views/registro/registr%20despacho/Reg_despacho_pag.dart';
import 'package:suilic_app/src/pages/views/registro/registro%20servicios/Reg_servicios_pag.dart';
import 'package:suilic_app/src/providers/chat/chat_provider.dart';
import 'package:suilic_app/src/screens/chat/chat_screen.dart';

import 'config/theme/app_theme.dart';
import 'pages/views/registro/registro general/Reg_general_Pag.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(Context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme: AppTheme(selectedColor: 4).theme(),
        // initialRoute: '/',
        //initialRoute: 'preRegistroPage',
        initialRoute: 'InicioLoginPag',
        //initialRoute: 'profileUserServiciosPag',
        //initialRoute: 'profileUserGeneralPag',
        //initialRoute: 'profileUserDespachosPag',
        //initialRoute: 'editProfileUserGeneralPag',
        routes: {
          '/': (context) => InicioLoginPag(),
          //pruebas
          'pruebasPag': (context) => PruebasPag(),
          //registros
          'regGeralPage': (context) => RegGeralPage(),
          'regDespachosPage': (context) => RegDespachosPage(),
          'regServiciosPage': (context) => RegserviciosPage(),

          //perfiles
          'profileUserGeneralPag': (context) => ProfileUserGeneralPag(),
          'profileUserDespachosPag': (context) => ProfileUserDespachosPag(),
          'profileUserServiciosPag': (context) => ProfileUserServiciosPag(),
          //////
          'editProfileUserGeneralPag': (context) => EditProfileUserGeneralPag(),

          /////////////////////////////////////////////////////////////
          'inicioLoginPag': (context) => InicioLoginPag(),
          'preRegistroPage': (context) => PreReg(),
          'loginPage': (context) => LoginPage(),
          'homePage': (context) => HomePage(),
          'barNavHome': (context) => BarNavHome(),
          'slidesShowTutorial': (context) => SlidesShowTutorialPage(),
          //'slidesTutorial': (context) => SlidesTutorial(),

          /////////////////////////////////////////////////////
          ///tutorial
          'tutoarialSlidesShow': (context) => TutoarialSlidesShow(),

          //////////////////////////////////////////////////////
          ///chat
          'chatScreen': (context) => ChatScreen(),
        },
      ),
    );
  }
}
