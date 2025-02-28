import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Parameter home pada MaterialApp harus berupa widget.
      // Di sini, home diisi dengan widget Scaffold.
      home: Scaffold(
        // Parameter appBar menerima widget AppBar.
        // AppBar di sini diberi parameter title yang juga berupa widget (Text).
        appBar: AppBar(title: Text('Contoh Scaffold')),
        // Parameter body pada Scaffold menerima widget, di sini menggunakan Center.
        // Contoh penggunaan Container untuk membungkus widget Text dengan padding, margin, dan dekorasi.
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16), // Memberikan jarak di dalam container
            margin: EdgeInsets.symmetric(horizontal: 20), // Memberikan jarak di luar container secara horizontal
            decoration: BoxDecoration(
              color: Colors.amber, // Warna latar container
              borderRadius: BorderRadius.circular(8), // Membuat sudut container menjadi bulat
            ),
            child: Text(
              'Ini di dalam Container', // Teks yang ditampilkan di dalam container
              style: TextStyle(fontSize: 20), // Mengatur ukuran teks
            ),
          ),
        ),

      ),
    );
  }
}


