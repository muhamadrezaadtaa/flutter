import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0F172A), Color(0xFF1E293B)], // Nuansa dark modern
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Bagian Atas
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Selamat Datang!",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Silakan pilih menu navigasi di bawah",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Daftar Menu / Tombol Navigasi
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFF0F172A),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    children: [
                      _buildMenuCard(
                        context,
                        title: 'Masuk Profile',
                        subtitle: 'Lihat informasi profil Anda',
                        icon: Icons.person_outline,
                        color: Colors.blue,
                        routeName: '/about',
                      ),
                      _buildMenuCard(
                        context,
                        title: 'Masuk List',
                        subtitle: 'Kelola daftar artikel atau data',
                        icon: Icons.list_alt_rounded,
                        color: Colors.orange,
                        routeName: '/article-list',
                      ),
                      _buildMenuCard(
                        context,
                        title: 'Masuk Instagram',
                        subtitle: 'Hubungkan atau lihat feed sosial media',
                        icon: Icons.camera_alt_outlined,
                        color: Colors.pink,
                        routeName: '/instagram',
                      ),
                      _buildMenuCard(
                        context,
                        title: 'Masuk Latihan Tiga',
                        subtitle: 'Halaman modul latihan ketiga',
                        icon: Icons.fitness_center_rounded,
                        color: Colors.purple,
                        routeName: '/latihantiga',
                      ),
                      _buildMenuCard(
                        context,
                        title: 'Masuk Form',
                        subtitle: 'Isi formulir data diri',
                        icon: Icons.edit_note_rounded,
                        color: Colors.teal,
                        routeName: '/form-page',
                      ),
                      _buildMenuCard(
                        context,
                        title: 'Masuk Form Eskul',
                        subtitle: 'Pendaftaran kegiatan ekstrakurikuler',
                        icon: Icons.sports_basketball_rounded,
                        color: Colors.green,
                        routeName: '/eskul-form',
                      ),
                      _buildMenuCard(
                        context,
                        title: 'Masuk Kasir',
                        subtitle: 'Kelola daftar item dan transaksi',
                        icon: Icons.shopping_cart_outlined,
                        color: Colors.redAccent,
                        routeName: '/kasir',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Pembantu untuk Membuat Desain Kartu Menu yang Konsisten
  Widget _buildMenuCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required String routeName,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: color, size: 24),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}