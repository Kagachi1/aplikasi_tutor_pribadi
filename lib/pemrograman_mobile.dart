import 'package:flutter/material.dart';

class PemrogramanMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemrograman Mobile'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman untuk Pemrograman Mobile.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
