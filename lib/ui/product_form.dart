import 'package:flutter/material.dart';
class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _textboxKodeProduk(),
              const SizedBox(height: 16),
              _textboxNamaProduk(),
              const SizedBox(height: 16),
              _textboxHargaProduk(),
              const SizedBox(height: 24),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(
      controller: _kodeProdukController,
      decoration: const InputDecoration(
        labelText: "Kode Produk",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      controller: _namaProdukController,
      decoration: const InputDecoration(
        labelText: "Nama Produk",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      controller: _hargaProdukController,
      decoration: const InputDecoration(
        labelText: "Harga",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kode = _kodeProdukController.text;
        String nama = _namaProdukController.text;
        String harga = _hargaProdukController.text;

        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Data Tersimpan"),
              content: Text("Nama: $nama\nHarga: Rp $harga"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
      child: const Text('Simpan'),
    );
  }
}