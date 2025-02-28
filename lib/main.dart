import 'package:flutter/material.dart';

// Fungsi utama menjalankan aplikasi Flutter.
void main() {
  runApp(MyApp());
}

// Widget root aplikasi.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic Widget', // Judul aplikasi
      home: BasicWidgetDemo(), // Menentukan halaman utama
    );
  }
}

// Widget halaman utama yang mendemonstrasikan berbagai widget dasar secara progresif.
class BasicWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar di bagian atas dengan judul.
      appBar: AppBar(
        title: Text('Demo Widget Dasar'),
      ),
      // Body utama berisi kumpulan widget contoh yang bisa digulir.
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Container dengan Text
            Container(
              padding: EdgeInsets.all(16), // Padding di dalam container
              margin: EdgeInsets.all(10), // Margin di luar container
              decoration: BoxDecoration(
                color: Colors.amber, // Warna latar container
                borderRadius: BorderRadius.circular(8), // Membuat sudut membulat
              ),
              child: Text(
                'This is a Container with Text',
                style: TextStyle(fontSize: 20), // Ukuran teks
              ),
            ),
            // 2. Row: Menampilkan ikon dan teks secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyebar widget secara merata
              children: [
                Icon(Icons.star, color: Colors.red, size: 40), // Ikon bintang merah
                Text('Star'),
                Icon(Icons.star, color: Colors.red, size: 40), // Ikon bintang kedua
              ],
            ),
            SizedBox(height: 20), // Spasi vertikal antar widget
            // 3. Column: Menyusun teks secara vertikal.
            Column(
              children: [
                Text('First Row'),
                SizedBox(height: 10), // Spasi antara baris
                Text('Second Row'),
                SizedBox(height: 10),
                Text('Third Row'),
              ],
            ),
            SizedBox(height: 20),
            // 4. ListView: Daftar item yang dapat di-scroll.
            Container(
              height: 200, // Tinggi tetap untuk ListView
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  ListTile(title: Text('Item 1')),
                  ListTile(title: Text('Item 2')),
                  ListTile(title: Text('Item 3')),
                  ListTile(title: Text('Item 4')),
                ],
              ),
            ),
            SizedBox(height: 20),
            // 5. GridView: Menampilkan item dalam format grid (2 kolom).
            Container(
              height: 200, // Tinggi tetap untuk GridView
              padding: EdgeInsets.all(16),
              child: GridView.count(
                crossAxisCount: 2, // Jumlah kolom tetap
                crossAxisSpacing: 10, // Spasi antar kolom
                mainAxisSpacing: 10, // Spasi antar baris
                children: List.generate(4, (index) {
                  return Container(
                    alignment: Alignment.center, // Menempatkan teks di tengah container
                    color: Colors.lightBlue, // Warna latar grid
                    child: Text(
                      'Grid ${index + 1}',
                      style: TextStyle(color: Colors.white), // Warna teks putih
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 20),
            // 6. Custom Widget: Penggunaan widget MyCard yang dibuat khusus.
            MyCard(
              title: 'Custom Card Title',
              description: 'This is the description of the custom card widget.',
            ),
          ],
        ),
      ),
      // Floating Action Button di pojok kanan bawah.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi saat tombol ditekan.
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// Definisi Custom Widget MyCard.
class MyCard extends StatelessWidget {
  final String title; // Properti judul
  final String description; // Properti deskripsi

  // Constructor dengan parameter wajib.
  MyCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10), // Margin di luar kartu
      child: Padding(
        padding: EdgeInsets.all(16), // Padding di dalam kartu
        child: Column(
          mainAxisSize: MainAxisSize.min, // Minimalkan penggunaan ruang vertikal
          children: [
            // Menampilkan judul dengan style tebal.
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Spasi antara judul dan deskripsi
            // Menampilkan deskripsi.
            Text(description),
          ],
        ),
      ),
    );
  }
}
