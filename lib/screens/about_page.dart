import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'Aplikasi ini dibuat sebagai latihan mata kuliah Pemrograman Mobile 2. '
          'Aplikasi Profile Card App menampilkan data pengguna dan memungkinkan untuk mengubahnya. '
          'Selain itu, tersedia tema terang dan gelap, serta navigasi antar halaman.',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
