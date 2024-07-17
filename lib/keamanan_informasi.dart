import 'package:flutter/material.dart';

class KeamananInformasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keamanan Informasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Keamanan informasi adalah praktik untuk melindungi data dari akses, penggunaan, atau pengungkapan yang tidak sah atau tidak sah. Ini mencakup berbagai teknologi, kebijakan, prosedur, dan tindakan yang dirancang untuk menjaga kerahasiaan, integritas, dan ketersediaan data serta sistem informasi. Tujuan utamanya adalah untuk melindungi informasi dari berbagai ancaman seperti serangan cyber, pencurian data, kebocoran informasi, dan gangguan layanan.',
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
