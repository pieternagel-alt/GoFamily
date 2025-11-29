import 'package:flutter/material.dart';

class AppSettingsTestScreen extends StatelessWidget {
  const AppSettingsTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Settings testen")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Hier werden später die App Settings wie Dark Mode usw. getestet.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
