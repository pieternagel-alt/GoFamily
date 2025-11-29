import 'package:flutter/material.dart';

class GoFamilyBottomNav extends StatelessWidget {
  const GoFamilyBottomNav({
    super.key,
    required this.index,
    required this.onTap,
  });

  final int index;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: onTap,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.map), label: 'Karte'),
        NavigationDestination(icon: Icon(Icons.shield), label: 'Sicherheit'),
        NavigationDestination(
          icon: Icon(Icons.settings),
          label: 'Einstellungen',
        ),
      ],
    );
  }
}
