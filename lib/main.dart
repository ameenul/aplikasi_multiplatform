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
              // Widget Icon menggunakan IconData yang diambil dari kelas Icons.
              // Kelas Icons menyediakan kumpulan konstanta statis yang mewakili berbagai ikon Material Design.
              // Misalnya, Icons.star adalah IconData untuk ikon bintang.
              Icon(Icons.star, color: Colors.red, size: 40), // Ikon bintang merah

              Text('Bintang'), // Teks pendamping ikon

              // Kita dapat menggunakan ikon lain dengan mengganti properti IconData, misalnya Icons.favorite untuk hati,
              // atau Icons.home untuk rumah. Semua ikon tersebut didefinisikan sebagai properti statis di dalam kelas Icons.
              Icon(Icons.star, color: Colors.red, size: 40), // Ikon bintang kedua
            ],
          ),
        ),

      ),
    );
  }
}

// Jika ingin menggunakan ikon custom, Anda bisa mengambil gambar dari aset atau menggunakan font ikon custom.
// Berikut adalah contoh penggunaan custom icon menggunakan ImageIcon dan AssetImage:

// body: Center(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyebarkan ruang secara merata antar widget
// children: [
// // Menggunakan ImageIcon untuk menampilkan ikon custom dari aset gambar.
// // Pastikan Anda telah menambahkan file 'assets/custom_icon.png' pada folder aset dan mendaftarkannya di pubspec.yaml.
// ImageIcon(
// AssetImage('assets/custom_icon.png'), // Path menuju file gambar custom
// color: Colors.green, // Warna ikon yang diinginkan
// size: 40, // Ukuran ikon
// ),
// Text('Custom Icon'), // Teks pendamping ikon
// // Anda juga bisa menampilkan ikon custom dengan cara lain, seperti menggunakan widget Image jika tidak membutuhkan
// // properti seperti ukuran atau warna yang otomatis dapat diubah.
// ],
// ),
// ),

/*
Penjelasan:
1. Custom Icon Menggunakan ImageIcon:
   - Widget ImageIcon digunakan untuk menampilkan ikon yang berasal dari aset gambar.
   - Anda perlu memastikan bahwa file gambar custom (misalnya, custom_icon.png) telah ditempatkan di folder aset
     dan direferensikan dengan benar di file pubspec.yaml.
   - Properti AssetImage menunjuk pada lokasi file gambar aset Anda.
   - Anda dapat mengatur warna dan ukuran ikon melalui properti 'color' dan 'size'.

2. Alternatif Menggunakan Widget Image:
   - Jika Anda tidak membutuhkan fitur khusus seperti mengubah warna, Anda juga dapat menggunakan widget Image secara langsung.
   - Contoh: Image.asset('assets/custom_icon.png').

Dengan demikian, untuk menampilkan ikon custom di Flutter, Anda dapat menggunakan ImageIcon bersama dengan AssetImage,
atau widget Image, tergantung pada kebutuhan styling dan interaktivitas yang Anda inginkan.
*/