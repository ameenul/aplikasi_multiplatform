import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh Scaffold')),
        // Contoh penggunaan Text dengan styling di dalam widget Center.
        body: Center(
          child: Text(

            'Selamat Datang di Flutter', // Pesan sambutan
            style: TextStyle(
              fontSize: 24, // Mengatur ukuran font
              color: Colors.blue, // Mengatur warna teks
            ),
          ),
        ),

      ),
    );
  }
}
