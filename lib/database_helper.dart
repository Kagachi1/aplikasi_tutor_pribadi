import 'dart:async';
import 'package:mysql1/mysql1.dart';

class DatabaseHelper {
  late MySqlConnection _connection;

  Future<MySqlConnection> _connect() async {
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'angger', // Ganti dengan username MySQL Anda
      password: '', // Ganti dengan password MySQL Anda
      db: 'flutter_login_db', // Ganti dengan nama database Anda
    );

    // Coba buka koneksi
    try {
      _connection = await MySqlConnection.connect(settings);
      print('Connected to MySQL database');
    } catch (e) {
      print('Error connecting to MySQL: $e');
      throw Exception('Failed to connect to database');
    }

    return _connection;
  }

  Future<Map<String, dynamic>?> getUser(
      String username, String password) async {
    MySqlConnection conn = await _connect();
    var result;

    try {
      // Query untuk mencari pengguna berdasarkan username dan password
      var results = await conn.query(
        'SELECT * FROM users WHERE username = ? AND password = ?',
        [username, password],
      );

      // Jika hasil query tidak kosong, ambil data pengguna pertama
      if (results.isNotEmpty) {
        result = results.first.fields;
      }
    } catch (e) {
      print('Error querying MySQL: $e');
    } finally {
      await conn.close();
    }

    return result;
  }
}
