import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget ini adalah akar (root) dari aplikasi Anda.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Ini adalah tema untuk aplikasi Anda.
        //
        // COBA INI: Coba jalankan aplikasi Anda dengan "flutter run". Anda akan
        // melihat aplikasi memiliki toolbar berwarna ungu. Kemudian, tanpa
        // menghentikan aplikasi, coba ubah seedColor di colorScheme di bawah
        // menjadi Colors.green lalu lakukan "hot reload" (simpan perubahan Anda
        // atau tekan tombol "hot reload" di IDE yang mendukung Flutter, atau
        // tekan "r" jika Anda menggunakan command line untuk menjalankan app).
        //
        // Perhatikan bahwa nilai counter tidak kembali ke nol; state
        // aplikasi tidak hilang selama proses reload. Untuk mengatur ulang
        // state, gunakan hot restart.
        //
        // Hal ini juga berlaku untuk kode, bukan hanya nilai: Kebanyakan
        // perubahan kode bisa diuji hanya dengan hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Widget ini adalah halaman utama aplikasi Anda. Widget ini bersifat stateful,
  // artinya memiliki State object (didefinisikan di bawah) yang berisi field
  // yang memengaruhi tampilannya.

  // Kelas ini adalah konfigurasi untuk state. Kelas ini menyimpan nilai-nilai
  // (dalam contoh ini adalah title) yang diberikan oleh induknya (dalam hal ini
  // widget App) dan digunakan oleh metode build di State. Field pada
  // subclass Widget selalu ditandai dengan "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Pemanggilan setState ini memberi tahu kerangka kerja Flutter bahwa
      // ada sesuatu yang berubah di State ini, yang menyebabkan build method
      // di bawah dipanggil ulang sehingga tampilan dapat menyesuaikan nilai
      // terbaru. Jika kita mengubah _counter tanpa memanggil setState(),
      // maka build method tidak akan dipanggil lagi, dan tidak ada perubahan
      // yang terlihat.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Metode ini dipanggil ulang setiap kali setState dipanggil, misalnya oleh
    // metode _incrementCounter di atas.
    //
    // Kerangka kerja Flutter dioptimalkan agar pemanggilan ulang build method
    // dapat berjalan cepat, sehingga Anda bisa membangun ulang apa pun yang
    // perlu diperbarui tanpa harus mengubah instance widget satu per satu.
    return Scaffold(
      appBar: AppBar(
        // COBA INI: Coba ubah warnanya di sini menjadi warna tertentu (misalnya
        // Colors.amber) dan lakukan hot reload untuk melihat AppBar berubah
        // warna sementara warna lain tetap sama.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Di sini kita mengambil nilai dari objek MyHomePage yang dibuat oleh
        // App.build, lalu menggunakannya untuk menampilkan judul di AppBar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center adalah widget layout yang mengambil satu anak (child) dan
        // menempatkannya di tengah induknya.
        child: Column(
          // Column juga merupakan widget layout. Widget ini menampilkan daftar
          // anak secara vertikal. Secara default, lebarnya disesuaikan dengan
          // kebutuhan anak, dan tingginya berusaha semaksimal mungkin agar
          // sesuai dengan induknya.
          //
          // Column memiliki berbagai properti untuk mengontrol bagaimana
          // ukurannya dan posisi anak-anaknya. Di sini kita menggunakan
          // mainAxisAlignment untuk menengahkan anak-anaknya secara vertikal;
          // sumbu utama (main axis) di sini adalah sumbu vertikal karena Column
          // tersusun secara vertikal (sumbu silang/cross axis akan horizontal).
          //
          // COBA INI: Lakukan "debug painting" (pilih aksi "Toggle Debug Paint"
          // di IDE, atau tekan "p" di konsol), untuk melihat kerangka (wireframe)
          // untuk setiap widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Koma di akhir ini membuat auto-format lebih rapi untuk build methods.
    );
  }
}
