import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // Data Diri Sesuai Permintaan Anda
  final String namaNPM = 'Ferlya Tabitha P. (23552011131)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: Colors.indigo, // Tema Navy
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Ikon Gunung (Elemen Tema)
              const Icon(
                Icons.terrain,
                size: 80,
                color: Colors.indigo,
              ),
              const SizedBox(height: 20),
              const Text(
                'Aplikasi Info Lembang',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
              ),
              const SizedBox(height: 10),
              const Text(
                'Dibuat sebagai proyek awal Pemrograman Mobile. Fokus pada lokasi Bosscha, Lembang.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),

              // --- Copyright Sesuai Tugas ---
              Text(
                '© Copyright 2025 by $namaNPM',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Menggunakan Library: flutter_map',
                style: TextStyle(fontSize: 14, color: Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}