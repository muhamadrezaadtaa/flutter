
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // Kunci global form
  final _formKey = GlobalKey<FormState>();

  // Controller textbox
  final TextEditingController _myController =
      TextEditingController();
  final TextEditingController _alamatController =
      TextEditingController();

  // Output biodata
  String _outputName = '';
  String _outputTanggalLahir = '';
  String _outputJenisKelamin = '';
  String _outputAlamat = '';
  String _outputAgama = '';

  // Variabel input
  DateTime? _tanggalLahir;
  String? _jenisKelamin;
  String? _agama;

  @override
  void dispose() {
    _myController.dispose();
    _alamatController.dispose();
    super.dispose();
  }

  // Memilih tanggal lahir
  Future<void> _pilihTanggalLahir() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2008, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      helpText: 'Pilih Tanggal Lahir',
    );

    if (picked != null) {
      setState(() {
        _tanggalLahir = picked;
      });
    }
  }

  // Menyimpan biodata
  void _submitForm() {
    setState(() {
      _outputName = _myController.text.trim();

      _outputTanggalLahir =
          '${_tanggalLahir!.day.toString().padLeft(2, '0')}/'
          '${_tanggalLahir!.month.toString().padLeft(2, '0')}/'
          '${_tanggalLahir!.year}';

      _outputJenisKelamin = _jenisKelamin!;
      _outputAlamat = _alamatController.text.trim();
      _outputAgama = _agama!;
    });

    print('Nama Lengkap: $_outputName');
    print('Tanggal Lahir: $_outputTanggalLahir');
    print('Jenis Kelamin: $_outputJenisKelamin');
    print('Alamat: $_outputAlamat');
    print('Agama: $_outputAgama');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Biodata berhasil disimpan!'),
      ),
    );
  }

  // Reset seluruh input
  void _clearInput() {
    _myController.clear();
    _alamatController.clear();

    setState(() {
      _tanggalLahir = null;
      _jenisKelamin = null;
      _agama = null;

      _outputName = '';
      _outputTanggalLahir = '';
      _outputJenisKelamin = '';
      _outputAlamat = '';
      _outputAgama = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Biodata'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NAMA LENGKAP
                const Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                TextFormField(
                  controller: _myController,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan nama lengkap',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // TANGGAL LAHIR
                const Text(
                  'Tanggal Lahir',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                InkWell(
                  onTap: _pilihTanggalLahir,
                  child: InputDecorator(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    child: Text(
                      _tanggalLahir == null
                          ? 'Pilih tanggal lahir'
                          : '${_tanggalLahir!.day.toString().padLeft(2, '0')}/'
                              '${_tanggalLahir!.month.toString().padLeft(2, '0')}/'
                              '${_tanggalLahir!.year}',
                      style: TextStyle(
                        color: _tanggalLahir == null
                            ? Colors.grey
                            : Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // JENIS KELAMIN
                const Text(
                  'Jenis Kelamin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                RadioListTile<String>(
                  title: const Text('Laki-laki'),
                  value: 'Laki-laki',
                  groupValue: _jenisKelamin,
                  contentPadding: EdgeInsets.zero,
                  onChanged: (value) {
                    setState(() {
                      _jenisKelamin = value;
                    });
                  },
                ),

                RadioListTile<String>(
                  title: const Text('Perempuan'),
                  value: 'Perempuan',
                  groupValue: _jenisKelamin,
                  contentPadding: EdgeInsets.zero,
                  onChanged: (value) {
                    setState(() {
                      _jenisKelamin = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                // ALAMAT
                const Text(
                  'Alamat',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                TextFormField(
                  controller: _alamatController,
                  minLines: 3,
                  maxLines: 20,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan alamat lengkap',
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty) {
                      return 'Alamat tidak boleh kosong';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // AGAMA
                const Text(
                  'Agama',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                DropdownButtonFormField<String>(
                  value: _agama,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Pilih agama',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Islam',
                      child: Text('Islam'),
                    ),
                    DropdownMenuItem(
                      value: 'Kristen Protestan',
                      child: Text('Kristen Protestan'),
                    ),
                    DropdownMenuItem(
                      value: 'Katolik',
                      child: Text('Katolik'),
                    ),
                    DropdownMenuItem(
                      value: 'Hindu',
                      child: Text('Hindu'),
                    ),
                    DropdownMenuItem(
                      value: 'Buddha',
                      child: Text('Buddha'),
                    ),
                    DropdownMenuItem(
                      value: 'Konghucu',
                      child: Text('Konghucu'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _agama = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silakan pilih agama';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                // TOMBOL SIMPAN
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      final isValid =
                          _formKey.currentState!.validate();

                      if (_tanggalLahir == null ||
                          _jenisKelamin == null) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Lengkapi tanggal lahir dan jenis kelamin!',
                            ),
                          ),
                        );
                        return;
                      }

                      if (isValid) {
                        _submitForm();
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'Simpan Biodata',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // TOMBOL RESET
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: _clearInput,
                    child: const Text('Reset Form'),
                  ),
                ),

                const SizedBox(height: 24),
                const Divider(),
                const SizedBox(height: 12),

                // HASIL BIODATA
                const Text(
                  'Hasil Biodata',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  'Nama Lengkap: ${_outputName.isEmpty ? 'Belum diisi' : _outputName}',
                ),
                const SizedBox(height: 8),

                Text(
                  'Tanggal Lahir: ${_outputTanggalLahir.isEmpty ? 'Belum dipilih' : _outputTanggalLahir}',
                ),
                const SizedBox(height: 8),

                Text(
                  'Jenis Kelamin: ${_outputJenisKelamin.isEmpty ? 'Belum dipilih' : _outputJenisKelamin}',
                ),
                const SizedBox(height: 8),

                Text(
                  'Alamat: ${_outputAlamat.isEmpty ? 'Belum diisi' : _outputAlamat}',
                ),
                const SizedBox(height: 8),

                Text(
                  'Agama: ${_outputAgama.isEmpty ? 'Belum dipilih' : _outputAgama}',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
