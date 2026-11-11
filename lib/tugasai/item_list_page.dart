import 'package:flutter/material.dart';
import 'detail_item_page.dart'; // Pastikan mengimpor file halaman 2

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header Profil / User
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        backgroundColor: Color(0xFFEF4444),
                        child: Icon(Icons.person, color: Colors.white, size: 28),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hello,",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Robert Fox ✌️",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.notifications_none, color: Color(0xFF1E293B)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Kotak Kategori (Dropdown Style) & Pencarian
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.02),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.sports_kabaddi, color: Color(0xFFEF4444), size: 20),
                        SizedBox(width: 8),
                        Text(
                          "Muaythai Coach",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 18),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.02),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.search, color: Color(0xFF1E293B)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Daftar Kartu Pelatih Muaythai (Total 6 Pelatih)
              _buildCoachCard(
                context,
                coachName: "Coach Tio",
                specialty: "Senior Striking • Certified Pro",
                price: "\$300",
                rating: "4.9",
                cardColor: const Color(0xFFE2F3ED),
                isFavorite: false,
              ),
              const SizedBox(height: 16),
              _buildCoachCard(
                context,
                coachName: "Coach Galih",
                specialty: "Clinched & Elbow Specialist",
                price: "\$250",
                rating: "4.8",
                cardColor: const Color(0xFFFEF3C7),
                isFavorite: true,
              ),
              const SizedBox(height: 16),
              _buildCoachCard(
                context,
                coachName: "Coach Ardhi",
                specialty: "Pad Work & Conditioning",
                price: "\$250",
                rating: "4.8",
                cardColor: const Color(0xFFEDE9FE),
                isFavorite: false,
              ),
              const SizedBox(height: 16),
              _buildCoachCard(
                context,
                coachName: "Coach Bima",
                specialty: "Defensive Counter & Speed",
                price: "\$275",
                rating: "4.9",
                cardColor: const Color(0xFFFCE7F3),
                isFavorite: false,
              ),
              const SizedBox(height: 16),
              _buildCoachCard(
                context,
                coachName: "Coach Rian",
                specialty: "Kicking Power & Stamina",
                price: "\$220",
                rating: "4.7",
                cardColor: const Color(0xFFE0F2FE),
                isFavorite: true,
              ),
              const SizedBox(height: 16),
              _buildCoachCard(
                context,
                coachName: "Coach Dedi",
                specialty: "Beginner Fundament & Sparring",
                price: "\$200",
                rating: "4.6",
                cardColor: const Color(0xFFFFEDD5),
                isFavorite: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Builder untuk Kartu Pelatih
  Widget _buildCoachCard(
    BuildContext context, {
    required String coachName,
    required String specialty,
    required String price,
    required String rating,
    required Color cardColor,
    required bool isFavorite,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white, size: 28),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coachName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      specialty,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  const Text(
                    "Per session",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.black54,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Tombol Navigasi ke Halaman Detail (Halaman 2)
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_outward,
                        color: Color(0xFF1E293B),
                        size: 20,
                      ),
                      onPressed: () {
                        // Mengirim data pelatih yang diklik ke Halaman 2
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailItemPage(
                              coachName: coachName,
                              specialty: specialty,
                              pricePerSession: int.parse(price.replaceAll(RegExp(r'[^0-9]'), '')),
                              rating: rating,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}