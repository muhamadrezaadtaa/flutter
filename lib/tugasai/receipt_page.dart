import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  final String coachName;
  final String specialty;
  final int selectedHours;
  final int pricePerSession;
  final String paymentMethod; // "cash" atau "qris"
  final double cashPaid;
  final double changeAmount;

  const ReceiptPage({
    super.key,
    required this.coachName,
    required this.specialty,
    required this.selectedHours,
    required this.pricePerSession,
    required this.paymentMethod,
    required this.cashPaid,
    required this.changeAmount,
  });

  @override
  Widget build(BuildContext context) {
    int totalPrice = pricePerSession * selectedHours;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Struk Pembayaran",
          style: TextStyle(
            color: Color(0xFF1E293B),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // KARTU STRUK UTAMA
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Ikon Sukses / Header Struk
                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFFE2F3ED),
                    child: Icon(Icons.check, color: Colors.green, size: 32),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Pembayaran Berhasil",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Kasir Sederhana • Muaythai Booking",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const Divider(height: 32, thickness: 1, color: Colors.grey), // Diperbaiki di sini

                  // DETAIL TRANSAKSI
                  _buildReceiptRow("Nama Coach", coachName),
                  _buildReceiptRow("Spesialisasi", specialty),
                  _buildReceiptRow("Durasi Sesi", "$selectedHours Jam"),
                  _buildReceiptRow("Tarif / Jam", "\$$pricePerSession"),
                  _buildReceiptRow(
                    "Metode Bayar",
                    paymentMethod == "cash" ? "Cash Tunai" : "QRIS Code",
                  ),

                  // KONDISI JIKA PEMBAYARAN MENGGUNAKAN CASH
                  if (paymentMethod == "cash") ...[
                    const Divider(height: 24, thickness: 1, color: Colors.grey),
                    _buildReceiptRow("Uang Diterima", "\$$cashPaid"),
                    _buildReceiptRow(
                      "Uang Kembalian",
                      "\$${changeAmount.toStringAsFixed(0)}",
                    ),
                  ],

                  const Divider(height: 32, thickness: 1, color: Colors.grey),

                  // TOTAL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total Pembayaran",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E293B),
                        ),
                      ),
                      Text(
                        "\$$totalPrice",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // TOMBOL SELESAI / KEMBALI KE HOME
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E293B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  // Kembali ke halaman utama (Halaman 1)
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text(
                  "Selesai (Kembali ke Beranda)",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget Baris Pembantu untuk Struk
  Widget _buildReceiptRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 13)),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: Color(0xFF1E293B),
            ),
          ),
        ],
      ),
    );
  }
}