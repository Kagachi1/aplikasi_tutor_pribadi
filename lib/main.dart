import 'package:aplikasi_tutor_pribadi/metode_numerik.dart';
import 'package:aplikasi_tutor_pribadi/pemrograman_mobile.dart';
import 'package:aplikasi_tutor_pribadi/pemrograman_visual.dart';
import 'package:aplikasi_tutor_pribadi/Manajemen.dart';
import 'package:aplikasi_tutor_pribadi/kecerdasan_mesin_dan_buatan.dart';
import 'package:aplikasi_tutor_pribadi/keamanan_informasi.dart';
import 'package:aplikasi_tutor_pribadi/sistem_terdistribusi.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';
import 'metodologi_penelitian.dart';
import 'package:aplikasi_tutor_pribadi/database_helper.dart';

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
        '/metodologi_penelitian': (context) => MetodologiPenelitianPage(),
        '/pemrograman_mobile': (context) => PemrogramanMobilePage(),
        '/pemrograman_visual': (context) => PemrogramanVisualPage(),
        '/manajemen': (context) => Manajemen(),
        '/metode_numerik': (context) => MetodeNumerik(),
        '/kecerdasan_mesin_dan_buatan': (context) => KecerdasanMesinDanBuatan(),
        '/sistem_terdistribusi': (context) => SistemTerdistribusi(),
        '/keamanan_informasi': (context) => KeamananInformasi(),
      },
    );
  }
}
