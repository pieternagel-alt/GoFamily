import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/icons/app_logo_small.png', // passe den Namen ggf. an
              height: 28,
            ),
            const SizedBox(width: 8),
            const Text(
              "GoFamily",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            // TODO: zu Settings navigieren
          },
          icon: const Icon(Icons.settings, color: Colors.white),
        ),
      ],
    );
  }
}
