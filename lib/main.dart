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
        body: Center(
          // Parameter child pada widget Center menerima widget, di sini menggunakan widget Text.
          child: Text(
            'Selamat Datang di Flutter', // Ini adalah nilai literal bertipe String.
            style: TextStyle(
              fontSize: 24, // Nilai numerik (double) yang mengatur ukuran font.
              color: Colors.blue, // Mengatur warna teks menggunakan konstanta Color dari kelas Colors.
            ),
          ),
        ),
      ),
    );
  }
}

/*
Penjelasan:
1. Parameter yang Bertipe Widget:
   - runApp(MyApp()):
     Fungsi runApp() membutuhkan sebuah widget. Di sini, MyApp() adalah widget.
   - MaterialApp:
     Parameter home di MaterialApp harus berupa widget, dan di sini diisi dengan widget Scaffold.
   - Scaffold:
     * appBar: Diisi dengan widget AppBar, yang pada gilirannya menerima parameter title (widget Text).
     * body: Diisi dengan widget Center.
   - Center:
     Parameter child di widget Center harus berupa widget, dan di sini diisi dengan widget Text.
   - AppBar:
     Parameter title di AppBar adalah widget. Pada contoh ini, diisi dengan widget Text.

2. Parameter dengan Tipe Primitif/Nilai Literal:
   - Text Widget (Pesan Teks):
     Parameter pertama dari widget Text adalah sebuah string literal ('Selamat Datang di Flutter').
     String merupakan tipe data primitif yang digunakan untuk teks.
   - TextStyle:
     Parameter style pada widget Text menerima objek TextStyle untuk mengatur tampilan teks.
     Di dalam TextStyle terdapat:
       * fontSize: Menggunakan nilai numerik (double), contohnya 24.
       * color: Menggunakan objek Color, di sini menggunakan Colors.blue.
         Meskipun Color adalah kelas, dalam konteks styling, ia digunakan sebagai nilai konstan.

Kesimpulan:
- Parameter Widget:
  Parameter seperti child, appBar, title, dan home harus diisi dengan widget untuk menentukan struktur antarmuka pengguna.
- Parameter Tipe Primitif/Nilai Literal:
  Parameter seperti string pada Text dan angka pada fontSize merupakan nilai literal yang mengatur konten dan gaya tampilan widget.
*/
