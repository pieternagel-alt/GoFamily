import 'package:flutter/material.dart';

import '../../core/gofamily_theme.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.expand = true,
  });

  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final button = OutlinedButton.icon(
      onPressed: onPressed,
      icon: icon != null
          ? Icon(icon, size: 22, color: GoFamilyColors.tealMain)
          : const SizedBox.shrink(),
      label: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: GoFamilyColors.tealMain,
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(0, 48),
        padding: const EdgeInsets.symmetric(
          horizontal: GoFamilySpacing.lg,
          vertical: GoFamilySpacing.sm,
        ),
        side: const BorderSide(color: GoFamilyColors.tealMain, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(GoFamilyRadius.button),
        ),
      ),
    );

    if (!expand) return button;

    return SizedBox(width: double.infinity, child: button);
  }
}
