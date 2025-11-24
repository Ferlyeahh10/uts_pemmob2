import 'package:flutter/material.dart';
import 'map_page.dart'; // Halaman Peta
import 'list_info_page.dart'; // Halaman List
import 'about_page.dart'; // Halaman About

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Indeks halaman yang sedang aktif (0 = Map, 1 = List, 2 = About)
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = const [
    MapPage(),
    ListInfoPage(),
    AboutPage(),
  ];

  // Fungsi untuk mengganti indeks saat item navigasi diklik
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.terrain), // Ikon Gunung/Terrain untuk Map
            label: 'Lembang Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline), // Ikon Tips Info
            label: 'Tips Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Tentang App',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber, // Aksen Kuning/Emas
        unselectedItemColor: Colors.white70, // Putih pudar
        backgroundColor: Colors.indigo, // Latar belakang Navy
        onTap: _onItemTapped,
      ),
    );
  }
}