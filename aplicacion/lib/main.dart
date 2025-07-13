import 'package:aplicacion/view/pantalla_home.dart';
import 'package:aplicacion/view/pantalla_inicio.dart';
import 'package:aplicacion/view/pantalla_login.dart';
import 'package:aplicacion/view/pantalla_registro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: "App de Inicio de Sesión",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',

      routes: {
        '/home': (context) => const PantallaHome(),
        '/login': (context) => const PantallaLogin(),
        '/registro': (context) => const PantallaRegistro(),
        '/inicio': (context) => const PantallaInicio(),
      },
    );

  }
}