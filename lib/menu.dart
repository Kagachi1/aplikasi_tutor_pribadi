import 'package:flutter/material.dart';
import 'package:aplikasi_tutor_pribadi/metodologi_penelitian.dart'; // Sesuaikan dengan lokasi file MetodologiPenelitianPage
import 'package:aplikasi_tutor_pribadi/pemrograman_mobile.dart'; // Sesuaikan dengan lokasi file PemrogramanMobilePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projek Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<String> menuItems = [
    'Pemrograman Mobile',
    'Metodologi Penelitian',
    // Tambahkan item menu lainnya di sini jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index]),
            onTap: () {
              if (menuItems[index] == 'Pemrograman Mobile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PemrogramanMobilePage()),
                );
              } else if (menuItems[index] == 'Metodologi Penelitian') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MetodologiPenelitianPage()),
                );
              }
              // Tambahkan penanganan untuk item menu lainnya di sini jika diperlukan
            },
          );
        },
      ),
    );
  }
}
