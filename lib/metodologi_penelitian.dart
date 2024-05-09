import 'package:flutter/material.dart';

class MetodologiPenelitianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metodologi Penelitian'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
            16.0), // Tambahkan padding agar teks tidak terlalu dekat dengan tepi layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Metodologi merupakan ilmu-ilmu/cara yang digunakan untuk memperoleh kebenaran menggunakan penelusuran dengan tata cara tertentu dalam menemukan kebenaran, tergantung dari realitas yang sedang dikaji.\nMatkul metode penelitian sangat penting untuk jurusan teknik informatika karena memberikan dasar yang kuat dalam memahami proses penelitian ilmiah, yang merupakan keterampilan penting bagi para mahasiswa untuk mengembangkan solusi yang inovatif dalam bidang teknik informatika.\n\n\nBerikut beberapa tutorial atau pembelajaran yang dapat dipilih mahasiswa untuk didiskusikan kepada dosen mata kuliah Metodologi Penelitian untuk meminta sedikit penjelasan dan pertanyaan terkait mata kuliah tersebut\n\n\n(1) Alat dan software apa saja yang diperlukan dalam mata kuliah Metodologi Penelitian.\n Mahasiswa akan diberikan penjelasan tentang apa saja yang diperlukan untuk matkul Metodologi Penelitian baik hardware maupun software\n\n(2) Cara pemasangan software pendukung\nMahasiswa akan diberikan tutorial terkait cara pemasangan untuk software pendukung yang digunakan untuk mempermudah pembuatan artikel dan jurnal ilmiah',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Nunito', // Menggunakan font Nunito
                  ),
                  textAlign: TextAlign.left, // Mengatur teks berada di kiri
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
                            Text("Nama Dosen: Dr. John Doe"),
                            Text("Nomor WA: +123456789"),
                            Text("Ketersediaan: Senin - Jumat, 08.00 - 17.00"),
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
