import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Tutor Pribadi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(), // Rute untuk halaman login
        '/menu': (context) => MenuPage(), // Rute untuk halaman menu
      },
    );
  }
}
