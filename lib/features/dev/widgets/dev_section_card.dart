import 'package:flutter/material.dart';

class DevSectionCard extends StatelessWidget {
  final String title;
  final List<(String, String)> routes;

  const DevSectionCard({super.key, required this.title, required this.routes});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (final r in routes)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, r.$2),
                  child: Text(r.$1),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
