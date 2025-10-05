import 'package:flutter/material.dart';
import 'pages/hello_world.dart';
import 'pages/widget_column.dart';
import 'pages/widget_row.dart';
import 'pages/stateless_widget_dan_statefull_widget.dart';
import 'ui/product_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainMenuPage(),
    );
  }
}

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  final Map<String, Widget> menuItems = const {
    'Membuat Hello World': HelloWorldPage(),
    'Membuat Widget Column': ColumnPage(),
    'Membuat Widget Row': RowPage(),
    'StatelessWidget dan StatefulWidget': StatefulWidgetPage(),
    'Membuat Form': ProdukForm(),
    };

  @override
  Widget build(BuildContext context) {
    final List<String> itemTitles = menuItems.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: itemTitles.length,
        itemBuilder: (BuildContext context, int index) {
          final String title = itemTitles[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: ListTile(
              title: Text(title),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => menuItems[title]!,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}