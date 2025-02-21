import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ContainerPage(),
    );
  }
}

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.indigo.shade50, // Tidak bisa menggunakan const
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.indigo.shade300, // Tidak bisa menggunakan const
                width: 1.0,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 16.0,
                  spreadRadius: 4.0,
                  offset: Offset(0.0, 4.0),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
