import 'package:flutter/material.dart';
import 'login_page.dart'; // Import file login page

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Panggil fungsi untuk pindah halaman setelah 3 detik
    _navigateToHome();
  }

  _navigateToHome() async {
    // Menunggu selama 3 detik
    await Future.delayed(const Duration(seconds: 3), () {});

    // Pindah ke halaman LoginPage dan hapus semua rute sebelumnya
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Contoh Logo atau Nama Aplikasi
            Icon(Icons.widgets, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              'Info Lembang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}