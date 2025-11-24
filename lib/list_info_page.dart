import 'package:flutter/material.dart';

class ListInfoPage extends StatelessWidget {
  const ListInfoPage({super.key});

  // Data Simple dan Umum (Pemula)
  final List<Map<String, String>> infoData = const [
    {
      'title': 'Penting: Internet',
      'subtitle': 'Aplikasi ini butuh koneksi internet (Wi-Fi/Data) untuk peta.',
    },
    {
      'title': 'Info Lokasi',
      'subtitle': 'Peta mengarah ke Bosscha, tempat yang sejuk.',
    },
    {
      'title': 'Tema Warna',
      'subtitle': 'Menggunakan warna dasar biru navy dan putih.',
    },
    {
      'title': 'Navigasi',
      'subtitle': 'Semua halaman utama dapat diakses lewat tombol bawah.',
    },
    {
      'title': 'Tentang Bosscha',
      'subtitle': 'Tempat yang cocok untuk melihat bintang di malam hari.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips Umum (Pemula)'),
        backgroundColor: Colors.indigo, // Tema Navy
      ),
      body: ListView.builder(
        itemCount: infoData.length,
        itemBuilder: (context, index) {
          final item = infoData[index];

          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: ListTile(
              leading: const Icon(
                Icons.lightbulb_outline,
                color: Colors.amber, // Aksen
              ),
              title: Text(
                item['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(item['subtitle']!),
              // ... onTap tetap sama
            ),
          );
        },
      ),
    );
  }
}