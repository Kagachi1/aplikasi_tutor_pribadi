import 'package:flutter/material.dart';

class PemrogramanMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemrograman Mobile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Pemrograman mobile dalam konteks teknik informatika adalah proses pengembangan perangkat lunak untuk perangkat mobile seperti ponsel pintar (smartphone) dan tablet. Ini melibatkan penggunaan berbagai bahasa pemrograman, platform, dan kerangka kerja (framework) untuk membuat aplikasi yang dapat dijalankan di sistem operasi mobile seperti Android dan iOS.\n\n\nPenggunaan perangkat mobile seperti ponsel pintar dan tablet terus meningkat secara signifikan. Ini berarti ada permintaan yang tinggi untuk aplikasi mobile yang dapat memenuhi kebutuhan pengguna dalam berbagai bidang, mulai dari hiburan hingga produktivitas, kesehatan, keuangan, dan banyak lagi. Pemrograman mobile memungkinkan mahasiswa teknik informatika untuk memahami dan berkontribusi pada industri yang berkembang pesat ini.\n\n\nBerikut adalah beberapa tutorial/pembelajran yang dapat dipilih mahasiswa untuk mata kuliah Pemrograman Mobile:\n(1) Apa saja yang diperlukan untuk mata kuliah Pemrograman Mobile\nTutorial atau pembelajaran tentang apa saja yang diperlukan dalam mata kuliah Pemrograman Mobile, baik dari segi hardware maupuh software.\n\n(2) Tutorial Penginstallan Flutter\nTutorial atau arahan dari dosen matkul kepada mahasiswa terkait cara penginstallan flutter besrta SDK nya serta beberapa ekstensi yang diperlukan.', // Teks dikosongkan di sini
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Nunito',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tampilkan dialog jadwal tutoring
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Jadwal Tutoring"),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama Dosen: Triyono, S.Kom"),
                            Text("Nomor WA: +62-9876-54321"),
                            Text("Ketersediaan: Rabu-Jumat, 10.00-15.00"),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Tutup"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Lakukan Persetujuan untuk Jadwal Tutoring"),
            ),
          ],
        ),
      ),
    );
  }
}
