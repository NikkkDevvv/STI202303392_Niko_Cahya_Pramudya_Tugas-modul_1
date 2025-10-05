import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Row(
        children: const[
          Text('Niko        '),
          Text('Cahya       '),
          Text('Pramudya    '),
          Text('Hai         '),
        ],
      ),
    );
  }
}