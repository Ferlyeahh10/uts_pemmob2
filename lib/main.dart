import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Info Lembang',
      theme: ThemeData(
        // Menggunakan Indigo sebagai PrimarySwatch (Warna Utama)
        primarySwatch: Colors.indigo,
        // Warna Aksen untuk beberapa komponen (misalnya progress bar)
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber, // Aksen Kuning/Emas
        ),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}