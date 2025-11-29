import 'package:flutter/material.dart';

class SafetyScreen extends StatelessWidget {
  const SafetyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sicherheit')),
      body: const Center(child: Text('Sicherheitsfunktionen folgen...')),
    );
  }
}
