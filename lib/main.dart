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

/*
Penjelasan Tambahan Mengenai Factory Constructor dan Fungsi Static:

Di Dart, sebuah kelas tidak dideklarasikan sebagai "static". Namun, kita dapat memiliki anggota static
di dalam kelas, dan juga menggunakan factory constructor yang cara pemanggilannya mirip dengan fungsi static.

Contoh kelas sederhana:

import 'dart:math'; // Digunakan untuk fungsi cos() dan sin()

class MyPoint {
  final double x;
  final double y;

  // Konstruktor biasa: Membuat instance MyPoint dengan nilai x dan y yang diberikan.
  MyPoint(this.x, this.y);

  // Factory constructor:
  // Tidak dideklarasikan dengan kata kunci static, namun bisa dipanggil langsung seperti MyPoint.fromPolar(...)
  // Contoh: Menghitung nilai x dan y dari koordinat polar (radius dan theta).
  factory MyPoint.fromPolar(double radius, double theta) {
    double x = radius * cos(theta);
    double y = radius * sin(theta);
    return MyPoint(x, y);
  }

  // Fungsi static:
  // Dideklarasikan dengan kata kunci static sehingga dapat dipanggil langsung melalui nama kelas.
  // Contoh: Mengembalikan titik asal (origin) yang bernilai (0,0).
  static MyPoint origin() {
    return MyPoint(0, 0);
  }
}

Penjelasan:
1. Factory Constructor:
   - Digunakan untuk membuat instance dengan logika khusus, seperti menghitung koordinat dari nilai polar.
   - Meskipun cara pemanggilannya (MyPoint.fromPolar(...)) menyerupai fungsi static,
     factory constructor tidak dideklarasikan dengan kata kunci static.
   - Factory constructor mengembalikan sebuah instance dari kelas tersebut setelah melakukan proses tertentu.

2. Fungsi Static:
   - Dideklarasikan secara eksplisit dengan kata kunci static.
   - Dapat dipanggil langsung melalui nama kelas tanpa membuat instance terlebih dahulu, contohnya MyPoint.origin().
   - Fungsi static biasanya digunakan untuk menyediakan nilai konstan atau metode utilitas yang tidak bergantung pada state suatu instance.

Dengan demikian, meskipun factory constructor dapat dipanggil dengan cara yang mirip dengan fungsi static,
mereka merupakan mekanisme konstruktor khusus untuk pembuatan objek, sedangkan fungsi static adalah metode
yang berdiri sendiri dan tidak memerlukan instance dari kelas untuk dipanggil.
*/
