import 'dart:ui';
import 'package:flutter/material.dart';

class HomeNaroField extends StatelessWidget {
  const HomeNaroField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Naro Screen öffnen
      },
      child: Container,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.12),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: Colors.white.withOpacity(0.25),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icons/naro_icon.png', // dein Naro-Icon
              height: 28,
            ),
            const SizedBox(width: 14),
            const Expanded(
              child: Text(
                "Frag Naro …",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const Icon(Icons.mic_none, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
