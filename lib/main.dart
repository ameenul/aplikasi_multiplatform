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
        // Contoh penggunaan Row untuk menyusun ikon dan teks secara horizontal.
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyebarkan ruang secara merata antar widget
            children: [
              Icon(Icons.star, color: Colors.red, size: 40), // Ikon bintang merah
              Text('Bintang'), // Teks pendamping ikon
              Icon(Icons.star, color: Colors.red, size: 40), // Ikon bintang kedua
            ],
          ),
        ),


      ),
    );
  }
}


