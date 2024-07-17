import 'package:flutter/material.dart';

class SistemTerdistribusi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistem Terdistribusi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Sistem terdistribusi adalah infrastruktur komputasi yang terdiri dari beberapa komputer atau node yang terhubung melalui jaringan komunikasi. Tujuan utama dari sistem terdistribusi adalah untuk meningkatkan kinerja dan efisiensi sistem dengan mendistribusikan beban kerja atau tugas-tugas komputasi ke berbagai node atau komputer yang terhubung.',
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
