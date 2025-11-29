import 'dart:ui';

import 'package:flutter/material.dart';

class HomeQuickActions extends StatelessWidget {
  const HomeQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _QuickAction(
            icon: Icons.navigation_rounded,
            label: "Navigation",
          ),
        ),
        SizedBox(width: 14),
        Expanded(
          child: _QuickAction(icon: Icons.child_care, label: "Kids"),
        ),
        SizedBox(width: 14),
        Expanded(
          child: _QuickAction(icon: Icons.camera_alt, label: "Kamera"),
        ),
        SizedBox(width: 14),
        Expanded(
          child: _QuickAction(icon: Icons.emoji_flags, label: "Missionen"),
        ),
      ],
    );
  }
}

class _QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const _QuickAction({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Ziel-Screen öffnen
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(icon, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
