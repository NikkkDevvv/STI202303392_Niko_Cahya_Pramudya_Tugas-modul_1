import 'package:flutter/material.dart';

class StatefulWidgetPage extends StatelessWidget {
  const StatefulWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless & Stateful'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Di bawah ini adalah contoh dari kedua jenis widget:',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ContohStateless(),
          SizedBox(height: 20),
          ContohStateful(),
        ],
      ),
    );
  }
}


// Ini Widget Statelesss
class ContohStateless extends StatelessWidget {
  const ContohStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contoh StatelessWidget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Widget ini statis. Tampilannya dibuat sekali dan tidak akan berubah. Contohnya seperti teks atau ikon ini.'),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.info_outline, color: Colors.blue),
                SizedBox(width: 8),
                Text('Ini adalah informasi tetap.'),
              ],
            )
          ],
        ),
      ),
    );
  }
}


// Ini Widget Statefull
class ContohStateful extends StatefulWidget {
  const ContohStateful({super.key});

  @override
  State<ContohStateful> createState() => _ContohStatefulState();
}

class _ContohStatefulState extends State<ContohStateful> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contoh StatefulWidget',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Widget ini dinamis. Angka di bawah akan berubah saat tombol ditekan karena menggunakan setState().'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Angka saat ini: $_counter',
                  style: const TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Tambah Angka'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}