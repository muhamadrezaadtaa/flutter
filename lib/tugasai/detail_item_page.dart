import 'package:flutter/material.dart';
import 'receipt_page.dart'; // Impor file halaman 3 (struk pembayaran)

class DetailItemPage extends StatefulWidget {
  final String coachName;
  final String specialty;
  final int pricePerSession;
  final String rating;

  const DetailItemPage({
    super.key,
    required this.coachName,
    required this.specialty,
    required this.pricePerSession,
    required this.rating,
  });

  @override
  State<DetailItemPage> createState() => _DetailItemPageState();
}

class _DetailItemPageState extends State<DetailItemPage> {
  int _selectedHours = 1; // Multi-item (Jumlah Jam/Sesi)
  String _selectedPaymentMethod = "cash"; // Pilihan pembayaran: cash / qris
  final TextEditingController _cashInputController = TextEditingController();
  double _changeAmount = 0.0;

  @override
  void dispose() {
    _cashInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = widget.pricePerSession * _selectedHours;

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
          "Detail & Pembayaran Sesi",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // KARTU DETAIL PELATIH
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.coachName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E293B),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.specialty,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "\$${widget.pricePerSession} / session",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // FITUR MULTI-ITEM (PILIH DURASI / JAM)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Durasi Sesi (Multi-Item)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Atur jumlah jam pelatihan",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.remove_circle_outline,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          if (_selectedHours > 1) {
                            setState(() {
                              _selectedHours--;
                            });
                          }
                        },
                      ),
                      Text(
                        "$_selectedHours Jam",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          setState(() {
                            _selectedHours++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // PILIHAN METODE PEMBAYARAN (Cash / QRIS)
            const Text(
              "Metode Pembayaran",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => setState(() => _selectedPaymentMethod = "cash"),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _selectedPaymentMethod == "cash"
                            ? Colors.blue.shade50
                            : Colors.white,
                        border: Border.all(
                          color: _selectedPaymentMethod == "cash"
                              ? Colors.blueAccent
                              : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.money, color: Colors.blueAccent),
                          SizedBox(width: 8),
                          Text(
                            "Cash Tunai",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InkWell(
                    onTap: () => setState(() => _selectedPaymentMethod = "qris"),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: _selectedPaymentMethod == "qris"
                            ? Colors.blue.shade50
                            : Colors.white,
                        border: Border.all(
                          color: _selectedPaymentMethod == "qris"
                              ? Colors.blueAccent
                              : Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.qr_code_scanner, color: Colors.blueAccent),
                          SizedBox(width: 8),
                          Text(
                            "QRIS Code",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // FORM KONDISIONAL PEMBAYARAN
            if (_selectedPaymentMethod == "cash") ...[
              TextField(
                controller: _cashInputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Masukkan Nominal Uang Tunai (\$)",
                  hintText: "Contoh: 500",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) {
                  setState(() {
                    double paid = double.tryParse(value) ?? 0;
                    _changeAmount = paid - totalPrice;
                  });
                },
              ),
              const SizedBox(height: 8),
              if (_cashInputController.text.isNotEmpty)
                Text(
                  _changeAmount >= 0
                      ? "Kembalian: \$${_changeAmount.toStringAsFixed(0)}"
                      : "Uang tunai kurang!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _changeAmount >= 0 ? Colors.green : Colors.red,
                  ),
                ),
            ] else ...[
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Scan QRIS untuk Pembayaran Instan",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 140,
                      width: 140,
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.qr_code,
                        size: 90,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 24),

            // TOTAL & TOMBOL SELESAI
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Pembayaran:",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  "\$$totalPrice",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E293B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  // Navigasi ke Halaman 3 (ReceiptPage) dan kirim data transaksi
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReceiptPage(
                        coachName: widget.coachName,
                        specialty: widget.specialty,
                        selectedHours: _selectedHours,
                        pricePerSession: widget.pricePerSession,
                        paymentMethod: _selectedPaymentMethod,
                        cashPaid: double.tryParse(_cashInputController.text) ?? 0.0,
                        changeAmount: _changeAmount,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Selesaikan Pembayaran",
                  style: TextStyle(
                    fontSize: 16,
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
}