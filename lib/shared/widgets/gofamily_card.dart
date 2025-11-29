import 'package:flutter/material.dart';

import '../../core/gofamily_theme.dart';

class GoFamilyCard extends StatelessWidget {
  const GoFamilyCard({
    super.key,
    required this.child,
    this.onTap,
    this.backgroundOverride,
  });

  final Widget child;
  final VoidCallback? onTap;
  final Color? backgroundOverride;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Material(
      color: backgroundOverride ?? scheme.surface,
      borderRadius: BorderRadius.circular(GoFamilyRadius.card),
      child: InkWell(
        borderRadius: BorderRadius.circular(GoFamilyRadius.card),
        onTap: onTap,
        child: Padding(padding: const EdgeInsets.all(16), child: child),
      ),
    );
  }
}
