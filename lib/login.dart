import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(''),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Expanded(
                child: Image.network(
                  'https://media.istockphoto.com/id/1200064755/id/vektor/tombol-ikon-login-profil-pengguna-atau-autentikasi-akses-orang-simbol-tanda-logo-masuk-akun.jpg?s=612x612&w=0&k=20&c=zh-oadBpql4ZbRXxMf2SezrcLvanyV1zVDlg3keJAH8=',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Username',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 16)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/menu');
                },
              ),
              SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                ),
                child: Text('Daftar', style: TextStyle(fontSize: 16)),
                onPressed: () {
                  // Tambahkan logika pindah ke halaman pendaftaran
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
