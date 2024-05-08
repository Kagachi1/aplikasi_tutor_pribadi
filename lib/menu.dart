import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final List<String> mataKuliah = [
    'Matematika',
    'Fisika',
    'Kimia',
    'Biologi',
    'Bahasa Inggris',
    // tambahkan mata kuliah lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
      ),
      body: ListView.builder(
        itemCount: mataKuliah.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(mataKuliah[index]),
              onTap: () {
                Navigator.pushNamed(context, '/pilih-tutor',
                    arguments: mataKuliah[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
