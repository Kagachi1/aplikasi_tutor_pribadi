import 'package:flutter/material.dart';

class Manajemen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manajemen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Manajemen adalah proses merencanakan, mengorganisasi, mengarahkan, dan mengontrol sumber daya (seperti manusia, uang, waktu, dan teknologi) untuk mencapai tujuan yang telah ditetapkan dalam suatu organisasi atau entitas. Ini melibatkan pengambilan keputusan, pengaturan, koordinasi, dan pengawasan dari berbagai aspek kegiatan organisasi untuk mencapai efisiensi dan efektivitas dalam mencapai tujuan yang telah ditentukan.',
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
