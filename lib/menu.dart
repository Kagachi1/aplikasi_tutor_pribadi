import 'package:aplikasi_tutor_pribadi/keamanan_informasi.dart';
import 'package:aplikasi_tutor_pribadi/sistem_terdistribusi.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_tutor_pribadi/metode_numerik.dart';
import 'package:aplikasi_tutor_pribadi/metodologi_penelitian.dart'; // Sesuaikan dengan lokasi file MetodologiPenelitianPage
import 'package:aplikasi_tutor_pribadi/pemrograman_mobile.dart'; // Sesuaikan dengan lokasi file PemrogramanMobilePage
import 'package:aplikasi_tutor_pribadi/pemrograman_visual.dart';
import 'package:aplikasi_tutor_pribadi/Manajemen.dart';
import 'package:aplikasi_tutor_pribadi/kecerdasan_mesin_dan_buatan.dart';

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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          elevation: 0, // Menghilangkan bayangan di bawah AppBar
        ),
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Metode Numerik', 'icon': Icons.access_alarm_sharp},
    {'title': 'Pemrograman Mobile', 'icon': Icons.phone_android},
    {'title': 'Metodologi Penelitian', 'icon': Icons.book},
    {'title': 'Pemrograman Visual', 'icon': Icons.personal_injury_sharp},
    {'title': 'Manajemen', 'icon': Icons.manage_accounts_sharp},
    {'title': 'Kecerdasan Mesin Dan Buatan', 'icon': Icons.smart_button_sharp},
    {'title': 'Keamanan Informasi', 'icon': Icons.sledding_sharp},
    {
      'title': 'Sistem Terdistribusi',
      'icon': Icons.horizontal_distribute_sharp
    },

    // Tambahkan item menu lainnya di sini jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Tutoring Pribadi'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan fungsi pencarian di sini jika diperlukan
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              leading: Icon(menuItems[index]['icon'], color: Colors.blue),
              title: Text(menuItems[index]['title']),
              onTap: () {
                if (menuItems[index]['title'] == 'Pemrograman Mobile') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PemrogramanMobilePage()),
                  );
                } else if (menuItems[index]['title'] == 'Metode Numerik') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MetodeNumerik()),
                  );
                } else if (menuItems[index]['title'] ==
                    'Metodologi Penelitian') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MetodologiPenelitianPage()),
                  );
                } else if (menuItems[index]['title'] == 'Pemrograman Visual') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PemrogramanVisualPage()),
                  );
                } else if (menuItems[index]['title'] == 'Manajemen') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Manajemen()),
                  );
                } else if (menuItems[index]['title'] ==
                    'Kecerdasan Mesin Dan Buatan') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KecerdasanMesinDanBuatan()),
                  );
                } else if (menuItems[index]['title'] == 'Keamanan Informasi') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KeamananInformasi()),
                  );
                } else if (menuItems[index]['title'] ==
                    'Sistem Terdistribusi') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SistemTerdistribusi()),
                  );
                }
                // Tambahkan penanganan untuk item menu lainnya di sini jika diperlukan
              },
            ),
          );
        },
      ),
    );
  }
}
