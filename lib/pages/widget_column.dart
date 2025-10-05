import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Column'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          SizedBox(width: double.infinity),
          Text('Niko Cahya Pramudya'),
          Text('STI202303392'),
          Text('STMIK Widya Utama'),
          Text('Terimakasih🙏'),
        ],
      ),
    );
  }
}